package com.dsos.config;

import com.dsos.modle.user.AdminUser;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;


/**
 * Created by zgq7 on 2019/1/23 0023.
 * 使用注解配置spring ioc aop di
 */
@ComponentScan(value = "com.dsos")
@Configuration
public class MainConfig {

    @Bean("adminUser")
    public AdminUser adminUser(){
        AdminUser adminUser = new AdminUser();
        adminUser.setName("lisi");
        adminUser.setBirthday("123456");
        return adminUser;
    }
}