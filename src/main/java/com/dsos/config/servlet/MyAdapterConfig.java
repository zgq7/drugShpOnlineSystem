package com.dsos.config.servlet;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.servlet.ServletListenerRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.util.EventListener;

/**
 * Created by zgq7 on 2019/1/24.
 * springmvc 相关配置
 */
@Configuration
public class MyAdapterConfig implements WebMvcConfigurer {
    private static final Logger log = LoggerFactory.getLogger(MyAdapterConfig.class);

    @Value("${map.layUi}")
    private String mapLayUI;
    @Value("${map.js}")
    private String mapJS;
    @Value("${map.css}")
    private String mapCSS;
    @Value("${map.images}")
    private String mapImages;
    @Value("${map.model}")
    private String mapModel;
    @Value("${map.user}")
    private String mapUser;
    @Value("${map.admin}")
    private String mapAdmin;
    @Value("${map.chain}")
    private String mapChain;
    @Value("${map.common}")
    private String mapCommon;

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        log.info("layUI静态资源路径,{}", mapLayUI);
        registry.addResourceHandler("/lay/**").addResourceLocations(mapLayUI);
        log.info("js静态资源路径,{}", mapJS);
        registry.addResourceHandler("/js/**").addResourceLocations(mapJS);
        log.info("css静态资源路径,{}", mapCSS);
        registry.addResourceHandler("/css/**").addResourceLocations(mapCSS);
        log.info("images静态资源路径,{}", mapImages);
        registry.addResourceHandler("/images/**").addResourceLocations(mapImages);
        log.info("modelHtml静态资源路径,{}", mapModel);
        registry.addResourceHandler("/model/**").addResourceLocations(mapModel);
        log.info("userHtml静态资源路径,{}", mapUser);
        registry.addResourceHandler("/member/**").addResourceLocations(mapUser);
        log.info("adminHtml静态资源路径,{}", mapAdmin);
        registry.addResourceHandler("/admin/**").addResourceLocations(mapAdmin);
        log.info("chainHtml静态资源路径,{}", mapChain);
        registry.addResourceHandler("/chain/**").addResourceLocations(mapChain);
        log.info("common静态资源路径,{}", mapCommon);
        registry.addResourceHandler("/common/**").addResourceLocations(mapCommon);
    }
}
