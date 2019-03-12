package com.dsos;

import com.dsos.dao.DrugDao;
import com.dsos.dao.MemberDao;
import com.dsos.modle.user.MemberInfo;
import com.dsos.modle.user.MemberUser;
import com.dsos.modle.view.DrugRecord;
import com.dsos.service.DrugService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DrugShpOnlineSystemApplicationTests {
    @Autowired
    private MemberDao memberDao;
    @Autowired
    private DrugDao drugDao;
    @Autowired
    private DrugService drugService;

    @Test
    public void contextLoads() throws Exception {
    /*    MemberInfo memberInfo = memberDao.getInfo2ByCardNo("rsd123456");
        System.out.println(memberInfo.toString());
        System.out.println("1111");*/
        MemberUser memberUser = memberDao.getInfoByCardNo("rsd123456");
        System.out.println(memberUser.getMemberInfo());
    }

    @Test
    public void eee() throws Exception {
        List<DrugRecord> drugRecords = drugDao.getDrugInfoList("1", "100", "", "", "", "0");
        /*Map<Object, Object> request = new HashMap<>();
        request.put("drugCode", "");
        request.put("chainId", "");
        request.put("updown", "0");
        request.put("limit", "10");
        request.put("page", "1");
        request.put("effectDate", "");
        drugService.getDrugInfoList(request).forEach(item -> {
            System.out.println(item);
        });*/
    }

    @Test
    public void fff() throws Exception {
        System.out.println(drugDao.deleteDrugByCode("101002", "1"));
        System.out.println(Optional.ofNullable(drugDao.deleteDrugByCode("101002", "1")).isPresent());
    }

}

