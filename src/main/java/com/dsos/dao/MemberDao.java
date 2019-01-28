package com.dsos.dao;

import com.dsos.modle.user.MemberInfo;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

/**
 * Created by zgq7 on 2019/1/28.
 * 会员相关数据CURD
 */
@Repository
public interface MemberDao {
    //查询会员名以及头像地址
    @Select("select name,imgRoot from dsos_live_info where cardNo = #{cardNo}")
    MemberInfo getUerNmaeImgByCardNo(@Param("cardNo")String cardNo) throws Exception;
}
