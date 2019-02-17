package com.dsos.controller;

import com.dsos.config.shiro.LoginType;
import com.dsos.config.shiro.UsernamePwdLogTypToken;
import com.dsos.modle.user.MemberInfo;
import com.dsos.service.MainService;
import com.dsos.service.MemberService;
import com.google.common.collect.ImmutableMap;
import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
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
    @Autowired
    private MainService mainService;

    /**
     * @return member 的登录
     */
    @RequestMapping(value = "/login")
    public String Login(HttpServletRequest request, HttpSession session) {
        log.info("正在执行登录");
        String account = request.getParameter("account");
        String password = request.getParameter("password");
        session.setAttribute("account", account);
        session.setAttribute("type", loginType);
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

    /**
     * 跳转到修改资料页面
     **/
    @RequestMapping(value = "/updateInfo")
    public String updateInfo() {
        return "member/updateInfo";
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
     *
     * @param file    上传的文件
     * @param request 传值
     **/
    @RequestMapping(value = "/uploadImg", method = RequestMethod.POST)
    public @ResponseBody
       Map<Object, Object> uploadImg(@RequestParam("file") MultipartFile file, HttpServletRequest request) {
        HttpSession session = request.getSession();
        String count = (String) session.getAttribute("account");
        //获取旧文件地址
        MemberInfo memberInfo = memberService.getInfoByCardNo(count);
        String oldRoot = StringUtils.substringAfterLast(memberInfo.getImgRoot(), "\\");
        log.info("file is uploading");
        try {
            //重命名将保存的文件名
            String newFileName = System.currentTimeMillis() + file.getOriginalFilename();
            //目标文件存储路径
            File path = new File(ResourceUtils.getURL("classpath:").getPath());
            String destFileName = new File(path.getAbsolutePath(), "images/member/").getAbsolutePath() + File.separator;
            //新的数据库地址
            String dbRoot = ".." + File.separator + "images" + File.separator + loginType.toLowerCase() + File.separator + newFileName;
            //新的物理地址
            String dirRoot = destFileName + newFileName;
            //如果文件夹不存在，则新建
            File newFile = new File(destFileName);
            if (!newFile.exists()) {
                newFile.mkdirs();
            }
            //删除老文件
            log.info("old:{},new:{}", oldRoot, newFileName);
            FileUtils.deleteQuietly(new File(destFileName + oldRoot));

            FileOutputStream stream = new FileOutputStream(dirRoot);
            stream.write(file.getBytes());
            stream.close();
            //上传完之后，修改数据库的imgRoot
            Boolean updatStatus = mainService.updateUserImg(dbRoot, count);
            if (newFile.exists() && updatStatus)
                return ImmutableMap.of("code", 1, "msg", "修改成功，点击确定后返回资料界面。", "data",
                        ImmutableMap.of("src", dbRoot));
        } catch (FileNotFoundException e) {
            log.error("文件为空：{}", e);
            return ImmutableMap.of("code", 0, "msg", "fail", "data", "");
        } catch (IOException e) {
            log.error("IO 流报错：{}", e);
            return ImmutableMap.of("code", 0, "msg", "fail", "data", "");
        }
        return ImmutableMap.of("code", 1, "msg", "something was wrong", "data", "");
    }

}
