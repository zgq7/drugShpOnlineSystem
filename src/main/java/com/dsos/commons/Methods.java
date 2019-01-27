package com.dsos.commons;

import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;

import java.util.HashMap;

/**
 * Created by zgq7 on 2019/1/22.
 * 全局方法
 */
public class Methods {

    public static void main(String[] args) {
        System.out.println(shiroMD5("123456", "123456"));
    }

    /**
     * @param password 需md5加密的参数
     * @param account  账号，也是盐值
     * @return 返回加密后的String类型的目标字符串
     **/
    public static String shiroMD5(String account, String password) {
        String hashAlgorithname = "MD5";
        Object Credentials = password;
        Object salt = account;
        int hashIterations = 10;
        String result = String.valueOf(new SimpleHash(hashAlgorithname, Credentials, salt, hashIterations));
        return result;
    }
}
