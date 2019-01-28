package com.dsos.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by zgq7 on 2019/1/27 0027.
 * 负责member的每一样事务
 */
@Controller
@RequestMapping(value = "/member")
public class MembController {

    /**
     * @return 登陆成功跳转**/
    @RequestMapping(value = "/loginSuccessUser")
    public String loginSuccessUser() {
        return "member/loginSuccessUser";
    }

    /**
     * @return 会员信息
     * **/
    @RequestMapping("/info")
    public String info(){
        return "member/info";
    }

    /**
     * @return 会员设置
     * **/
    @RequestMapping("/config")
    public String config(){
        return "member/config";
    }
}
