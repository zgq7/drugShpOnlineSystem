package com.dsos.service;

import com.dsos.modle.user.AdminUser;

/**
 * Created by zgq7 on 2019/2/3 0003.
 * admin 业务层
 */
public interface AdminService {

    /**
     * 传入admin account
     **/
    AdminUser getUerNmaeImgByCardNo(String account);
}
