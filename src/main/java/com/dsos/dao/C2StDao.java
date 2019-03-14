package com.dsos.dao;

import com.dsos.modle.view.ChainRecord;
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
    //where chainNo = #{chainNo}
    @Select(value = "select * from dsos_vot_chainrecord limit 0,10 ;")
    List<ChainRecord> getChainRecordById(@Param("chainNo") String chainNo) throws Exception;
}
