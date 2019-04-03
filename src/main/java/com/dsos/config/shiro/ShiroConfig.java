package com.dsos.config.shiro;

import com.dsos.commons.realm.AdminRealm;
import com.dsos.commons.realm.ChainRealm;
import com.dsos.commons.realm.MemberRealm;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.authc.pam.AtLeastOneSuccessfulStrategy;
import org.apache.shiro.cache.CacheManager;
import org.apache.shiro.cache.ehcache.EhCacheManager;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.realm.Realm;
import org.apache.shiro.spring.LifecycleBeanPostProcessor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.aop.framework.autoproxy.DefaultAdvisorAutoProxyCreator;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.DependsOn;

import java.util.*;

/**
 * Created by zgq7 on 2019/1/24.
 * 配置shiro
 */
@Configuration
public class ShiroConfig {
    private static final Logger log = LoggerFactory.getLogger(ShiroConfig.class);

    /**
     * 1:配置securityMananger
     *
     * @return securityManager
     */
    @Bean
    public DefaultWebSecurityManager securityManager() {
        DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
        securityManager.setCacheManager(cacheManager());
        securityManager.setAuthenticator(zdyModularRealmAuthenticator());
        //获取所有realm并添加到realms()里面
        List<Realm> realmSet = new ArrayList<>();
        realmSet.add(adminRealm());
        realmSet.add(memberRealm());
        realmSet.add(chainRealm());
        securityManager.setRealms(realmSet);
        return securityManager;
    }

    /**
     * 6:配置自定义认证器
     *
     * @return zdyModularRealmAuthenticator
     ***/
    @Bean
    public ZdyModularRealmAuthenticator zdyModularRealmAuthenticator() {
        ZdyModularRealmAuthenticator zdyModularRealmAuthenticator = new ZdyModularRealmAuthenticator();
        zdyModularRealmAuthenticator.setAuthenticationStrategy(new AtLeastOneSuccessfulStrategy());
        return zdyModularRealmAuthenticator;
    }

    /**
     * 2.1:配置member realm bean
     *
     * @return member realm
     **/
    @Bean
    public AuthorizingRealm memberRealm() {
        MemberRealm memberRealm = new MemberRealm();
        HashedCredentialsMatcher hashedCredentialsMatcher = new HashedCredentialsMatcher();
        //指定加密算法
        hashedCredentialsMatcher.setHashAlgorithmName("MD5");
        //指定加密次数
        hashedCredentialsMatcher.setHashIterations(10);
        //这个要为true才不会报错
        hashedCredentialsMatcher.setStoredCredentialsHexEncoded(true);
        //行政匹配器
        memberRealm.setCredentialsMatcher(hashedCredentialsMatcher);
        return memberRealm;
    }

    /**
     * 2.2:配置admin realm bean
     *
     * @return admin realm
     **/
    @Bean
    public AuthorizingRealm adminRealm() {
        AdminRealm adminRealm = new AdminRealm();
        HashedCredentialsMatcher hashedCredentialsMatcher = new HashedCredentialsMatcher();
        //指定加密算法
        hashedCredentialsMatcher.setHashAlgorithmName("MD5");
        //指定加密次数
        hashedCredentialsMatcher.setHashIterations(10);
        //这个要为true才不会报错
        hashedCredentialsMatcher.setStoredCredentialsHexEncoded(true);
        //行政匹配器
        adminRealm.setCredentialsMatcher(hashedCredentialsMatcher);
        return adminRealm;
    }

    /**
     * 2.3:配置chain realm bean
     *
     * @return chain realm
     **/
    @Bean
    public AuthorizingRealm chainRealm() {
        ChainRealm chainRealm = new ChainRealm();
        HashedCredentialsMatcher hashedCredentialsMatcher = new HashedCredentialsMatcher();
        //指定加密算法
        hashedCredentialsMatcher.setHashAlgorithmName("MD5");
        //指定加密次数
        hashedCredentialsMatcher.setHashIterations(10);
        //这个要为true才不会报错
        hashedCredentialsMatcher.setStoredCredentialsHexEncoded(true);
        //行政匹配器
        chainRealm.setCredentialsMatcher(hashedCredentialsMatcher);
        return chainRealm;
    }

    /**
     * 配置3:cache 缓存管理
     *
     * @return cacheManager
     **/
    @Bean
    public CacheManager cacheManager() {
        EhCacheManager cacheManager = new EhCacheManager();
        cacheManager.setCacheManagerConfigFile("classpath:ehcache.xml");
        return cacheManager;
    }

    /**
     * 配置4：shiroFilter
     *
     * @return shiroFilterFactoryBean
     **/
    @Bean
    public ShiroFilterFactoryBean shiroFilterFactoryBean() {
        log.info("ShiroConfig.shiroFilterFactoryBean()");
        //自定义拦截器
        LinkedHashMap<String, String> filterMap = new LinkedHashMap<>();
        //配置映射关系
        filterMap.put("/index", "anon");
        filterMap.put("/admin", "anon");
        filterMap.put("/chain", "anon");
        filterMap.put("/member/login", "anon");
        filterMap.put("/admin/login", "anon");
        filterMap.put("/chain/login", "anon");
        filterMap.put("/member/registry", "anon");
        //静态资源
        filterMap.put("/images/**", "anon");
        filterMap.put("/js/**", "anon");
        filterMap.put("/css/**", "anon");
        filterMap.put("/lay/**", "anon");
        filterMap.put("/htmls/**", "anon");
        //登出
        filterMap.put("/logout", "logout");
        //页面权限的配置
        filterMap.put("/admin/**", "authc,roles[admin]");
        filterMap.put("/member/**", "authc,roles[user]");
        filterMap.put("/chain/**", "authc,roles[chain]");
        filterMap.put("/**", "authc");
        ShiroFilterFactoryBean shiroFilterFactoryBean = new ShiroFilterFactoryBean();
        shiroFilterFactoryBean.setLoginUrl("/index");
        shiroFilterFactoryBean.setSuccessUrl("/loginSuccessUser");
        //权限不满足跳转
        shiroFilterFactoryBean.setUnauthorizedUrl("/unAuthc");
        shiroFilterFactoryBean.setFilterChainDefinitionMap(filterMap);
        shiroFilterFactoryBean.setSecurityManager(securityManager());
        return shiroFilterFactoryBean;
    }


    /**
     * 配置5：LifecycleBeanPostProcessor，可以来自动的调用配置在Spring IOC容器中 Shiro Bean 的生命周期方法
     *
     * @return lifecycleBeanPostProcessor
     **/
    @Bean
    public static LifecycleBeanPostProcessor lifecycleBeanPostProcessor() {
        return new LifecycleBeanPostProcessor();
    }

    /**
     * @return defaultAdvisorAutoProxyCreator
     **/
    @Bean
    @DependsOn("lifecycleBeanPostProcessor")
    public DefaultAdvisorAutoProxyCreator defaultAdvisorAutoProxyCreator() {
        return new DefaultAdvisorAutoProxyCreator();
    }
}
