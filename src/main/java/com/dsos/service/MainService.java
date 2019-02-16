package com.dsos.service;

import com.dsos.modle.user.AdminUser;
import com.dsos.modle.user.ChainWorkUser;
import com.dsos.modle.user.MemberUser;

/**
 * Created by zgq7 on 2019/1/23 0023.
 * 服务层 主要检测登录、注册
 */
public interface MainService {

    /**
     * @param account  登录账号
     * @param password 登录密码
     */
    MemberUser memberUserLog(String account, String password);

    AdminUser adminUserLog(String account, String password);

    ChainWorkUser chainWkUserLog(String account, String password);

    /**
     * @param imgRoot 头像地址
     * @param count   会员卡号
     **/
    Boolean updateUserImg(String imgRoot, String count);
}
