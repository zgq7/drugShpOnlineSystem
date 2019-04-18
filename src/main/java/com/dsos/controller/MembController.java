package com.dsos.controller;

import com.dsos.config.session.SessionCollections;
import com.dsos.config.shiro.LoginType;
import com.dsos.config.shiro.UsernamePwdLogTypToken;
import com.dsos.modle.user.MemberInfo;
import com.dsos.modle.user.MemberUser;
import com.dsos.modle.view.ChainRecord;
import com.dsos.modle.view.DrugRecord;
import com.dsos.modle.view.StoreRecord;
import com.dsos.service.C2StService;
import com.dsos.service.DrugService;
import com.dsos.service.MainService;
import com.dsos.service.MemberService;
import com.dsos.utils.OprateFileUtils;
import com.google.common.collect.ImmutableMap;
import org.apache.commons.lang.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collector;
import java.util.stream.Collectors;

/**
 * Created by zgq7 on 2019/1/27 0027.
 * 负责member的每一样事务
 */
@Controller
@RequestMapping(value = "/member")
public class MembController {
    private static final Logger log = LoggerFactory.getLogger(MembController.class);
    private static final String loginType = LoginType.MEMBER.getLoginType();
    private SessionCollections sessionCollections = SessionCollections.getinstance();
    @Autowired
    private MemberService memberService;
    @Autowired
    private MainService mainService;
    @Autowired
    private C2StService c2StService;
    @Autowired
    private DrugService drugService;

    /**
     * @return member 的登录
     */
    @RequestMapping(value = "/login")
    public String Login(HttpServletRequest request, HttpSession session, Map<String, Object> map) {
        String account = request.getParameter("account");
        String password = request.getParameter("password");
        session.setAttribute("account", account);
        session.setAttribute("type", loginType);
        Subject memberSubject = SecurityUtils.getSubject();
        //使用自定义token的登录方式
        UsernamePwdLogTypToken token = new UsernamePwdLogTypToken(account, password, loginType);
        token.setRememberMe(false);
        try {
            memberSubject.login(token);
        } catch (AuthenticationException e) {
            map.put("msg", "密码/账号错误");
            return "error";
        }
        session.setAttribute("account", account);
        session.setAttribute("ip", request.getRemoteAddr());
        session.setAttribute("userType", loginType);
        //登陆成功之后再将session加载到内存中
        sessionCollections.addSession(session);
        return "redirect:/member/loginSuccessUser";
    }

    @RequestMapping(value = "/registry", method = RequestMethod.POST)
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
    Map<Object, Object> root(HttpServletRequest request) {
        MemberInfo memberInfo = memberService.getInfoByCardNo((String) request.getSession().getAttribute("account")).getMemberInfo();
        return ImmutableMap.of("name", memberInfo.getName(), "imgRoot", memberInfo.getImgRoot(), "amount", memberInfo.getAmount());
    }

    @RequestMapping(value = "/info")
    public String info() {
        return "member/info";
    }

    @RequestMapping(value = "/infoData")
    public @ResponseBody
    Map<Object, Object> infoData(HttpServletRequest request) {
        MemberInfo memberInfo = memberService.getInfoByCardNo((String) request.getSession().getAttribute("account")).getMemberInfo();
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
        MemberInfo memberInfo = memberService.getInfoByCardNo(count).getMemberInfo();
        String oldRoot = StringUtils.substringAfterLast(memberInfo.getImgRoot(), "\\");
        log.info("file is uploading");
        try {
            //重命名将保存的文件名
            String newFileName = System.currentTimeMillis() + file.getOriginalFilename();
            //目标文件存储路径
            //File path = new File(ResourceUtils.getURL("classpath:").getPath());
            String destFileRoot = new File(new File(ResourceUtils.getURL("classpath:").getPath()).getAbsolutePath(), "images/member/").getAbsolutePath() + File.separator;
            //新的数据库地址
            String dbRoot = ".." + File.separator + "images" + File.separator + loginType.toLowerCase() + File.separator + newFileName;
            //生成新文件
            Boolean writeStatus = OprateFileUtils.writeFile(destFileRoot, newFileName, file);
            //删除老文件
            Boolean deleteStatus = OprateFileUtils.deleteFile(destFileRoot, oldRoot);
            //上传完之后，修改数据库的imgRoot
            Boolean updatStatus = mainService.updateUserImg(dbRoot, count);
            log.info("文件操作状态 : {},{},{}", writeStatus, deleteStatus, updatStatus);
            if (writeStatus && deleteStatus && updatStatus)
                return ImmutableMap.of("code", 1, "msg", "修改成功，点击确定后返回资料界面。", "data",
                        ImmutableMap.of("src", dbRoot));
        } catch (FileNotFoundException e) {
            log.error("文件为空：{}", e);
            return ImmutableMap.of("code", 0, "msg", "fail", "data", "");
        }
        return ImmutableMap.of("code", 1, "msg", "something was wrong", "data", "");
    }

