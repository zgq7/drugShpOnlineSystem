package com.dsos.dao;

import com.dsos.modle.view.DrugRecord;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by zgq7 on 2019/1/27 0027.
 * 药品方面的操作
 */
@Repository
public interface DrugDao {
    /**
     * @param page       当前页
     * @param limit      查询条数
     * @param drugCode   商品编码
     * @param effectDate 保质日期
     * @param chainId    连锁id
     * @param updown     是否允许交易
     **/

    @Select("call pos_get_drugInList(#{page},#{limit},#{drugCode},#{effectDate},#{chainId},#{updown})")
    List<DrugRecord> getDrugInfoList(@Param("page") String page, @Param("limit") String limit, @Param("drugCode") String drugCode
            , @Param("effectDate") String effectDate, @Param("chainId") String chainId, @Param("updown") String updown) throws Exception;

    //当前条件下应有的行数
    @Select(value = "call pos_get_drugInListCount(#{drugCode},#{effectDate},#{chainId},#{updown})")
    Integer getCountOfCondition(@Param("drugCode") String drugCode, @Param("effectDate") String effectDate,
                                @Param("chainId") String chainId, @Param("updown") String updown) throws Exception;

    @Update(value = "")
    Boolean updateDrugDownLoad() throws Exception;
}
