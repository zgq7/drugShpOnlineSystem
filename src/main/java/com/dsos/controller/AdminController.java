package com.dsos.controller;

import com.dsos.commons.Methods;
import com.dsos.config.shiro.LoginType;
import com.dsos.config.shiro.UsernamePwdLogTypToken;
import com.dsos.modle.user.AdminUser;
import com.dsos.service.AdminService;
import com.google.common.collect.ImmutableMap;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

/**
 * Created by zgq7 on 2019/1/27 0027.
 * 负责admin 的每一样事务
 */
@Controller
@RequestMapping(value = "/admin")
public class AdminController {
    private static final Logger log = LoggerFactory.getLogger(AdminController.class);
    private static final String loginType = LoginType.ADMIN.getLoginType();
    @Autowired
    private AdminService adminService;

    /**
     * @return member 的登录
     */
    @RequestMapping(value = "/login")
    public String Login(HttpServletRequest request, HttpSession session) {
        log.info("正在执行登录");
        String accout = request.getParameter("account");
        String password = request.getParameter("password");
        log.info("账号：{},密码：{}", accout, password);
        Subject AdminSubject = SecurityUtils.getSubject();
        //如果subject没有认证，则进入realm认证
        //使用自定义token的登录方式
        UsernamePwdLogTypToken token = new UsernamePwdLogTypToken(accout, password, loginType);
        token.setRememberMe(false);
        try {
            AdminSubject.login(token);
        } catch (AuthenticationException e) {
            log.error("密码/账号错误:{}", e.toString());
            return "error";
        }
        session.setAttribute("account", accout);
        session.setAttribute("type", loginType);
        return "admin/adminSuccessUser";
    }

    /**
     * @return 登陆成功跳转
     **/
    @RequestMapping(value = "/loginSuccessUser")
    public String loginSuccessUser() {
        return "admin/adminSuccessUser";
    }

    /**
     * @return admin 名称、头像
     **/
    @RequestMapping("/adminRoot")
    public @ResponseBody
    Map<Object, Object> adminRoot(HttpServletRequest request) {
        Map<Object, Object> result = new HashMap<>();
        AdminUser adminUser = adminService.getUerNmaeImgByCardNo((String) request.getSession().getAttribute("account"));
        String name = adminUser.getName();
        String imgRoot = adminUser.getImgRoot();
        log.info("admin - > name {}, root {}", name, imgRoot);
        result.put("name", name);
        result.put("imgRoot", imgRoot);
        return result;
    }

    @RequestMapping(value = "/info")
    public String info() {
        return "admin/info";
    }

    @RequestMapping(value = "/infoData")
    public @ResponseBody
    Map<Object, Object> infoData(HttpServletRequest request) {
        AdminUser adminUser = adminService.getUerNmaeImgByCardNo((String) request.getSession().getAttribute("account"));
        Optional<AdminUser> optional = Optional.ofNullable(adminUser);
        String reBirthday = adminUser.getBirthday();
        adminUser.setBirthday(reBirthday.substring(0, 10));
        adminUser.setPassword(Methods.shiroMD5(adminUser.getAdminAccount(), adminUser.getPassword()));
        if (optional.isPresent()) {
            return ImmutableMap.of("info", adminUser);
        }
        return null;
    }

    @RequestMapping(value = "/config")
    public String config() {
        return "admin/config";
    }

    /**
     * 药品资料
     **/
    @RequestMapping(value = "/drugInList")
    public String drugInList() {
        return "admin/drugInList";
    }


    /**
     * 上架下架
     **/
    @RequestMapping(value = "/drugUpDown")
    public String drugUpDown() {
        return "admin/drugUpDown";
    }

}
