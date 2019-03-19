package com.dsos.service;

import com.dsos.modle.view.ChainRecord;
import com.dsos.modle.view.StoreRecord;

import java.util.List;
import java.util.Map;

/**
 * Created by zgq7 on 2019/3/14.
 * 连锁 服务层
 */
public interface C2StService {

    /**
     * 获取连锁数据
     **/
    List<ChainRecord> getChainRecordByNo(Map<Object, Object> request);

    /**
     * 获取门店数据
     **/
    List<StoreRecord> getStoreRecordById(Map<Object, Object> request);
}
