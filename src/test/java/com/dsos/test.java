package com.dsos;

import org.junit.Test;
import org.springframework.util.ResourceUtils;

import java.io.File;
import java.util.Optional;

public class test {

    @Test
    public void aaa() throws Exception{
        System.out.println(System.getProperty("user.dir") + File.separator + "src" + File.separator + "main" + File.separator + "resource"
                + File.separator + "images" + File.separator + "member" + File.separator);

        File path = new File(ResourceUtils.getURL("classpath:").getPath());
        String destFileName2 = new File(path.getAbsolutePath(),"images/member/").getAbsolutePath();
        System.out.println(destFileName2);

        String fileName = System.currentTimeMillis() + "TEST";
        String destFileName = System.getProperty("user.dir") + File.separator + "upload" + File.separator;
        File newFile = new File(destFileName);
        if (!newFile.exists()) {
            newFile.mkdirs();
        }
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
