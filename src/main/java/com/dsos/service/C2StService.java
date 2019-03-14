package com.dsos.service;

import com.dsos.modle.view.ChainRecord;

import java.util.List;
import java.util.Map;

/**
 * Created by zgq7 on 2019/3/14.
 * 连锁 服务层
 */
public interface C2StService {

    List<ChainRecord> getChainRecordByNo(Map<Object, Object> request);
}
