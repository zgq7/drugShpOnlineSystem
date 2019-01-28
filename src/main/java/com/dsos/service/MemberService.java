package com.dsos.service;

import com.dsos.modle.user.MemberInfo;

/**
 * Created by zgq7 on 2019/1/28.
 * 会员 服务层
 */
public interface MemberService {
    MemberInfo getUerNmaeImgByCardNo(String cardNo);
}
