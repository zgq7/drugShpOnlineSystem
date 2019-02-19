package com.dsos.dao;

import com.dsos.modle.user.MemberInfo;
import com.dsos.modle.user.MemberUser;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.mapping.FetchType;
import org.springframework.stereotype.Repository;

/**
 * Created by zgq7 on 2019/1/28.
 * 会员相关数据CURD
 */
@Repository
public interface MemberDao {
    //会员注册
    @Insert("CALL pos_add_member(#{name},#{password},#{mobile},#{sex});")
    String registryMember(@Param("name") String name, @Param("password") String password,
                          @Param("mobile") String mobile, @Param("sex") String sex);

    //查询会员信息
    @Select("select * from dsos_live_memberUser where cardNo = #{cardNo}")
    @Results(value = {
            @Result(property = "mobile", column = "mobile"),
            @Result(property = "cardNo", column = "cardNo"
                   /* , one = @One(select = "getInfo2ByCardNo", fetchType = FetchType.LAZY)*/)
    })
    MemberUser getInfoByCardNo(@Param("cardNo") String cardNo) throws Exception;

    //根据卡号查询个人资料
    @Select("select * from dsos_live_memberInfo where cardNo = #{cardNo}")
    MemberInfo getInfo2ByCardNo(@Param("cardNo") String cardNo) throws Exception;

    //修改个人资料
    @Update("call pos_update_memberInfo(#{user.cardNo},#{mb.mobile},#{user.email},#{user.birthday},#{oldPassword},#{mb.password}" +
            ",#{user.address},#{user.sex})")
    Integer updateMemberInfo(@Param("user") MemberInfo memberInfo, @Param("oldPassword") String oldPassword, @Param("mb") MemberUser memberUser) throws Exception;
}