    /**
     * @param request ajax传递过来的数据
     * @return 返回的数据
     **/
    @RequestMapping(value = "/uploadInfo", method = RequestMethod.GET)
    public String uploadInfo(HttpServletRequest request, Model model) {
        MemberInfo memberInfo = new MemberInfo();
        memberInfo.setCardNo((String) request.getSession().getAttribute("account"));
        memberInfo.setBirthday(request.getParameter("birthday"));
        memberInfo.setEmail(request.getParameter("email"));
        memberInfo.setName(request.getParameter("name"));
        memberInfo.setAddress(request.getParameter("privince") + "-" + request.getParameter("urban") + "-" + request.getParameter("area"));
        //获取新、旧密码
        String newPassword = request.getParameter("newPassword");
        String oldPassword = request.getParameter("oldPassword");
        MemberUser memberUser = new MemberUser();
        memberUser.setMobile(request.getParameter("mobile"));
        memberUser.setPassword(request.getParameter("newPassword"));
        //log.info("memberinfo : {}", memberInfo.toString());

        //判断修改状态
        Boolean updateStatus = memberService.updateMemberInfo(memberInfo, oldPassword, memberUser);
        log.info("个人信息修改状态为：{}", updateStatus);
        if (!updateStatus) {
            model.addAttribute("msg", "update info failed,please check the oldPassword");
        } else {
            model.addAttribute("msg", "update info success");
        }
        return "member/updateInfo";
    }

    //======================================================================连锁->门店->药品->购买业务

    /**
     * 登录成功之后显示所有的连锁视图
     **/
    @RequestMapping(value = "/chainList", method = RequestMethod.POST)
    public @ResponseBody
    Map<Object, Object> chainList(@RequestBody Map<Object, Object> request) {
        Map<Object, Object> requestMap = new HashMap<>(10);
        requestMap.put("page", request.get("page"));
        requestMap.put("limit", 10);
        requestMap.put("chainNo", "");
        List<ChainRecord> chainRecordList = c2StService.getChainRecordByNo(requestMap);
        return ImmutableMap.of("result", chainRecordList);
    }

    /**
     * 点击具体连锁之后显示的门店视图
     **/
    @RequestMapping(value = "/storeList", method = RequestMethod.POST)
    public @ResponseBody
    Map<Object, Object> storeList(HttpServletRequest request, @RequestBody Map<Object, Object> requestJ) {
        Map<Object, Object> requestMap = new HashMap<>(10);
        Object chainNo = request.getSession().getAttribute("chainNo");
        Integer page = (Integer) requestJ.get("page");
        requestMap.put("page", page);
        requestMap.put("limit", 6);
        requestMap.put("code", "");
        requestMap.put("chainNo", chainNo);
        List<StoreRecord> storeRecordList = c2StService.getStoreRecordById(requestMap);
        return ImmutableMap.of("result", storeRecordList);
    }

    /**
     * 点击具体门店之后显示的商品视图
     **/
    @RequestMapping(value = "/drugList", method = RequestMethod.POST)
    public @ResponseBody
    Map<Object, Object> drugList(HttpServletRequest request, @RequestBody Map<Object, Object> requestJ) {
        Map<Object, Object> requestMap = new HashMap<>(10);
        Object page = requestJ.get("page");
        Object code = request.getSession().getAttribute("code");
        Object chainId = request.getSession().getAttribute("chainNo");
        Object drugCode = request.getSession().getAttribute("drugCode");

        requestMap.put("page", page);
        requestMap.put("code", code);
        requestMap.put("chainId", chainId);
        requestMap.put("drugCode", drugCode);

        List<DrugRecord> drugRecordList = drugService.getDrugsByCodeAndChainId(requestMap);
        Integer count = drugService.getDrugsByCodeAndChainIdCount(requestMap);
        log.info("{},{},{},{}", page, chainId, code, count);
        return ImmutableMap.of("result", drugRecordList, "count", count);
    }


    /**
     * 会员点击指定连锁后显示的归属门店页面
     **/
    @RequestMapping(value = "/toDirStore")
    public String toDirStore(HttpServletRequest request, HttpSession session) {
        String chainNo = request.getParameter("chainNo");
        session.setAttribute("chainNo", chainNo);
        return "member/foundstore";
    }

    /**
     * 会员点击指定门店后显示的归属商品页面
     **/
    @RequestMapping(value = "/toDirDrugList")
    public String toDirDrugList(HttpServletRequest request, HttpSession session) {
        String code = request.getParameter("code");
        session.setAttribute("code", code);
        return "member/foundrug";
    }

    /**
     * 跳转到商品购买页面
     **/
    @RequestMapping(value = "/buyDirDrug")
    public String buyDirDrug(HttpServletRequest request, HttpSession session, Model model) {
        Map<Object, Object> requestMap = new HashMap<>(10);
        Object drugCode = request.getParameter("drugCode");
        Object code = request.getSession().getAttribute("code");
        Object chainId = request.getSession().getAttribute("chainNo");

        requestMap.put("code", code);
        requestMap.put("chainId", chainId);
        requestMap.put("drugCode", drugCode);

        DrugRecord drugRecord = drugService.getDrugInfoByCondition(requestMap);
        model.addAttribute("drug", drugRecord);
        session.setAttribute("drugCode", drugCode);
        return "member/buyDirDrug";
    }

    @RequestMapping(value = "/purchaseDrug", method = RequestMethod.POST)
    public @ResponseBody
    Map<Object, Object> purchaseDrug(@RequestBody Map<Object, Object> requestMap, HttpServletRequest request) {
        Map<Object, Object> requestP = new HashMap<>(10);
        Object code = request.getSession().getAttribute("code");
        Object drugCode = request.getSession().getAttribute("drugCode");
        Object chainId = request.getSession().getAttribute("chainNo");
        Object account = request.getSession().getAttribute("account");
        Object buyCount = requestMap.get("buyCount");

        requestP.put("code", code);
        requestP.put("chainId", chainId);
        requestP.put("drugCode", drugCode);
        requestP.put("account", account);
        requestP.put("buyCount", buyCount);

        System.out.println(requestP);

        return ImmutableMap.of("result", "success");
    }
}
