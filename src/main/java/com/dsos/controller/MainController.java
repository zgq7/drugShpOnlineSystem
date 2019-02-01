package com.dsos.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * Created by zgq7 on 2019/1/23 0023.
 * 测试handler
 */
@Controller
public class MainController {
    private static final Logger log = LoggerFactory.getLogger(MainController.class);

    /**
     * @return member登录首页
     */
    @RequestMapping("/index")
    public String index() {
        return "index";
    }

    /**
     * @return admin登录首页
     **/
    @RequestMapping("/admin")
    public String admin() {
        return "andex";
    }

    /**
     * @return chain登录首页
     **/
    @RequestMapping("/chain")
    public String cdmin() {
        return "cndex";
    }

    /**
     * @return 报错界面
     **/
    @RequestMapping(value = "/toError")
    public String error() {
        return "error";
    }

    /**
     * @return 权限不足界面
     **/
    @RequestMapping(value = "/unAuthc")
    public String toAuthc() {
        return "unauthc";
    }

}
