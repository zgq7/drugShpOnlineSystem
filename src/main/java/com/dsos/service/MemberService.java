package com.dsos.service;

import com.dsos.modle.user.MemberInfo;
import com.dsos.modle.user.MemberUser;

import java.util.List;
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
     * 参数处理 拖卡号查询个人资料   info关联user
     * 结果处理
     **/
    MemberUser getInfoByCardNo(String cardNo);

    MemberInfo getInfo2ByCardNo(String cardNo);

    /**
     * 会员信息修改
     **/
    Boolean updateMemberInfo(MemberInfo memberInfo, String oldPassword, MemberUser memberUser);

    /**
     * 按条件获得memberUser list
     **/
    List<MemberUser> getMemberByCondition(Map<Object, Object> request);

    /**
     * 获取当前条件下的会员条数
     **/
    Integer getCountByCondition(Map<Object, Object> request);

    /**
     * 会员购买药品service
     *
     * @param requestMap 所需信息，必须含有：
     *                   连锁编号 chianId
     *                   门店编号 code
     *                   药品编号 drugCode
     *                   会员卡号 account
     *                   购买数量 buyCount
     **/
    Boolean purchaseDrug(Map<Object, Object> requestMap);
}
