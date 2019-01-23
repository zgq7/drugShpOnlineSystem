package com.dsos.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by zgq7 on 2019/1/23 0023.
 * 测试handler
 */

@Controller
public class MainController {

    @RequestMapping("/index")
    public String index(){
        return "index";
    }

}
