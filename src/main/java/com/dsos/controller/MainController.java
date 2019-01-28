package com.dsos.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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

    /**
     * @return 首页
     */
    @RequestMapping("/index")
    public String index() {
        return "index";
    }

    /**
     * @return member 的登录
     */
    @RequestMapping(value = "/login")
    public String Login(HttpServletRequest request) {
        log.info("正在执行登录");
        String accout = request.getParameter("account");
        String password = request.getParameter("password");
        log.info("账号：{},密码：{}", accout, password);
        UsernamePasswordToken token = new UsernamePasswordToken(accout, password);
        Subject subject = SecurityUtils.getSubject();
        //如果subject没有认证，则进入realm认证
        if (!subject.isAuthenticated()) {
            try {
                subject.login(token);
            } catch (AuthenticationException e) {
                log.error("密码/账号错误:{}", e.toString());
                return "error";
            }
        }
        return "redirect:member/loginSuccessUser";
    }

    /**
     * @return 报错界面
     **/
    @RequestMapping(value = "/toError")
    public String error() {
        return "error";
    }

    @RequestMapping(value = "/user")
    public String toUser() {
        return "user";
    }

    @RequestMapping(value = "/admin")
    public String toAdmin() {
        return "admin";
    }

    /**
     * @return 权限不足界面
     **/
    @RequestMapping(value = "/unAuthc")
    public String toAuthc() {
        return "unauthc";
    }

}
