package com.dsos.serviceImpl;

import com.dsos.dao.MemberDao;
import com.dsos.modle.user.MemberInfo;
import com.dsos.modle.user.MemberUser;
import com.dsos.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;
import java.util.Optional;

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
            MemberUser memberUser = memberDao.getInfoByCardNo(cardNo);
            MemberInfo memberInfo = memberUser.getMemberInfo();
            if (memberUser.getMemberInfo() != null)
                return memberInfo;
        } catch (Exception e) {
            log.error("{查询个人信息报错：{}}", e);
        }
        return null;
    }

    @Override
    public Boolean updateMemberInfo(MemberInfo memberInfo, String oldPassword, MemberUser memberUser) {
        try {
            Integer updateStatus = memberDao.updateMemberInfo(memberInfo, oldPassword, memberUser);
            if (updateStatus > 0)
                return true;
        } catch (Exception e) {
            log.error("会员资料修改impl报错：{}", e.getMessage());
        }
        return false;
    }
}
