package com.dsos.controller;

import com.dsos.config.shiro.LoginType;
import com.dsos.config.shiro.UsernamePwdLogTypToken;
import com.dsos.modle.user.MemberInfo;
import com.dsos.service.MemberService;
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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

/**
 * Created by zgq7 on 2019/1/27 0027.
 * 负责member的每一样事务
 */
@Controller
@RequestMapping(value = "/member")
public class MembController {
    private static final Logger log = LoggerFactory.getLogger(MembController.class);
    private static final String loginType = LoginType.MEMBER.getLoginType();
    @Autowired
    private MemberService memberService;

    /**
     * @return member 的登录
     */
    @RequestMapping(value = "/login")
    public String Login(HttpServletRequest request, Model model, HttpSession session) {
        log.info("正在执行登录");
        String account = request.getParameter("account");
        String password = request.getParameter("password");
        session.setAttribute("account", account);
        session.setAttribute("password", password);
        log.info("账号：{},密码：{}", account, password);
        Subject memberSubject = SecurityUtils.getSubject();
        //使用自定义token的登录方式
        UsernamePwdLogTypToken token = new UsernamePwdLogTypToken(account, password, loginType);
        token.setRememberMe(false);
        try {
            memberSubject.login(token);
        } catch (AuthenticationException e) {
            log.error("密码/账号错误:{}", e.toString());
            return "error";
        }
        model.addAttribute("cardNo", account);
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
        String resultCardNo = memberService.registryMember(requestMap);
        if (resultCardNo == null) {
            result.put("msg", "insert fail");
            return result;
        }
        log.info("registry success");
        result.put("msg", "success,cardNo :" + resultCardNo);
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
     * @return 会员名称、头像
     **/
    @RequestMapping("/root")
    public @ResponseBody
    Map<Object, Object> root(@RequestBody Map<String, String> requestMap) {
        Map<Object, Object> result = new HashMap<>();
        MemberInfo memberInfo = memberService.getUerNameImgByCardNo(requestMap.get("cardNo"));
        String name = memberInfo.getName();
        String imgRoot = memberInfo.getImgRoot();
        log.info("name {}, root {}", name, imgRoot);
        result.put("name", name);
        result.put("imgRoot", imgRoot);
        return result;
    }

    @RequestMapping(value = "/info")
    public String info() {
        return "member/info";
    }

    @RequestMapping(value = "/infoData")
    public @ResponseBody
    Map<Object, Object> infoData(@RequestBody Map<String, String> requestMap) {
        MemberInfo memberInfo = memberService.getInfoByCardNo(requestMap.get("cardNo"));
        String reBirthday = memberInfo.getBirthday();
        memberInfo.setBirthday(reBirthday.substring(0, 10));
        //frist time to use Optional of guava ;
        Optional<MemberInfo> optional = Optional.of(memberInfo);
        if (optional.isPresent()) {
            return ImmutableMap.of("info", memberInfo);
        }
        return null;
    }

    @RequestMapping(value = "/config")
    public String config() {
        return "member/config";
    }
}
