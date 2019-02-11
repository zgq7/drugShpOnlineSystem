package com.dsos.serviceImpl;

import com.dsos.dao.AdminDao;
import com.dsos.dao.ChainDao;
import com.dsos.modle.user.AdminUser;
import com.dsos.modle.user.ChainWorkUser;
import com.dsos.service.AdminService;
import com.dsos.service.ChainService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by zgq7 on 2019/2/3 0003.
 * chain 服务处 实现类
 */
@Service(value = "ChainService")
@Transactional
public class ChainServiceImpl implements ChainService {
    private static final Logger log = LoggerFactory.getLogger(ChainServiceImpl.class);
    @Autowired
    private ChainDao chainDao;

    @Override
    public ChainWorkUser getUerNmaeImgByCardNo(String account) {
        try {
            ChainWorkUser chainWorkUser = chainDao.getUerNmaeImgByCardNo(account);
            if (chainWorkUser != null)
                return chainWorkUser;
        } catch (Exception e) {
            log.error("impl error: {} ", e);
        }
        return null;
    }
}
