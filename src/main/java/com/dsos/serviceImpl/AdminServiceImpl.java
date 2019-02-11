package com.dsos.serviceImpl;

import com.dsos.dao.AdminDao;
import com.dsos.modle.user.AdminUser;
import com.dsos.service.AdminService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by zgq7 on 2019/2/3 0003.
 * admin 服务处 实现类
 */
@Service(value = "AdminService")
@Transactional
public class AdminServiceImpl implements AdminService {
    private static final Logger log = LoggerFactory.getLogger(AdminServiceImpl.class);
    @Autowired
    private AdminDao adminDao;

    @Override
    public AdminUser getUerNmaeImgByCardNo(String account) {
        try {
            AdminUser adminUser = adminDao.getUerNmaeImgByCardNo(account);
            if (adminUser != null)
                return adminUser;
        } catch (Exception e) {
            log.error("impl error: {} ", e);
        }
        return null;
    }
}
