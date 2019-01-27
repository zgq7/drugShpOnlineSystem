package com.dsos.dao;

import com.dsos.modle.view.DrugRecord;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by zgq7 on 2019/1/27 0027.
 * 药品方面的操作
 */
@Repository
public interface DrugDao {
    @Select("call pos_get_drugList()")
    List<DrugRecord> getDrugInfoList() throws Exception;
}
