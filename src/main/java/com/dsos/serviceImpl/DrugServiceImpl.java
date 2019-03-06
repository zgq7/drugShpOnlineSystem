package com.dsos.serviceImpl;

import com.dsos.dao.DrugDao;
import com.dsos.modle.view.DrugRecord;
import com.dsos.service.DrugService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

/**
 * Created by zgq7 on 2019/1/27 0027.
 * 处理药品
 */
@Service(value = "DrugService")
@Transactional
public class DrugServiceImpl implements DrugService {
    private static final Logger log = LoggerFactory.getLogger(DrugServiceImpl.class);
    @Autowired
    private DrugDao drugDao;

    @Override
    public List<DrugRecord> getDrugInfoList(Map<Object, Object> requestMap) {
        List<DrugRecord> drugRecordList = new LinkedList<>();
        String page = (String) requestMap.get("page");
        String limit = (String) requestMap.get("limit");
        String drugCode = (String) requestMap.get("drugCode");
        String effectDate = (String) requestMap.get("effectDate");
        String chainId = (String) requestMap.get("chainId");
        String updown = (String) requestMap.get("updown");
        log.info("impl updown : {}", updown);
        try {
            drugRecordList = drugDao.getDrugInfoList(page, limit, drugCode, effectDate, chainId, updown);
        } catch (Exception e) {
            log.error("get drug list error ：{}", e.getMessage());
        }
        return drugRecordList;
    }

    @Override
    public Integer getCountOfCondition(Map<Object, Object> requestMap) {
        String drugCode = (String) requestMap.get("drugCode");
        String effectDate = (String) requestMap.get("effectDate");
        String chainId = (String) requestMap.get("chainId");
        String updown = (String) requestMap.get("updown");
        try {
            Integer count = drugDao.getCountOfCondition(drugCode, effectDate, chainId, updown);
            if (Optional.ofNullable(count).isPresent())
                return count;
        } catch (Exception e) {
            log.error("impl get count error :{}", e.getMessage());
        }
        return 0;
    }

    @Override
    public Boolean updateDrugDownLoad(Map<Object, Object> requestMap) {
        String drugCode = (String) requestMap.get("drugCode");
        String updown = (String) requestMap.get("updown");
        try {
            return drugDao.updateDrugDownLoad(drugCode, updown);
        } catch (Exception e) {
            log.error("impl set drug updown error :{}", e.getMessage());
            return false;
        }
    }

    @Override
    public Boolean deleteDrugByCode(String drugCode) {
        try {
            /*if (Optional.ofNullable(drugDao.deleteDrugByCode(drugCode)).isPresent())
                return true;*/
            return drugDao.deleteDrugByCode(drugCode);
        } catch (Exception e) {
            log.error("delete drug impl error :{} ", e.getMessage());
            return false;
        }
    }
}
