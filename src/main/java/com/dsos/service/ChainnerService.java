package com.dsos.service;

import com.dsos.modle.user.ChainnerUser;

import java.util.List;
import java.util.Map;

/**
 * Created by zgq7 on 2019/2/3 0003.
 * chainner 连锁工作人员 业务层
 */
public interface ChainnerService {

    /**
     * 传入admin account
     **/
    ChainnerUser getUerNmaeImgByCardNo(String account);

    /**
     * 按条件筛选chainner
     *
     * @param request 条件集
     **/
    List<ChainnerUser> getChainnerByCondition(Map<Object, Object> request);
}
