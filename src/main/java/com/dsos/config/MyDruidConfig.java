package com.dsos.config;

import com.alibaba.druid.pool.DruidDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Primary;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;

import javax.sql.DataSource;


/**
 * Created by zgq7 on 2019/1/24.
 * 配置druid
 /*
*/
//@Configuration
public class MyDruidConfig implements DruidBase{
    @Value("${spring.datasource.druid.url")
    private String jdbcUrl;
    @Value("com.mysql.jdbc.Driver")
    private String driverClass;
    @Value("${com.alibaba.druid.pool.DruidDataSource}")
    private String dataSourceType;
    @Value("${spring.datasource.druid.username}")
    private String username;
    @Value("${spring.datasource.druid.password}")
    private String password;
    @Value("${spring.datasource.druid.initial-size}")
    private Integer initialSize;
    @Value("${spring.datasource.druid.max-active}")
    private Integer maxActive;
    @Value("${spring.datasource.druid.min-idle}")
    private Integer minIdle;
    @Value("${spring.datasource.druid.max-wait}")
    private Long maxWait;
    @Value("${spring.datasource.druid.filters}")
    private String filter;



    @Bean("dataSource")
    @Primary
    @Override
    public DataSource dataSource() throws Exception {
        DruidDataSource druidDataSource = new DruidDataSource();
        druidDataSource.setDriverClassName(this.driverClass);
        druidDataSource.setUrl(this.jdbcUrl);
        druidDataSource.setUsername(this.username);
        druidDataSource.setPassword(this.password);
        druidDataSource.setInitialSize(this.initialSize);
        druidDataSource.setMaxActive(this.maxActive);
        druidDataSource.setMinIdle(this.minIdle);
        druidDataSource.setMaxWait(this.maxWait);
        druidDataSource.setFilters(this.filter);
        return druidDataSource;
    }
    @Bean
    @Primary
    @Override
    public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception {
        return null;
    }

    @Bean
    @Primary
    @Override
    public DataSourceTransactionManager dataSourceTransactionManager(DataSource dataSource) {
        return null;
    }
}

