package com.dsos.controller;

import com.dsos.modle.view.ChainRecord;
import com.dsos.service.C2StService;
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

    /**
     * 通过连锁编号获取连锁信息List
     *
     * @param request 获取连锁编号
     */
    @RequestMapping(value = "/getChainByNo", method = RequestMethod.GET)
    public @ResponseBody
    Map<Object, Object> getChainByNo(HttpServletRequest request) {
        Map<Object, Object> requestMap = new HashMap<>();
        String chainNo = request.getParameter("key[chainNo]");
        if (chainNo == null) {
            requestMap.put("chainNo", "");
        } else {
            requestMap.put("chainNo", chainNo);

        }
        requestMap.put("page", request.getParameter("page"));
        requestMap.put("limit", request.getParameter("limit"));
        log.info("c2st.getchainList {},{},{}", request.getParameter("key[chainNo]"), request.getParameter("page"), request.getParameter("limit"));
        List<ChainRecord> chainRecordList = c2StService.getChainRecordByNo(requestMap);
        return ImmutableMap.of("code", "0", "count", "1", "msg", "", "data", chainRecordList);
    }
}
