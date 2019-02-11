package com.dsos.controller;

import com.dsos.config.shiro.LoginType;
import com.dsos.config.shiro.UsernamePwdLogTypToken;
import com.dsos.modle.user.AdminUser;
import com.dsos.modle.user.ChainWorkUser;
import com.dsos.service.AdminService;
import com.dsos.service.ChainService;
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
import java.util.HashMap;
import java.util.Map;

/**
 * Created by zgq7 on 2019/1/27 0027.
 * 负责chain 的每一样事务
 */
@Controller
@RequestMapping(value = "/chain")
public class ChainController {
    private static final Logger log = LoggerFactory.getLogger(ChainController.class);
    private static final String loginType = LoginType.CHAIN.getLoginType();
    @Autowired
    private ChainService chainService;

    /**
     * @return member 的登录
     */
    @RequestMapping(value = "/login")
    public String Login(HttpServletRequest request, Model model) {
        log.info("正在执行登录");
        String accout = request.getParameter("account");
        String password = request.getParameter("password");
        log.info("账号：{},密码：{}", accout, password);
        Subject chainSubject = SecurityUtils.getSubject();
        //如果subject没有认证，则进入realm认证
        if (!chainSubject.isAuthenticated()) {
            //使用自定义token的登录方式
            UsernamePwdLogTypToken token = new UsernamePwdLogTypToken(accout, password, loginType);
            token.setRememberMe(false);
            try {
                chainSubject.login(token);
            } catch (AuthenticationException e) {
                log.error("密码/账号错误:{}", e.toString());
                return "error";
            }
        }
        model.addAttribute("account", accout);
        return "chain/chainSuccessUser";
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
    Map<Object, Object> adminRoot(@RequestBody Map<Object, String> requestMap) {
        log.info("头像 姓名 获取中。。。");
        Map<Object, Object> result = new HashMap<>();
        ChainWorkUser chainWorkUser = chainService.getUerNmaeImgByCardNo(requestMap.get("account"));
        String name = chainWorkUser.getName();
        String imgRoot = chainWorkUser.getImgRoot();
        log.info("admin - > name {}, root {}", name, imgRoot);
        result.put("name", name);
        result.put("imgRoot", imgRoot);
        return result;
    }
}
