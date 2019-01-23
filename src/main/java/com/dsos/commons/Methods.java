package com.dsos.commons;

import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.util.ByteSource;

import java.util.HashMap;

/**
 * Created by zgq7 on 2019/1/22.
 * 全局方法
 * */
public class Methods {

    public static void main(String[] args) {
        System.out.println(shiroMD5("123456"));
    }

    /**
     * @param prama 需md5加密的参数
     * @return 返回加密后的byteSource类型的目标字符串
     * **/
    public static ByteSource shiroMD5(String prama){
        return new Md5Hash(prama);
    }

}
