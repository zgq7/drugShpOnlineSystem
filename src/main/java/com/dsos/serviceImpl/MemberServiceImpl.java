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
    public MemberInfo getUerNameImgByCardNo(String cardNo) {
        MemberInfo memberInfo = new MemberInfo();
        try {
            memberInfo = memberDao.getUerNameImgByCardNo(cardNo);
        } catch (Exception e) {
            log.error("获取会员logo以及卡号报错：{}", e);
        }
        return memberInfo;
    }

    @Override
    public String registryMember(Map<String, String> params) {
        try {
            String status = memberDao.registryMember(params.get("name"), params.get("password"), params.get("mobile"), params.get("sex"));
            log.info("注册返回的信息:{}", status);
            if (!status.equals("000"))
                return status;
        } catch (Exception e) {
            log.error("注册会员报错:{}", e);
        }
        return null;
    }

    @Override
    public MemberInfo getInfoByCardNo(String cardNo) {
        try {
            MemberInfo memberInfo = memberDao.getInfoByCardNo(cardNo);
            if (memberInfo != null)
                return memberInfo;
        } catch (Exception e) {
            log.error("{查询个人信息报错：{}}", e);
        }
        return null;
    }
}
