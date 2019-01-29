package com.dsos.config;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

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


    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        log.info("layUI静态资源路径,{}",mapLayUI);
        registry.addResourceHandler("/lay/**").addResourceLocations(mapLayUI);
        log.info("js静态资源路径,{}",mapJS);
        registry.addResourceHandler("/js/**").addResourceLocations(mapJS);
        log.info("css静态资源路径,{}",mapCSS);
        registry.addResourceHandler("/css/**").addResourceLocations(mapCSS);
        log.info("images静态资源路径,{}",mapImages);
        registry.addResourceHandler("/images/**").addResourceLocations(mapImages);
        log.info("model静态资源路径,{}",mapModel);
        registry.addResourceHandler("/model/**").addResourceLocations(mapModel);
    }
}
