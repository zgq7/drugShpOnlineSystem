package com.dsos.test;


import java.lang.reflect.Method;

/**
 * Created by zgq7 on 2019/3/4.
 * reflect of test
 */
public class reflect {
    private static final String classPath1 = "com.dsos.test.Child";
    private static final String classPath2 = "com.dsos.test.Parent";

    public static void main(String[] args) throws Exception {
        Class<?> childClass = Class.forName(classPath1);//父类
        Class<?> parentClass = Class.forName(classPath2);//子类

        Object cobj = childClass.newInstance();//子类实例
        Object pobj = parentClass.newInstance();//父类实例

        Method pmethod = parentClass.getDeclaredMethod("talk");//父类的talk()
        Method cmethod = childClass.getDeclaredMethod("talk");//子类的talk()

        cmethod.invoke(cobj);//子类cmethod调用子类的talk
        //cmethod.invoke(pobj);// 会报错: IllegalArgumentException

        System.out.println("====================");

        pmethod.invoke(pobj);//父类的pmethod调用父类的talk()
        pmethod.invoke(cobj);//父类的pmethod调用子类的talk()

        System.out.println("====================");

        Method changeMethod = childClass.getDeclaredMethod("paramChange", String[].class);
        String[] sparam = {"1", "2"};
        Object[] sobj = {sparam};
        changeMethod.invoke(cobj, sobj);//子类的changeMethod调用子类的changeMethod()

        System.out.println("====================");
        Method unchangeMethod = childClass.getDeclaredMethod("paramUnChange", String.class, String.class);
        unchangeMethod.invoke(cobj, "hello", "java");
    }
}
