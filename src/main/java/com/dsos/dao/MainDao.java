package com.dsos.dao;

import com.dsos.modle.user.AdminUser;
import com.dsos.modle.user.ChainnerUser;
import com.dsos.modle.user.MemberUser;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

/**
 * Created by zgq7 on 2019/1/23 0023.
 * 物理层
 */
@Repository
public interface MainDao {
    /**
     * 以下三条，都是处理登录操作
     **/
    @Select("CALL login_member(#{account},#{password})")
    MemberUser memberLogin(@Param("account") String account, @Param("password") String password) throws Exception;

    @Select("CALL login_admin(#{account},#{password})")
    AdminUser adminLogin(@Param("account") String account, @Param("password") String password) throws Exception;

    @Select("call login_chain(#{account},#{password})")
    ChainnerUser chainLogin(@Param("account") String account, @Param("password") String password) throws Exception;

    /**
     * 以下处理头像
     **/
    @Update("update dsos_live_MemberInfo set imgRoot = #{imgRoot} where cardNo = #{cardNo}")
    Integer updateUserImg(@Param("imgRoot") String imgRoot, @Param("cardNo") String count) throws Exception;
}
