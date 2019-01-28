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

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by zgq7 on 2019/1/27 0027.
 * 药品数据表示层
 */
@Controller
public class DrugController {
    private static final Logger log = LoggerFactory.getLogger(DrugController.class);
    @Autowired
    private DrugService drugService;

    @RequestMapping(value = "/getDrugInfoList")
    @ResponseBody
    public Map<Object,Object> getDrugInfoList(Integer page, Integer limit){
        log.info("====== 正在获取药品数据 ======{},{}",page,limit);
        List<DrugRecord> drugRecordList = drugService.getDrugInfoList(page,limit);
        Map<Object,Object> result = new HashMap<>();
        result.put("data",drugRecordList);
        result.put("code",0);
        result.put("count",1000);
        result.put("msg","");
        return result;
    }
}
