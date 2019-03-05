package com.dsos.test;

/**
 * Created by zgq7 on 2019/3/4.
 * reflect of chid
 */
public class Child extends Parent {

    @Override
    public String getClassPath() {
        return this.getClassPath();
    }

    @Override
    public void talk() {
        System.out.println("i am ur Child");
    }

    //可变参
    public void paramChange(String... params) {
        System.out.println("param can change method : " + params.length);
    }

    //不可变参
    public void paramUnChange(String param1, String param2) {
        System.out.println("param cannot change method : " + param1 + "--" + param2);
    }
}
