package com.dsos.dao;

import com.dsos.modle.user.ChainWorkUser;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

/**
 * Created by zgq7 on 2019/02/03.
 * admin相关数据CURD
 */
@Repository
public interface ChainDao {
    //查询admin名以及头像地址
    @Select("select name,imgRoot from dsos_live_chainworkuser where chainAccount = #{account}")
    ChainWorkUser getUerNmaeImgByCardNo(@Param("account") String account) throws Exception;

}
