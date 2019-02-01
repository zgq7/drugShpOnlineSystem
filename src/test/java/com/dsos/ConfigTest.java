package com.dsos;

import com.dsos.modle.user.AdminUser;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.test.context.junit4.SpringRunner;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Created by zgq7 on 2019/1/23.
 * 测试各项配置是否正确
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class ConfigTest {

    @SuppressWarnings("resource")
    @Test
    public void testSpringIoc() {
    }

    @Test
    public void jdbcTest() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            //mysql的时差 serverTimezone=GMT%2B8 代表东八区
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/dsos_zgq?serverTimezone=GMT%2B8&useUnicode=true&characterEncoding=utf-8",
                    "root", "root");
            System.out.println("数据连接测试成功");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
