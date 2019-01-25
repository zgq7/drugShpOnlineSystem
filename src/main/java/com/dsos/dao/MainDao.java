package com.dsos.dao;

import com.dsos.modle.user.AdminUser;
import com.dsos.modle.user.ChainWorkUser;
import com.dsos.modle.user.MemberUser;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

/**
 * Created by zgq7 on 2019/1/23 0023.
 * 业务层
 */
@Repository
public interface MainDao {
    @Select("CALL login_member(#{account},#{password})")
    MemberUser memberLogin(@Param("account") String account, @Param("password") String password);

    @Select("CALL login_Admin(#{account},#{password})")
    AdminUser adminLogin(String accout, String password) throws Exception;

    @Select("call login_member(#{account},#{password})")
    ChainWorkUser chainLogin(String accout, String password) throws Exception;
}
