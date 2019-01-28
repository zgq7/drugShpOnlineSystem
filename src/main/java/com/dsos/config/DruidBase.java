package com.dsos.config;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;

import javax.sql.DataSource;

/**
 * Created by zgq7 on 2019/1/24.
 * druid 数据源
 */
public interface DruidBase {

    /**
     * @return 定义数据源
     * @throws Exception
     * **/
    DataSource dataSource() throws Exception;

    /**
     * @param dataSource
     * @return
     * @throws  Exception
     * 定义sqlSession工厂
     * */
    SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception;

    /**
     * 定义事务管理器
     * @return
     * **/
    DataSourceTransactionManager dataSourceTransactionManager(DataSource dataSource);
 }
