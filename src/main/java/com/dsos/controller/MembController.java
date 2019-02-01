package com.dsos.controller;

import com.dsos.config.shiro.LoginType;
import com.dsos.config.shiro.UsernamePwdLogTypToken;
import com.dsos.modle.user.MemberUser;
import com.dsos.service.MemberService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by zgq7 on 2019/1/27 0027.
 * 负责member的每一样事务
 */
@Controller
@RequestMapping(value = "/member")
public class MembController {
    private static final Logger log = LoggerFactory.getLogger(MainController.class);
    private static final String loginType = LoginType.MEMBER.toString();
    @Autowired
    private MemberService memberService;

    /**
     * @return member 的登录
     */
    @RequestMapping(value = "/login")
    public String Login(HttpServletRequest request) {
        log.info("正在执行登录");
        String accout = request.getParameter("account");
        String password = request.getParameter("password");
        log.info("账号：{},密码：{}", accout, password);
        Subject subject = SecurityUtils.getSubject();
        //如果subject没有认证，则进入realm认证
        if (!subject.isAuthenticated()) {
            //使用自定义token的登录方式
            UsernamePwdLogTypToken token = new UsernamePwdLogTypToken(accout, password, loginType);
            token.setRememberMe(false);
            try {
                subject.login(token);
            } catch (AuthenticationException e) {
                log.error("密码/账号错误:{}", e.toString());
                return "error";
            }
        }
        return "member/loginSuccessUser";
    }

    @RequestMapping(value = "registry", method = RequestMethod.POST)
    public @ResponseBody
    Map<Object, Object> registry(@RequestBody Map<String, String> requestMap) {
        Map<Object, Object> result = new HashMap<>();
        log.info("registry loading : {}", requestMap.toString());
        //判断前台传输过来的数据是否含有 null or ""
        if (requestMap.containsValue(null) || requestMap.containsValue("")) {
            result.put("msg", "check info");
            return result;
        }
        //判断是否插入成功
        if (!memberService.registryMember(requestMap)) {
            result.put("msg","insert fail");
            return result;
        }
        requestMap.put("msg","success");
        requestMap.put("cardNo",requestMap.get("cardNo"));
        return result;
    }

    /**
     * @return 登陆成功跳转
     **/
    @RequestMapping(value = "/loginSuccessUser")
    public String loginSuccessUser() {
        return "member/loginSuccessUser";
    }

    /**
     * @return 会员信息
     **/
    @RequestMapping("/info")
    public String info() {
        return "member/info";
    }

    /**
     * @return 会员设置
     **/
    @RequestMapping("/config")
    public String config() {
        return "member/config";
    }
}
