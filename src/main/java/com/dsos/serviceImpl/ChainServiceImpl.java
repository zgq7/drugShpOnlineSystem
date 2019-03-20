package com.dsos.serviceImpl;

import com.dsos.dao.ChainDao;
import com.dsos.modle.user.ChainnerUser;
import com.dsos.service.ChainnerService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;
import java.util.Optional;

/**
 * Created by zgq7 on 2019/2/3 0003.
 * chain 服务处 实现类
 */
@Service(value = "ChainUserService")
@Transactional
public class ChainServiceImpl implements ChainnerService {
    private static final Logger log = LoggerFactory.getLogger(ChainServiceImpl.class);
    @Autowired
    private ChainDao chainDao;

    @Override
    public ChainnerUser getUerNmaeImgByCardNo(String account) {
        try {
            ChainnerUser chainWorkUser = chainDao.getUerNmaeImgByCardNo(account);
            if (chainWorkUser != null)
                return chainWorkUser;
        } catch (Exception e) {
            log.error("impl error: {} ", e);
        }
        return null;
    }

    @Override
    public List<ChainnerUser> getChainnerByCondition(Map<Object, Object> request) {
        String account = String.valueOf(request.get("account"));
        String chainId = String.valueOf(request.get("chainId"));
        String code = String.valueOf(request.get("code"));
        String mobile = String.valueOf(request.get("mobile"));
        String page = String.valueOf(request.get("page"));
        String limit = String.valueOf(request.get("limit"));
        try {
            List<ChainnerUser> chainnerUserList = chainDao.getChainnerByCondition(chainId, code, account, mobile, page, limit);
            if (Optional.ofNullable(chainnerUserList).isPresent())
                return chainnerUserList;
        } catch (Exception e) {
            log.error("{} of {} occured an error : {}", Thread.currentThread().getStackTrace()[1].getMethodName(), this.getClass().getSimpleName(), e.getMessage());
        }
        return null;
    }
}
