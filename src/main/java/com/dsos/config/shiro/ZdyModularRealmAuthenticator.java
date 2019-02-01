package com.dsos.config.shiro;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.pam.ModularRealmAuthenticator;
import org.apache.shiro.realm.Realm;

import java.util.Collection;
import java.util.HashSet;

/**
 * Created by zgq7 on 2019/1/30.
 * 自定义比较器，重写
 */
public class ZdyModularRealmAuthenticator extends ModularRealmAuthenticator {

    @Override
    protected AuthenticationInfo doAuthenticate(AuthenticationToken authenticationToken) throws AuthenticationException {
        //1：先判断realm是否为空
        assertRealmsConfigured();
        //2：强制转化
        UsernamePwdLogTypToken usernamePwdLogTypToken = (UsernamePwdLogTypToken) authenticationToken;
        //3：获取登录类型
        String loginType = usernamePwdLogTypToken.getLoginType();
        //4:获取所有realm
        Collection<Realm> myRealms = getRealms();
        //5:每个realm对应的loginType
        Collection<Realm> realmTypes = new HashSet<>();
        for (Realm realm : myRealms) {
            if (realm.getName().contains(loginType))
                realmTypes.add(realm);
        }
        //6:判断多realm验证还是单realm验证
        if (realmTypes.size() == 1)
            return doSingleRealmAuthentication(realmTypes.iterator().next(),usernamePwdLogTypToken);
        else
            return doMultiRealmAuthentication(realmTypes,usernamePwdLogTypToken);
    }
}
