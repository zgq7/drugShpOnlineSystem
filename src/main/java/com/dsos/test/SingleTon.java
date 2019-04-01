package com.dsos.test;

/**
 * 单例代码测试
 * Created by zgq7 on 2019/4/1.
 */
public class SingleTon {
    private static SingleTon singleTon = new SingleTon();

    public SingleTon() {

    }

    public static SingleTon instance() {
        if (singleTon == null) {
            return new SingleTon();
        }
        return singleTon;
    }

    public void instanceCode() {
        System.out.println("hash 地址为：" + singleTon.hashCode());
    }
}
