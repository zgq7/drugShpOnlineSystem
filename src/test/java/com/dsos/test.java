package com.dsos;

import org.junit.Test;
import org.springframework.util.ClassUtils;
import org.springframework.util.ResourceUtils;

import java.io.File;
import java.util.Optional;

public class test {

    @Test
    public void aaa() {
        System.out.println(System.getProperty("user.dir") + File.separator + "src" + File.separator + "main" + File.separator + "resource");
        String fileName = System.currentTimeMillis()+"TEST";
        //文件存储路径
    }

    @Test
    public void bbb() {
        Optional<String> optional1 = Optional.ofNullable(null);
        Optional<Integer> optional4 = Optional.ofNullable(1);
        System.out.println(optional1.isPresent());
        System.out.println(optional4.isPresent());
    }
}
