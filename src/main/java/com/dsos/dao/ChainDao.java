package com.dsos.dao;

import com.dsos.modle.user.ChainWorkUser;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

/**
 * Created by zgq7 on 2019/02/03.
 * chain(连锁、门店 工作人员)相关数据CURD
 */
@Repository
public interface ChainDao {
    /**
     * @param account 登录账户
     * **/
    //查询chainner名以及头像地址
    @Select("select name,imgRoot from dsos_live_chainworkuser where chainAccount = #{account}")
    ChainWorkUser getUerNmaeImgByCardNo(@Param("account") String account) throws Exception;



}
