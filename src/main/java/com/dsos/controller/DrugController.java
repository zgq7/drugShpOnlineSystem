package com.dsos.controller;

import com.dsos.modle.view.DrugRecord;
import com.dsos.service.DrugService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by zgq7 on 2019/1/27 0027.
 * 药品数据表示层
 */
@Controller
@RequestMapping(value = "drug")
public class DrugController {
    private static final Logger log = LoggerFactory.getLogger(DrugController.class);
    @Autowired
    private DrugService drugService;

    /**
     * @param request 传值
     * @return 返回的接口数据
     */
    @RequestMapping(value = "/drugInList")
    @ResponseBody
    public Map<Object, Object> drugInList(HttpServletRequest request) {
        Map<Object,Object> requestMap = new HashMap<>();
        log.info("drugCode :{} , date : {} ， chainId :{}", request.getParameter("drugCode"), request.getParameter("date"), request.getParameter("chainId"));
        log.info("====== 正在获取药品数据 -------->第{}页,行数{}", request.getParameter("page"), request.getParameter("limit"));
        requestMap.put("page",request.getParameter("page"));
        requestMap.put("page",request.getParameter("page"));
        requestMap.put("page",request.getParameter("page"));
        requestMap.put("page",request.getParameter("page"));
        requestMap.put("page",request.getParameter("page"));
        List<DrugRecord> drugRecordList = drugService.getDrugInfoList(requestMap);
        Map<Object, Object> result = new HashMap<>();
        result.put("data", drugRecordList);
        result.put("code", 0);
        result.put("count", 1000);
        result.put("msg", "");
        return result;
    }
}
