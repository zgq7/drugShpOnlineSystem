package com.dsos.commons.realm;

import com.dsos.commons.Methods;
import com.dsos.config.shiro.UsernamePwdLogTypToken;
import com.dsos.modle.user.MemberUser;
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
 * 配置member realm
 */
public class MemberRealm extends AuthorizingRealm {
    private static final Logger log = LoggerFactory.getLogger(MemberRealm.class);
    @Autowired
    private MainService mainService;

    /**
     * 认证通过才能进入该方法
     * 从数据库获取用户角色、权限
     **/
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        log.info("==============member 授权 ========================");
        Object principal = principalCollection.getPrimaryPrincipal();
        if (principal instanceof MemberUser) {
            MemberUser memberUser = (MemberUser) principal;
            Set<String> roles = new HashSet<>();
            roles.add("user");
            //角色
            //权限
            log.info("member 用户名为：{}，具有{}权限", memberUser.getCardNo(), roles);
            SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();
            simpleAuthorizationInfo.setRoles(roles);
            return simpleAuthorizationInfo;
        }
        log.error("principal is not memberUser ,next realm ->");
        return null;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        log.info("======member 用户正在认证=====");
        UsernamePwdLogTypToken token = (UsernamePwdLogTypToken) authenticationToken;
        String account = token.getUsername();
        String password = String.valueOf(token.getPassword());
        String loginType = token.getLoginType();
        log.info("{},{},{}", account, password, loginType);
        MemberUser memberUser = mainService.memberUserLog(account, password);
        if (memberUser == null) {
            log.info("authenticating error");
            throw new AuthenticationException("密码或账号不匹配   ");
        }
        //已认证的实体信息
        Object principal = memberUser;
        //获取从数据库获取的密码，然后进行md5加密
        Object hashCredentials = Methods.shiroMD5(memberUser.getCardNo(), memberUser.getPassword());
        //以用户名作为盐值(保证登录账户的唯一性前提下！！！)
        ByteSource credentialSalt = ByteSource.Util.bytes(memberUser.getCardNo());
        //当前realm对象的realm,从父类的getName获取
        String realmName = getName();
        return new SimpleAuthenticationInfo(principal, hashCredentials, credentialSalt, realmName);
    }
}
