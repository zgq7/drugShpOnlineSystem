package com.dsos.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by zgq7 on 2019/1/28.
 * 处理视图模板载入
 */
@Controller
@RequestMapping("viewModel")
public class viewModelLoader {
    @RequestMapping(value = "/userHead")
    public String userHead(){
        return "model/userHead";
    }

    @RequestMapping(value = "/userLeft")
    public String userLeft(){
        return "model/userLeft";
    }

    @RequestMapping(value = "/userButtom")
    public String userButtom(){
        return "model/userButtom";
    }
}
