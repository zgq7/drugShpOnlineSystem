package com.dsos.controller;

import com.alibaba.fastjson.JSONObject;
import com.dsos.commons.Methods;
import com.dsos.config.session.SessionCollections;
import com.dsos.config.shiro.LoginType;
import com.dsos.config.shiro.UsernamePwdLogTypToken;
import com.dsos.modle.user.AdminUser;
import com.dsos.modle.user.ChainnerUser;
import com.dsos.modle.user.MemberInfo;
import com.dsos.modle.user.MemberUser;
import com.dsos.service.AdminService;
import com.dsos.service.ChainnerService;
import com.dsos.service.MemberService;
import com.google.common.collect.ImmutableMap;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;
import java.util.stream.Collectors;

/**
 * Created by zgq7 on 2019/1/27 0027.
 * 负责admin 的每一样事务
 */
@Controller
@RequestMapping(value = "/admin")
public class AdminController {
    private static final Logger log = LoggerFactory.getLogger(AdminController.class);
    private static final String loginType = LoginType.ADMIN.getLoginType();
    private SessionCollections sessionCollections = SessionCollections.getinstance();
    @Autowired
    private AdminService adminService;
    @Autowired
    private MemberService memberService;
    @Autowired
    private ChainnerService chainnerService;

    /**
     * @return member 的登录
     */
    @RequestMapping(value = "/login")
    public String Login(HttpServletRequest request, HttpSession session, Map<String, Object> map) {
        String account = request.getParameter("account");
        String password = request.getParameter("password");
        Subject AdminSubject = SecurityUtils.getSubject();
        //使用自定义token的登录方式
        UsernamePwdLogTypToken token = new UsernamePwdLogTypToken(account, password, loginType);
        token.setRememberMe(false);
        try {
            AdminSubject.login(token);
        } catch (AuthenticationException e) {
            map.put("msg", "密码/账号错误");
            return "error";
        }
        session.setAttribute("account", account);
        session.setAttribute("ip", request.getRemoteAddr());
        session.setAttribute("userType", loginType);
        //登陆成功之后再将session加载到内存中
        sessionCollections.addSession(session);
        return "redirect:/admin/loginSuccessUser";
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

    //============================================================药品方面

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

    /**
     * 出库入库
     **/
    @RequestMapping(value = "/drugInOut")
    public String drugInOut(@ModelAttribute("msg") String msg) {
        return "admin/drugInOut";
    }

    //============================================================连锁门店方面

    /**
     * 连锁资料
     **/
    @RequestMapping(value = "/chainList")
    public String chainList() {
        return "admin/chainList";
    }

    /**
     * 连锁资料
     **/
    @RequestMapping(value = "/storeList")
    public String storeList() {
        return "admin/storeList";
    }

    /**
     * 连锁资料
     **/
    @RequestMapping(value = "/chainnerList")
    public String chainnerList() {
        return "admin/chainnerList";
    }

    //============================================================会员管理方面

    /**
     * 会员资料
     **/
    @RequestMapping(value = "/memberList")
    public String memberList() {
        return "admin/memberList";
    }

    /**
     * 按条件筛选会员集合
     **/
    @RequestMapping(value = "/getMemberByCondtion")
    public @ResponseBody
    Map<Object, Object> getMemberByCondtion(HttpServletRequest request) {
        Map<Object, Object> map = new HashMap<>();
        String mobile = request.getParameter("mobile");
        String account = request.getParameter("account");
        String code = request.getParameter("code");
        String page = request.getParameter("page");
        String limit = request.getParameter("limit");

        if (!Optional.ofNullable(code).isPresent()) {
            code = "";
        }
        if (!Optional.ofNullable(mobile).isPresent()) {
            mobile = "";
        }
        if (!Optional.ofNullable(account).isPresent()) {
            account = "";
        }
        //log.info("{},{},{},{},{}", mobile, account, code, page, limit);
        map.put("code", code);
        map.put("mobile", mobile);
        map.put("account", account);
        map.put("page", page);
        map.put("limit", limit);
        List<MemberUser> memberUserList = memberService.getMemberByCondition(map);
        Integer count = memberService.getCountByCondition(map);
        List<MemberInfo> memberInfoList = memberUserList.stream().map(MemberUser::getMemberInfo).collect(Collectors.toList());
        return ImmutableMap.of("code", 0, "msg", "success", "data", memberInfoList, "count", count);
    }

    //============================================================session会话管理
    @RequestMapping(value = "/toSessionList")
    public String toSessionList() {
        return "admin/sessionList";
    }

    /**
     * 查询当前有多少人在线
     **/
    @RequestMapping(value = "/sessionList")
    public @ResponseBody
    Map<Object, Object> getSessionList() {
        Collection<Map<Object, Object>> result = sessionCollections.getSessionInfo().values();
        for (Map map : result) {
            if (map.get("userType").equals("Admin")) {
                AdminUser adminUser = adminService.getUerNmaeImgByCardNo((String) map.get("account"));
                map.putAll((Map) JSONObject.toJSON(adminUser));
            }
            if (map.get("userType").equals("Member")) {
                MemberInfo memberInfo = memberService.getInfo2ByCardNo((String) map.get("account"));
                map.putAll((Map) JSONObject.toJSON(memberInfo));
            }
            if (map.get("userType").equals("Chain")) {
                ChainnerUser chainnerUser = chainnerService.getUerNmaeImgByCardNo((String) map.get("account"));
                map.putAll((Map) JSONObject.toJSON(chainnerUser));
            }
        }
        return ImmutableMap.of("data", result, "code", 0, "count", result.size());
    }

    /**
     * 使指定用户下线
     **/
    @RequestMapping(value = "/delSession")
    public @ResponseBody
    Map<Object, Object> delSession(@RequestBody Map<Object, Object> requestMap) {
        String sessionID = (String) requestMap.get("sessionID");
        log.info("ssessionId : {}", sessionID);
        HttpSession session = sessionCollections.getSession(sessionID);
        if (session.getAttribute("userType").equals("Admin")){
            return ImmutableMap.of("result", "管理员无法强制下线！");
        }
        if (session != null) {
            sessionCollections.delSession(session);
            return ImmutableMap.of("result", "操作成功");
        }
        return ImmutableMap.of("result", "操作失败");
    }

}
