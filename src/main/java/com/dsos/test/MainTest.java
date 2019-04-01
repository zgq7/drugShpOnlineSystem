package com.dsos.test;

/**
 * 设计模式测试
 * Created by zgq7 on 2019/4/1.
 */
public class MainTest {
    public static void main(String[] args) {
        SingleTon s1 = SingleTon.instance();
        SingleTon s2 = SingleTon.instance();
        s1.instanceCode();
        s2.instanceCode();
        System.out.println(s1.equals(s2));
    }
}
