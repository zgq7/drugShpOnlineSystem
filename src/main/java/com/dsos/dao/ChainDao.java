package com.dsos.dao;

import com.dsos.modle.user.ChainnerUser;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by zgq7 on 2019/02/03.
 * chain(连锁、门店的工作人员)相关数据CURD
 */
@Repository
public interface ChainDao {
    /**
     * @param account 登录账户
     **/
    //查询chainner名以及头像地址
    @Select("select name,imgRoot from dsos_live_chainworkuser where chainAccount = #{account}")
    ChainnerUser getUerNmaeImgByCardNo(@Param("account") String account) throws Exception;


    /**
     * @param chainId 连锁Id
     * @param code    门店编号
     * @param account 账户
     * @param mobile  手机号码
     * @param page    当前页
     * @param limit   限制行数
     **/
    //动态查询符合条件的店员
    @Select(value = "call pos_get_chainnerList(#{chainId}, #{code}, #{account}, #{mobile}, #{page}, #{limit})")
    List<ChainnerUser> getChainnerByCondition(@Param("chainId") String chainId, @Param("code") String code,
                                              @Param("account") String account, @Param("mobile") String mobile,
                                              @Param("page") String page, @Param("limit") String limit) throws Exception;

}
