package com.dsos.dao;

import com.dsos.modle.view.DrugRecord;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by zgq7 on 2019/1/27 0027.
 * 药品方面的操作
 */
@Repository
public interface DrugDao {
    @Select("call pos_get_drugInList(#{page},#{limit})")
    List<DrugRecord> getDrugInfoList(@Param("page") Integer page, @Param("limit") Integer limit, @Param("drugCode") String drugCode
            , @Param("effectDate") String effectDate, @Param("chainId") String chainId) throws Exception;
}
