package com.dsos.controller;

import com.dsos.config.shiro.LoginType;
import com.dsos.config.shiro.UsernamePwdLogTypToken;
import com.dsos.modle.user.ChainnerUser;
import com.dsos.service.ChainnerService;
import com.google.common.collect.ImmutableMap;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by zgq7 on 2019/1/27 0027.
 * 负责chain 连锁工作人员 的每一样事务
 */
@Controller
@RequestMapping(value = "/chain")
public class ChainController {
    private static final Logger log = LoggerFactory.getLogger(ChainController.class);
    private static final String loginType = LoginType.CHAIN.getLoginType();
    @Autowired
    private ChainnerService chainUserService;

    /**
     * @return member 的登录
     */
    @RequestMapping(value = "/login")
    public String Login(HttpServletRequest request, HttpSession session, Map<String, Object> map) {
        String accout = request.getParameter("account");
        String password = request.getParameter("password");
        Subject AdminSubject = SecurityUtils.getSubject();
        //使用自定义token的登录方式
        UsernamePwdLogTypToken token = new UsernamePwdLogTypToken(accout, password, loginType);
        token.setRememberMe(false);
        try {
            AdminSubject.login(token);
        } catch (AuthenticationException e) {
            map.put("msg", "密码/账号错误");
            return "error";
        }
        session.setAttribute("account", accout);
        session.setAttribute("type", loginType);
        return "redirect:/chain/loginSuccessUser";
    }

    /**
     * @return 登陆成功跳转
     **/
    @RequestMapping(value = "/loginSuccessUser")
    public String loginSuccessUser() {
        return "chain/chainSuccessUser";
    }

    /**
     * @return chain 名称、头像
     **/
    @RequestMapping("/chainRoot")
    public @ResponseBody
    Map<Object, Object> adminRoot(HttpServletRequest request) {
        ChainnerUser chainWorkUser = chainUserService.getUerNmaeImgByCardNo((String) request.getSession().getAttribute("account"));
        String name = chainWorkUser.getName();
        String imgRoot = chainWorkUser.getImgRoot();
        log.info("admin - > name {}, root {}", name, imgRoot);
        return ImmutableMap.of("name", name, "imgRoot", imgRoot);
    }
}
