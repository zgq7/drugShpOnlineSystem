package com.dsos.controller;

import com.dsos.config.shiro.LoginType;
import com.dsos.config.shiro.UsernamePwdLogTypToken;
import com.dsos.modle.user.AdminUser;
import com.dsos.modle.user.MemberInfo;
import com.dsos.service.AdminService;
import com.dsos.service.MemberService;
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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

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
    public String Login(HttpServletRequest request, Model model) {
        log.info("正在执行登录");
        String accout = request.getParameter("account");
        String password = request.getParameter("password");
        log.info("账号：{},密码：{}", accout, password);
        Subject AdminSubject = SecurityUtils.getSubject();
        //如果subject没有认证，则进入realm认证
        if (!AdminSubject.isAuthenticated()) {
            //使用自定义token的登录方式
            UsernamePwdLogTypToken token = new UsernamePwdLogTypToken(accout, password, loginType);
            token.setRememberMe(false);
            try {
                AdminSubject.login(token);
            } catch (AuthenticationException e) {
                log.error("密码/账号错误:{}", e.toString());
                return "error";
            }
        }
        model.addAttribute("account", accout);
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
    Map<Object, Object> adminRoot(@RequestBody Map<Object, String> requestMap) {
        log.info("头像 姓名 获取中。。。");
        Map<Object, Object> result = new HashMap<>();
        AdminUser adminUser = adminService.getUerNmaeImgByCardNo(requestMap.get("account"));
        String name = adminUser.getName();
        String imgRoot = adminUser.getImgRoot();
        log.info("admin - > name {}, root {}", name, imgRoot);
        result.put("name", name);
        result.put("imgRoot", imgRoot);
        return result;
    }
}
