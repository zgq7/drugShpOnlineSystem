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

    //药品资料->平台药品库
    @Select(value = "call pos_get_drugInList(#{page},#{limit},#{drugCode},#{effectDate},#{chainId},#{updown})")
    List<DrugRecord> getDrugInfoList(@Param("page") String page, @Param("limit") String limit, @Param("drugCode") String drugCode
            , @Param("effectDate") String effectDate, @Param("chainId") String chainId, @Param("updown") String updown) throws Exception;

    //当前条件下应有的行数
    @Select(value = "call pos_get_drugInListCount(#{drugCode},#{effectDate},#{chainId},#{updown})")
    Integer getCountOfCondition(@Param("drugCode") String drugCode, @Param("effectDate") String effectDate,
                                @Param("chainId") String chainId, @Param("updown") String updown) throws Exception;

    //上架下架
    @Update(value = "update dsos_vot_drugrecord set isAllowedTrade = #{updown} where drugCode = #{drugCode};")
    Boolean updateDrugDownLoad(@Param("drugCode") String drugCode, @Param("updown") String updown) throws Exception;

    //出库
    @Delete(value = "delete from dsos_vot_drugrecord where drugCode = #{drugCode} and chainId = #{chainId};")
    Boolean deleteDrugByCode(@Param("drugCode") String drugCode, @Param("chainId") String chainId) throws Exception;

    //入库，平台药品库
    @Insert(value = "call pos_add_drug(#{chainId},#{drugName},#{drugKind}," +
            "#{drugCode},#{barCode},#{unitPrice}," +
            "#{storePrice}, #{costPrice}, #{unit}," +
            "#{spec},#{company},#{purchaseDate}," +
            "#{produceDate},#{effectDate},#{approval})")
    Boolean addDrugRecord(@Param("chainId") String chainId, @Param("drugName") String drugName, @Param("drugKind") String drugKind,
                          @Param("drugCode") String drugCode, @Param("barCode") String barCode, @Param("unitPrice") String unitPrice,
                          @Param("storePrice") String storePrice, @Param("costPrice") String costPrice, @Param("unit") String unit,
                          @Param("spec") String spec, @Param("company") String company, @Param("purchaseDate") String purchaseDate,
                          @Param("produceDate") String produceDate, @Param("effectDate") String effectDate,
                          @Param("approval") String approval) throws Exception;

    //根据门店编号和连锁编号查找药品库，门店药品库
    @Select(value = "select * from dsos_vot_drugrecord_store where chainId = #{chainId} and code = #{code} limit #{page},10 ")
    List<DrugRecord> getDrugsByCodeAndChainId(@Param("code") String code, @Param("chainId") String chainId
            , @Param("page") Integer page) throws Exception;

    //根据门店编号和连锁编号查找药品库，门店药品库
    @Select(value = "select count(*)/10 + 1  from dsos_vot_drugrecord_store where chainId = #{chainId} and code = #{code} ")
    Integer getDrugsByCodeAndChainIdCount(@Param("code") String code, @Param("chainId") String chainId
            , @Param("page") Integer page) throws Exception;

    //根据连锁编号，门店编号，商品编号查找具体的药品
    @Select(value = "select * from dsos_vot_drugrecord_store where chainId = #{chainId} and code = #{code} and drugCode = #{drugCode} " +
            "and isAllowedTrade = 1")
    DrugRecord getDrugInfoByCondition(@Param("code") String code, @Param("chainId") String chainId
            , @Param("drugCode") String drugCode) throws Exception;
}
