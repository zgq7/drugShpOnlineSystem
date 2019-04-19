package com.dsos.serviceImpl;

import com.dsos.dao.MemberDao;
import com.dsos.modle.user.MemberInfo;
import com.dsos.modle.user.MemberUser;
import com.dsos.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * Created by zgq7 on 2019/1/28.
 * 会员 服务层 实现类
 */
@Service(value = "MemberService")
@Transactional
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
    public MemberUser getInfoByCardNo(String cardNo) {
        try {
            MemberUser memberUser = memberDao.getInfoByCardNo(cardNo);
            if (memberUser.getMemberInfo() != null)
                return memberUser;
        } catch (Exception e) {
            log.error("{查询个人信息报错：{}}", e);
        }
        return null;
    }

    @Override
    public MemberInfo getInfo2ByCardNo(String cardNo) {
        try {
            if (Optional.ofNullable(memberDao.getInfo2ByCardNo(cardNo)).isPresent())
                return memberDao.getInfo2ByCardNo(cardNo);
        } catch (Exception e) {
            log.error("{查询个人信息info报错：{}}", e);
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

    @Override
    public List<MemberUser> getMemberByCondition(Map<Object, Object> request) {
        String code = String.valueOf(request.get("code"));
        String mobile = String.valueOf(request.get("mobile"));
        String account = String.valueOf(request.get("account"));
        String page = String.valueOf(request.get("page"));
        String limit = String.valueOf(request.get("limit"));
        try {
            List<MemberUser> memberUserList = memberDao.getMemberByCondition(code, account, mobile, page, limit);
            if (Optional.ofNullable(memberUserList).isPresent()) {
                //将memberInfo 由obejct转换为list
                memberUserList.stream().map(MemberUser::getMemberInfo).collect(Collectors.toList());
                return memberUserList;
            }
        } catch (Exception e) {
            //通用impl 与层日志报错
            log.error("{}.{} occured an error : {}", this.getClass().getSimpleName(), Thread.currentThread().getStackTrace()[1].getMethodName(), e.getMessage());
        }
        return null;
    }

    @Override
    public Integer getCountByCondition(Map<Object, Object> request) {
        String code = String.valueOf(request.get("code"));
        String mobile = String.valueOf(request.get("mobile"));
        String account = String.valueOf(request.get("account"));
        try {
            return memberDao.getCountByCondition(code, mobile, account);
        } catch (Exception e) {
            log.error("{}.{} occured an error : {}", this.getClass().getSimpleName(), Thread.currentThread().getStackTrace()[1].getMethodName(), e.getMessage());
        }
        return null;
    }

    /**
     * 会员购买药品service
     *
     * @param requestMap 所需信息，必须含有：
     *                   连锁编号 chianId
     *                   门店编号 code
     *                   药品编号 drugCode
     *                   会员卡号 account
     *                   购买数量 buyCount
     **/
    @Override
    public Boolean purchaseDrug(Map<Object, Object> requestMap) {
        //若参数值含有空值或者null值，则返回false
        if (requestMap.containsValue("") || requestMap.containsValue(null)) {
            log.info("购买药品时参数出现空值");
            return false;
        }
        return false;
    }
}
