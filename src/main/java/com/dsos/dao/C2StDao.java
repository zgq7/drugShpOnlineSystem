package com.dsos.dao;

import com.dsos.modle.view.ChainRecord;
import com.dsos.modle.view.StoreRecord;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by zgq7 on 2019/3/14.
 * 处理门店/连锁的sql mapper
 */
@Repository
public interface C2StDao {

    //============================================================连锁相关

    /**
     * @param chainNo 门店Id
     * @param page    当前页
     * @param limit   限制行数
     **/
    @Select(value = "call pos_get_chainList(#{chainNo}, #{page}, #{limit})")
    List<ChainRecord> getChainRecordById(@Param("chainNo") String chainNo, @Param("page") String page,
                                         @Param("limit") String limit) throws Exception;

    //============================================================门店相关

    /**
     * @param code 门店编号
     **/
    @Select(value = "call pos_get_storeList(#{chainNo},#{code}, #{page}, #{limit})")
    List<StoreRecord> getStoreRecordById(@Param("chainNo") String chainNo, @Param("code") String code,
                                         @Param("page") String page, @Param("limit") String limit) throws Exception;
}
