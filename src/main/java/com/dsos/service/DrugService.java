package com.dsos.service;

import com.dsos.modle.view.DrugRecord;

import java.util.List;
import java.util.Map;

/**
 * Created by zgq7 on 2019/1/27 0027.
 * 药品 服务层
 */
public interface DrugService {
    /**
     * 参数处理
     * 结果处理
     **/
    List<DrugRecord> getDrugInfoList(Map<Object, Object> requestMap);

    Integer getCountOfCondition(Map<Object, Object> requestMap);

    /**
     * 商品上架下架
     */
    Boolean updateDrugDownLoad(Map<Object, Object> requestMap);

    /**
     * 商品出库入库
     **/
    Boolean deleteDrugByCode(String drugCode);
}
