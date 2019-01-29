package com.dsos.config;

import com.dsos.commons.MyRealm;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.cache.CacheManager;
import org.apache.shiro.cache.ehcache.EhCacheManager;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.spring.LifecycleBeanPostProcessor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.aop.framework.autoproxy.DefaultAdvisorAutoProxyCreator;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.DependsOn;

import java.util.LinkedHashMap;

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
     * @return
     */
    @Bean
    public DefaultWebSecurityManager securityManager() {
        DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
        securityManager.setRealm(realm());
        securityManager.setCacheManager(cacheManager());
        return securityManager;
    }

    /**
     * 2:配置自定义realm
     *
     * @return
     **/
    @Bean
    public AuthorizingRealm realm() {
        MyRealm realm = new MyRealm();
        HashedCredentialsMatcher hashedCredentialsMatcher = new HashedCredentialsMatcher();
        //指定加密算法
        hashedCredentialsMatcher.setHashAlgorithmName("MD5");
        //指定加密次数
        hashedCredentialsMatcher.setHashIterations(10);
        //这个要为true才不会报错
        hashedCredentialsMatcher.setStoredCredentialsHexEncoded(true);
        //行政匹配器
        realm.setCredentialsMatcher(hashedCredentialsMatcher);
        return realm;
    }

    /**
     * 配置3:cache 缓存管理
     *
     * @return
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
     * @return
     **/
    @Bean
    public ShiroFilterFactoryBean shiroFilterFactoryBean() {
        log.info("ShiroConfig.shiroFilterFactoryBean()");
        //自定义拦截器
        LinkedHashMap<String, String> filterMap = new LinkedHashMap<>();
        //配置映射关系
        filterMap.put("/index", "anon");
        filterMap.put("/login", "anon");
        //静态资源
        filterMap.put("/images/**", "anon");
        filterMap.put("/js/**", "anon");
        filterMap.put("/css/**", "anon");
        filterMap.put("/lay/**", "anon");
        filterMap.put("/htmls/**","anon");
        //登出
        filterMap.put("/logout", "logout");
        //页面权限的配置
        filterMap.put("/user","authc,roles[user,admin]");
        filterMap.put("/admin","authc,roles[all]");
        //filterMap.put("/**", "url");
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
     **/
    @Bean
    public static LifecycleBeanPostProcessor lifecycleBeanPostProcessor() {
        return new LifecycleBeanPostProcessor();
    }

    /**
     * **/
    @Bean
    @DependsOn("lifecycleBeanPostProcessor")
    public DefaultAdvisorAutoProxyCreator defaultAdvisorAutoProxyCreator() {
        return new DefaultAdvisorAutoProxyCreator();
    }

}
