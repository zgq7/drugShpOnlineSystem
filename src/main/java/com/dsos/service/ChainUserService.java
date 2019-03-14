package com.dsos.service;

import com.dsos.modle.user.ChainWorkUser;

/**
 * Created by zgq7 on 2019/2/3 0003.
 * chainner 连锁工作人员 业务层
 */
public interface ChainUserService {

    /**
     * 传入admin account
     **/
    ChainWorkUser getUerNmaeImgByCardNo(String account);
}
