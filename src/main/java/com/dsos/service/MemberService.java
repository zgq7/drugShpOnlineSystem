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
     * 参数处理
     * 结果处理
     **/
    MemberInfo getUerNameImgByCardNo(String cardNo);

    /**
     * 因为要插入两个表，因此用map传参
     * 前台要检测属性值是否规范切不能为空
     **/
    String registryMember(Map<String, String> params);
}
