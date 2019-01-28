package com.dsos.service;

import com.dsos.modle.view.DrugRecord;

import java.util.List;

/**
 * Created by zgq7 on 2019/1/27 0027.
 * 药品 服务层
 */
public interface DrugService {
    /**
     * 参数处理
     * 结果处理
     * **/
    List<DrugRecord> getDrugInfoList(Integer page,Integer limit);
}
