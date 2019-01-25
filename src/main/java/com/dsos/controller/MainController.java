package com.dsos.controller;

import com.dsos.dao.MainDao;
import com.dsos.modle.user.MemberUser;
import com.dsos.service.MainService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by zgq7 on 2019/1/23 0023.
 * 测试handler
 */

@Controller
public class MainController {
    private static final Logger log = LoggerFactory.getLogger(MainController.class);
    @Autowired
    private MainDao mainDao;
    @Autowired
    private MainService mainService;

    /**
     * @return 首页
     */
    @RequestMapping("/index")
    public String index() {
        System.out.println(123);
        MemberUser memberUser = mainDao.memberLogin("123456","123456");
        MemberUser memberUser2 = mainService.memberUserLog("123456","123456");
        System.out.println(memberUser2);
        return "index";
    }

    /**
     * @return 登录
     */
    @RequestMapping(value = "/login")
    public String Login(HttpServletRequest request) {
        log.info("正在执行登录");
        log.info("账号：{},密码：{}", request.getParameter("account"), request.getParameter("password"));
        UsernamePasswordToken token = new UsernamePasswordToken(request.getParameter("account"), request.getParameter("password"));
        Subject subject = SecurityUtils.getSubject();
       /* if (!subject.isAuthenticated()) {
            subject.login(token);
        }*/
        try {
            subject.login(token);
        }catch (AuthenticationException e){
            log.info("认证错误日志：{}",e);
            return "error";
        }
        return "redirect:/loginSucessUser";
    }

    @RequestMapping(value = "loginSucessUser")
    public String loginSucessUser(){
        return "loginSucessUser";
    }

}
