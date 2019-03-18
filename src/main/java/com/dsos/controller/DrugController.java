package com.dsos.controller;

import com.dsos.modle.view.DrugRecord;
import com.dsos.service.DrugService;
import com.google.common.collect.ImmutableMap;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
        String drugCode = request.getParameter("drugCode");
        String effectDate = request.getParameter("date");
        String chainId = request.getParameter("chainId");
        String updown = request.getParameter("updown");
        log.info("drugCode :{} , date : {} , chainId :{} ,updown :{}", drugCode, effectDate, chainId, updown);
        requestMap.put("page", request.getParameter("page"));
        requestMap.put("limit", request.getParameter("limit"));
        requestMap.put("drugCode", drugCode);
        requestMap.put("effectDate", effectDate);
        requestMap.put("chainId", chainId);
        requestMap.put("updown", updown);

        //isBlank 当参数值为null或含空格时返回true
        if (StringUtils.isBlank(drugCode) && StringUtils.isBlank(effectDate)
                && StringUtils.isBlank(chainId) && StringUtils.isBlank(updown)) {
            List<DrugRecord> records = new ArrayList<>();
            return ImmutableMap.of("data", records, "count", 0, "code", 0, "msg", "");
        }
        List<DrugRecord> drugRecordList = drugService.getDrugInfoList(requestMap);
        Integer count = drugService.getCountOfCondition(requestMap);
        log.info("====== 正在获取药品数据 -------->第{}页,行数{},总行数{}", request.getParameter("page"), request.getParameter("limit"), count);
        Map<Object, Object> result = new HashMap<>();
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
        //log.info("requestMap :{}", requestMap);
        Optional<Boolean> optional = Optional.ofNullable(drugService.updateDrugDownLoad(requestMap));
        if (optional.isPresent()) {
            return ImmutableMap.of("result", "success");
        }
        return ImmutableMap.of("result", "fail");
    }

    /**
     * 删除药品
     **/
    @RequestMapping(value = "/deleteDrugByCode", method = RequestMethod.POST)
    public @ResponseBody
    Map<Object, Object> deleteDrugByCode(@RequestBody Map<Object, Object> requestMap) {
        log.info("drugCode of requestMap :code:{} id:{}", requestMap.get("drugCode"), requestMap.get("chainId"));
        String drugCode = (String) requestMap.get("drugCode");
        String chainId = (String) requestMap.get("chainId");
        if (Optional.ofNullable(drugService.deleteDrugByCode(drugCode, chainId)).isPresent()) {
            return ImmutableMap.of("result", "success");
        }
        return ImmutableMap.of("result", "fail");
    }

    /**
     * 药品入库
     *
     * @param redirectAttributes 重定向后传参但能不暴露参数,addFlashAttribute数据闪存存储（只可用一次）
     **/
    @RequestMapping(value = "/addDrugRecord")
    public String addDrugRecord(DrugRecord drugRecord, RedirectAttributes redirectAttributes) {
        log.info("{}", drugRecord.toString());
        if (drugService.addDrugRecord(drugRecord)) {
            log.info("添加药品成功");
            redirectAttributes.addFlashAttribute("msg", "success");
        } else {
            log.error("添加药品失败,连锁Id: {},药品编码: {}", drugRecord.getChainId(), drugRecord.getDrugCode());
            redirectAttributes.addFlashAttribute("msg", "fail,maybe the drug has been registed");
        }
        return "redirect:../admin/drugInOut";
    }
}
