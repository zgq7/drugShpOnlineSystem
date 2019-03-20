package com.dsos.controller;

import com.dsos.modle.user.ChainnerUser;
import com.dsos.modle.view.ChainRecord;
import com.dsos.modle.view.StoreRecord;
import com.dsos.service.C2StService;
import com.dsos.service.ChainnerService;
import com.google.common.collect.ImmutableMap;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by zgq7 on 2019/3/14.
 * 连锁、门店 的url分发以及事务处理
 */
@Controller
@RequestMapping(value = "/c2st")
public class C2StController {
    private static final Logger log = LoggerFactory.getLogger(C2StController.class);
    @Autowired
    private C2StService c2StService;
    @Autowired
    private ChainnerService chainnerService;

    /**
     * 通过连锁id获取连锁信息List
     *
     * @param request 获取连锁编号
     */
    @RequestMapping(value = "/getChainByNo", method = RequestMethod.GET)
    public @ResponseBody
    Map<Object, Object> getChainByNo(HttpServletRequest request) {
        Map<Object, Object> requestMap = new HashMap<>();
        String chainNo = request.getParameter("key[chainNo]");
        if (chainNo == null) {
            chainNo = "";
        }
        requestMap.put("chainNo", chainNo);

        requestMap.put("page", request.getParameter("page"));
        requestMap.put("limit", request.getParameter("limit"));
        log.info("c2st.getchainList {},{},{}", request.getParameter("key[chainNo]"), request.getParameter("page"), request.getParameter("limit"));
        List<ChainRecord> chainRecordList = c2StService.getChainRecordByNo(requestMap);
        return ImmutableMap.of("code", "0", "count", "1", "msg", "", "data", chainRecordList);
    }

    /**
     * 通过门店编号获取门店信息List
     *
     * @param request 获取门店编号code
     */
    @RequestMapping(value = "/getStoreByCode", method = RequestMethod.GET)
    public @ResponseBody
    Map<Object, Object> getStoreByCode(HttpServletRequest request) {
        Map<Object, Object> requestMap = new HashMap<>();
        String chainNo = request.getParameter("chainNo");
        String code = request.getParameter("code");
        if (chainNo == null) {
            chainNo = "";
        }
        if (code == null) {
            code = "";
        }
        requestMap.put("chainNo", chainNo);
        requestMap.put("code", code);

        requestMap.put("page", request.getParameter("page"));
        requestMap.put("limit", request.getParameter("limit"));
        log.info("c2st.getStoreList {},{},{},{}", chainNo, code, request.getParameter("page"), request.getParameter("limit"));
        List<StoreRecord> storeRecordList = c2StService.getStoreRecordById(requestMap);
        return ImmutableMap.of("code", "0", "count", "1", "msg", "", "data", storeRecordList);
    }

    /**
     * 通过条件获取chainner信息List
     *
     * @param request include chainId、code、account、mobile
     */
    @RequestMapping(value = "/getChainnerByCondition", method = RequestMethod.GET)
    public @ResponseBody
    Map<Object, Object> getChainnerByCondition(HttpServletRequest request) {
        Map<Object, Object> requestMap = new HashMap<>();
        String chainNo = request.getParameter("chainNo");
        String code = request.getParameter("code");
        String account = request.getParameter("account");
        String mobile = request.getParameter("mobile");
        if (chainNo == null) {
            chainNo = "";
        }
        if (code == null) {
            code = "";
        }
        if (account == null) {
            account = "";
        }
        if (mobile == null) {
            mobile = "";
        }
        requestMap.put("chainId", chainNo);
        requestMap.put("code", code);
        requestMap.put("account", account);
        requestMap.put("mobile", mobile);

        requestMap.put("page", request.getParameter("page"));
        requestMap.put("limit", request.getParameter("limit"));
        log.info("c2st.getChainnerByCondition {},{},{},{},{},{}", chainNo, code, account, mobile, request.getParameter("page"), request.getParameter("limit"));
        List<ChainnerUser> chainnerUserList = chainnerService.getChainnerByCondition(requestMap);
        return ImmutableMap.of("code", "0", "count", chainnerUserList.size(), "msg", "", "data", chainnerUserList);
    }
}
