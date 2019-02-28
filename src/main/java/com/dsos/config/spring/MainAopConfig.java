package com.dsos.config.spring;

import com.dsos.config.spring.AspectConfig;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

/**
 * Created by zgq7 on 2019/2/20.
 *
 * @EnableAspectJAutoProxy 开启aop
 */
@EnableAspectJAutoProxy
@Configuration
public class MainAopConfig {

    @Bean
    public AspectConfig aspectConfig() {
        return new AspectConfig();
    }

}
