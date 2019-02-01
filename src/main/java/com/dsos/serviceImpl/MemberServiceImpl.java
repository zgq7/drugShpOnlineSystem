package com.dsos.serviceImpl;

import com.dsos.dao.MemberDao;
import com.dsos.modle.user.MemberInfo;
import com.dsos.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * Created by zgq7 on 2019/1/28.
 * 会员 服务层 实现类
 */
@Service(value = "MemberService")
public class MemberServiceImpl implements MemberService {
    private static final Logger log = LoggerFactory.getLogger(DrugServiceImpl.class);
    @Autowired
    private MemberDao memberDao;

    @Override
    public MemberInfo getUerNmaeImgByCardNo(String cardNo) {
        MemberInfo memberInfo = new MemberInfo();
        try {
            memberInfo = memberDao.getUerNmaeImgByCardNo(cardNo);
        }catch (Exception e){
            log.error("获取会员logo以及卡号报错：{}",e);
        }
        return memberInfo;
    }

    @Override
    public Boolean registryMember(Map<String, String> params) {
        try {
            Boolean status = memberDao.registryMember(params.get("name"),params.get("cardNo"),params.get(""),params.get("name"),params.get("name"));
            if (!status)
            return false;
        }catch (Exception e){
            log.error("注册会员报:{}",e);
        }
        return true;
    }
}
