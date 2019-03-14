package com.dsos.serviceImpl;

import com.dsos.dao.C2StDao;
import com.dsos.modle.view.ChainRecord;
import com.dsos.service.C2StService;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;
import java.util.Optional;

/**
 * Created by zgq7 on 2019/3/14.
 * 连锁 实现层
 */
@Service(value = "C2StService")
@Transactional
public class C2StServiceImpl implements C2StService {
    private static final Logger log = LoggerFactory.getLogger(C2StServiceImpl.class);
    @Autowired
    private C2StDao c2StDao;

    @Override
    public List<ChainRecord> getChainRecordByNo(Map<Object, Object> request) {
        String chainNo = String.valueOf(request.get("chainNo"));
        String page = String.valueOf(request.get("page"));
        String limit = String.valueOf(request.get("limit"));
        log.info("c2st.getchainList impl {},{},{}", chainNo, page, limit);
        try {
            List<ChainRecord> chainRecordList = c2StDao.getChainRecordById(chainNo, page, limit);
            //先检查是否为空
            if (Optional.ofNullable(chainRecordList).isPresent())
                return chainRecordList;
        } catch (Exception e) {
            log.error("get chainRecor error : {}", e.getMessage());
        }
        log.info("未查询到对应连锁信息");
        return null;
    }
}
