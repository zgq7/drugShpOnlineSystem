package com.dsos.test;

/**
 * Created by zgq7 on 2019/3/4.
 * reflect of parent
 */
public abstract class Parent {

    public abstract String getClassPath();

    public void talk() {
        System.out.println("i am ur parent");
        System.out.println(this.getClass());
    }
}
