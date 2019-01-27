package com.dsos.serviceImpl;

import com.dsos.dao.MainDao;
import com.dsos.modle.user.AdminUser;
import com.dsos.modle.user.ChainWorkUser;
import com.dsos.modle.user.MemberUser;
import com.dsos.service.MainService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by zgq7 on 2019/1/25.
 * 处理subject的登录、注册
 */
@Service(value = "MainService")
@Transactional
public class MainImpl implements MainService {
    private static final Logger log = LoggerFactory.getLogger(MainImpl.class);

    @Autowired
    private MainDao mainDao;

    @Override
    public MemberUser memberUserLog(String account, String password) {
        return mainDao.memberLogin(account,password);
    }

    @Override
    public AdminUser adminUserLog(String account, String password) {
        return null;
    }

    @Override
    public ChainWorkUser chainWkUserLog(String account, String password){
        return null;
    }
}
