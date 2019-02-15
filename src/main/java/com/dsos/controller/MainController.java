package com.dsos.controller;

import org.apache.tomcat.util.http.fileupload.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;


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
     * 跳转到修改资料页面
     **/
    @RequestMapping(value = "/updateInfo")
    public String updateInfo() {
        return "common/updateInfo";
    }

    /**
     * 跳转到修改头像页面
     **/
    @RequestMapping(value = "/updateLog")
    public String updateLogo() {
        return "common/updateLog";
    }

    /**
     * 上传图片action
     **/
    @RequestMapping(value = "/uploadImg", method = RequestMethod.POST)
    public String uploadImg(HttpServletRequest request,@RequestParam("file") MultipartFile file, Model model) {
        log.info("file is uploading");
        try {
            //重命名将保存的文件名
            String fileName = System.currentTimeMillis() + file.getOriginalFilename();
            //文件存储路径
            String destFileName = System.getProperty("user.dir") + File.separator + "src" + File.separator + "main" + File.separator + "resources"
                    +File.separator+"images"+File.separator;
            FileOutputStream stream = new FileOutputStream(destFileName+fileName);
            stream.write(file.getBytes());
            //stream.close();
            log.info("{}",destFileName+fileName);
            model.addAttribute("msg", "upload success");
        } catch (FileNotFoundException e) {
            log.error("文件为空：{}", e);
            return "上传失败" + e.getMessage();
        } catch (IOException e) {
            log.error("IO 流报错：{}", e);
            return "上传失败" + e.getMessage();
        }
        return "redirect:common/updateLog";
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
