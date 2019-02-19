package com.dsos.service;

import com.dsos.modle.user.MemberInfo;
import com.dsos.modle.user.MemberUser;

import java.util.Map;

/**
 * Created by zgq7 on 2019/1/28.
 * 会员 服务层
 */
public interface MemberService {

    /**
     * 因为要插入两个表，因此用map传参
     * 前台要检测属性值是否规范切不能为空
     **/
    String registryMember(Map<String, String> params);

    /**
     * 参数处理 拖卡号查询个人资料
     * 结果处理
     **/
    MemberInfo getInfoByCardNo(String cardNo);

    /**
     * 会员信息修改
     **/
    Boolean updateMemberInfo(MemberInfo memberInfo, String oldPassword, MemberUser memberUser);
}
