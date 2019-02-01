package com.dsos.commons.realm;

import com.dsos.commons.Methods;
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
 * 配置admin realm
 */
public class AdminRealm extends AuthorizingRealm {
    private static final Logger log = LoggerFactory.getLogger(AdminRealm.class);
    @Autowired
    private MainService mainService;

    /**
     * 认证通过才能进入该方法
     * 从数据库获取用户角色、权限
     **/
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        log.info("================== 授权 ========================");
        Object principal = principalCollection.getPrimaryPrincipal();
        MemberUser memberUser = (MemberUser) principal;
        Set<String> roles = new HashSet<>();
        roles.add("user");
        //角色
        //权限
        log.info("用户名为：{}，具有{}权限", memberUser.getCardNo(), roles);
        SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();
        simpleAuthorizationInfo.setRoles(roles);
        return simpleAuthorizationInfo;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        log.info("======用户正在认证=====");
        UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;
        String account = token.getUsername();
        String password = String.valueOf(token.getPassword());
        log.info("{},{}", account, password);
        MemberUser memberUser = mainService.memberUserLog("123456", "123456");
        if (memberUser == null) {
            log.info("error");
            throw new AuthenticationException("123");
        }
        //已认证的实体信息
        Object principal = memberUser;
        //获取从数据库获取的密码，然后进行md5加密
        Object hashCredentials = Methods.shiroMD5(memberUser.getCardNo(), memberUser.getPassword());
        //以用户名作为盐值(保证登录账户的唯一性前提下！！！)
        ByteSource credentialSalt = ByteSource.Util.bytes(memberUser.getCardNo());
        //当前reaml对象的realm,从父类的getName获取
        String realmName = getName();
        return new SimpleAuthenticationInfo(principal, hashCredentials, credentialSalt, realmName);
    }
}
