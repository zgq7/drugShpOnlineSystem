package com.dsos.dao;

import com.dsos.modle.user.AdminUser;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by zgq7 on 2019/1/23 0023.
 * 业务层
 */
public interface MainDao {
    @Select("SELECT * from dsos_live_adminuser")
    List<AdminUser> getAllAdmin();
}
