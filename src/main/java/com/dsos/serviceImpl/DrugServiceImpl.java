package com.dsos.serviceImpl;

import com.dsos.dao.DrugDao;
import com.dsos.modle.view.DrugRecord;
import com.dsos.service.DrugService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.LinkedList;
import java.util.List;

/**
 * Created by zgq7 on 2019/1/27 0027.
 * 处理药品
 */
@Service(value = "DrugService")
@Transactional
public class DrugServiceImpl implements DrugService{
    private static final Logger log = LoggerFactory.getLogger(DrugServiceImpl.class);
    @Autowired
    private DrugDao drugDao;

    @Override
    public List<DrugRecord> getDrugInfoList() {
        List<DrugRecord> drugRecordList = new LinkedList<DrugRecord>();
        try {
            drugRecordList = drugDao.getDrugInfoList();
        }catch (Exception e){
            log.error("获取药品列表失败错误日志：{}",e);
        }
        return drugRecordList;
    }
}
