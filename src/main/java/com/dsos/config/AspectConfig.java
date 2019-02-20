package com.dsos.config;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Created by zgq7 on 2019/2/20.
 * 为所有请求开通切面
 *
 * @ 声明组件、声明这是切面bean、开启aop
 */
//@Aspect
public class AspectConfig {
    private static final Logger log = LoggerFactory.getLogger(AspectConfig.class);

    @Pointcut("execution(* com.dsos.service.*.*(*))")
    public void aspect() {
        log.info("aop aop 开始...");
    }

    @Before("aspect()")
    public void requestStartBefore(JoinPoint joinPoint) {
        log.info("before ： {}");
    }

    @After("aspect()")
    public void requestFinishedAfter(JoinPoint joinPoint) {
        log.info("aop after ： {}");
    }

    @AfterReturning("aspect()")
    public void requestRunning(JoinPoint joinPoint) {
        Object[] args = joinPoint.getArgs();
        log.info("aop afterReturnning ： {},{}", args,joinPoint.getSignature());
    }

    @Around("aspect()")
    public void requestAround(JoinPoint joinPoint) {
        log.info("aop arrounding ： {}");
    }

    @AfterThrowing(value = "aspect()", throwing = "e")
    public void requestException(JoinPoint joinPoint, Exception e) {
        log.info("aop exception ： {}", e);
    }
}
