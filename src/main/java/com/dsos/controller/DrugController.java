package com.dsos.controller;

import com.dsos.modle.view.DrugRecord;
import com.dsos.service.DrugService;
import com.google.common.collect.ImmutableMap;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

/**
 * Created by zgq7 on 2019/1/27 0027.
 * 药品数据表示层
 */
@Controller
@RequestMapping(value = "/drug")
public class DrugController {
    private static final Logger log = LoggerFactory.getLogger(DrugController.class);
    @Autowired
    private DrugService drugService;

    /**
     * @param request 传值
     *                post请求中参数page、参数limit是必须值，切不能为0或空
     * @return 返回的接口数据
     */
    @RequestMapping(value = "/drugInList")
    public @ResponseBody
    Map<Object, Object> drugInList(HttpServletRequest request) {
        Map<Object, Object> requestMap = new HashMap<>();
        log.info("drugCode :{} , date : {} , chainId :{} ,updown :{}", request.getParameter("drugCode"), request.getParameter("date"),
                request.getParameter("chainId"), request.getParameter("updown"));
        requestMap.put("page", request.getParameter("page"));
        requestMap.put("limit", request.getParameter("limit"));
        requestMap.put("drugCode", request.getParameter("drugCode"));
        requestMap.put("effectDate", request.getParameter("effectDate"));
        requestMap.put("chainId", request.getParameter("chainId"));
        requestMap.put("updown", request.getParameter("updown"));
        List<DrugRecord> drugRecordList = drugService.getDrugInfoList(requestMap);
        Integer count = drugService.getCountOfCondition(requestMap);
        log.info("====== 正在获取药品数据 -------->第{}页,行数{},总行数{}", request.getParameter("page"), request.getParameter("limit"), count);
        Map<Object, Object> result = new HashMap<>();
        for (DrugRecord drugRecord : drugRecordList) {
            if (drugRecord.getIsAllowedTrade().equals("1")) {
                drugRecord.setIsAllowedTrade("可交易");
            } else {
                drugRecord.setIsAllowedTrade("不可交易");
            }
        }
        result.put("data", drugRecordList);
        result.put("code", 0);
        result.put("count", count);
        result.put("msg", "success");
        return result;
    }

    /**
     * @param requestMap 获取drugCode、updown的值
     * @return 结果消息
     **/
    @RequestMapping(value = "/updateDrugDownLoad", method = RequestMethod.POST)
    public @ResponseBody
    Map<Object, Object> updateDrugDownLoad(@RequestBody Map<Object, Object> requestMap) {
        log.info("requestMap :{}", requestMap);
        Optional<Boolean> optional = Optional.ofNullable(drugService.updateDrugDownLoad(requestMap));
        if (optional.isPresent()) {
            return ImmutableMap.of("result", "success");
        }
        return ImmutableMap.of("result", "fail");
    }

    /**
     * **/
    @RequestMapping(value = "/deleteDrugByCode", method = RequestMethod.POST)
    public @ResponseBody
    Map<Object, Object> deleteDrugByCode(@RequestBody Map<Object, Object> requestMap) {
        log.info("requestMap :{}", requestMap);
        Optional<Boolean> optional = Optional.ofNullable(drugService.updateDrugDownLoad(requestMap));
        if (optional.isPresent()) {
            return ImmutableMap.of("result", "success");
        }
        return ImmutableMap.of("result", "fail");
    }

}
