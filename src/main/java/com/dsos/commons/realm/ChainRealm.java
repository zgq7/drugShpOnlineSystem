package com.dsos.commons.realm;

import com.dsos.commons.Methods;
import com.dsos.config.shiro.UsernamePwdLogTypToken;
import com.dsos.modle.user.ChainnerUser;
import com.dsos.service.MainService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashSet;
import java.util.Set;

/**
 * Created by zgq7 on 2019/1/25.
 * 配置chain realm
 */
public class ChainRealm extends AuthorizingRealm {
    private static final Logger log = LoggerFactory.getLogger(ChainRealm.class);
    @Autowired
    private MainService mainService;

    /**
     * 认证通过才能进入该方法
     * 从数据库获取用户角色、权限
     **/
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        log.info("==============chain 授权 ========================");
        Object principal = principalCollection.getPrimaryPrincipal();
        if (principal instanceof ChainnerUser) {
            ChainnerUser chainWorkUser = (ChainnerUser) principal;
            Set<String> roles = new HashSet<>();
            roles.add("chain");
            //角色
            //权限
            log.info("chain 用户名为：{}，具有{}权限", chainWorkUser.getChainAccount(), roles);
            SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();
            simpleAuthorizationInfo.setRoles(roles);
            return simpleAuthorizationInfo;
        }
        log.error("principal is not chainWorkUser ,next realm ->");
        return null;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        log.info("======chain 用户正在认证=====");
        UsernamePwdLogTypToken token = (UsernamePwdLogTypToken) authenticationToken;
        String account = token.getUsername();
        String password = String.valueOf(token.getPassword());
        log.info("{},{}", account, password);
        ChainnerUser chainWorkUser = mainService.chainWkUserLog(account,password);
        if (chainWorkUser == null) {
            log.info("error");
            throw new AuthenticationException("chain authenticate error");
        }
        //已认证的实体信息
        Object principal = chainWorkUser;
        //获取从数据库获取的密码，然后进行md5加密
        Object hashCredentials = Methods.shiroMD5(chainWorkUser.getChainAccount(), chainWorkUser.getPassword());
        //以用户名作为盐值(保证登录账户的唯一性前提下！！！)
          ByteSource credentialSalt = ByteSource.Util.bytes(chainWorkUser.getChainAccount());
        //当前realm对象的realm,从父类的getName获取
        String realmName = getName();
        return new SimpleAuthenticationInfo(principal, hashCredentials, credentialSalt, realmName);
    }
}
