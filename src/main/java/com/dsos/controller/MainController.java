package com.dsos.controller;

import com.dsos.dao.MainDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by zgq7 on 2019/1/23 0023.
 * 测试handler
 */

@Controller
public class MainController {
    @Autowired
    private MainDao mainDao;

    @RequestMapping("/index")
    public String index() {
        System.out.println(mainDao.getAllAdmin());
        System.out.println(123);
        return "index";
    }

}
