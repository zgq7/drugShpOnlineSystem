package com.dsos.dao;

import com.dsos.modle.user.AdminUser;
import com.dsos.modle.user.ChainWorkUser;
import com.dsos.modle.user.MemberUser;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

/**
 * Created by zgq7 on 2019/1/23 0023.
 * 物理层
 */
@Repository
public interface MainDao {
    @Select("CALL login_member(#{account},#{password})")
    MemberUser memberLogin(@Param("account") String account, @Param("password") String password) throws Exception;

    @Select("CALL login_admin(#{account},#{password})")
    AdminUser adminLogin(@Param("account") String account, @Param("password") String password) throws Exception;

    @Select("call login_chain(#{account},#{password})")
    ChainWorkUser chainLogin(@Param("account") String account, @Param("password") String password) throws Exception;
}
