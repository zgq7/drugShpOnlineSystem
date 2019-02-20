package com.dsos.dao;

import com.dsos.modle.user.AdminUser;
import com.dsos.modle.user.MemberInfo;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

/**
 * Created by zgq7 on 2019/02/03.
 * admin相关数据CURD
 */
@Repository
public interface AdminDao {
    //查询admin名以及头像地址
    @Select("select * from dsos_live_adminUser where adminAccount = #{account}")
    AdminUser getUerNmaeImgByCardNo(@Param("account") String account) throws Exception;

}
