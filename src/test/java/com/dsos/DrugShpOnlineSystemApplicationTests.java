package com.dsos;

import com.dsos.dao.C2StDao;
import com.dsos.dao.DrugDao;
import com.dsos.dao.MemberDao;
import com.dsos.modle.user.ChainnerUser;
import com.dsos.modle.user.MemberUser;
import com.dsos.modle.view.ChainRecord;
import com.dsos.modle.view.DrugRecord;
import com.dsos.modle.view.StoreRecord;
import com.dsos.service.C2StService;
import com.dsos.service.ChainnerService;
import com.dsos.service.DrugService;
import com.dsos.service.MemberService;
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
    @Autowired
    private C2StDao c2StDao;
    @Autowired
    private C2StService c2StService;
    @Autowired
    private ChainnerService chainnerService;
    @Autowired
    private MemberService memberService;

    @Autowired

    @Test
    public void contextLoads() throws Exception {
    /*    MemberInfo memberInfo = memberDao.getInfo2ByCardNo("rsd123456");
        System.out.println(memberInfo.toString());
        System.out.println("1111");*/
        //MemberUser memberUser = memberDao.getInfoByCardNo("rsd123456");
        //System.out.println(memberUser.getMemberInfo());
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
        System.out.println(drugDao.deleteDrugByCode("101006", "1"));
        System.out.println(Optional.ofNullable(drugDao.deleteDrugByCode("101005", "1")).isPresent());
    }

    @Test
    public void gggg() throws Exception {
        List<DrugRecord> drugRecordList = drugDao.getDrugInfoList("1", "10", "101009", "2020-01-01", "1", "1");
        drugRecordList.forEach(item -> {
            System.out.println(item.toString());
        });

    }

    //添加药品测试
    @Test
    public void hhh() throws Exception {
        DrugRecord drugRecord = new DrugRecord();
        drugRecord.setChainId("4");
        drugRecord.setDrugName("消食片");
        drugRecord.setDrugKind("西药");
        drugRecord.setDrugCode("xs2016351");
        drugRecord.setBarCode("ts201362");
        drugRecord.setUnitPrice(19.9);
        drugRecord.setStorePrice(19.9);
        drugRecord.setCostPrice(19.9);
        drugRecord.setUnit("每盒/四片");
        drugRecord.setSpec("每片/四颗");
        drugRecord.setCompany("山西国邦医药");
        drugRecord.setPurchaseDate("2019-01-01");
        drugRecord.setProduceDate("2019-01-01");
        drugRecord.setEffectDate("2020-12-12");
        drugRecord.setApproval("69152145");
        /*Boolean b2 = drugDao.addDrugRecord("3", "消食片", "西药"
                , "xs2016351", "ts201362", "19.9"
                , "19.9", "9.9", "每盒/四片"
                , "每片/四颗", "山西国邦医药", "2019-01-01"
                , "2019-01-01", "2020-12-12", "69152145");
        System.out.println(b2);*/
        System.out.println(drugService.addDrugRecord(drugRecord));
    }

    @Test
    public void iii() throws Exception {
        Map<Object, Object> requestMap = new HashMap<>();
        requestMap.put("chainNo", null);
        requestMap.put("page", "1");
        requestMap.put("limit", "10");

       /* List<ChainRecord> chainRecords = c2StDao.getChainRecordById("xs1101", "1", "10");
        chainRecords.forEach(item -> {
            System.out.println(item.toString());
        });*/

        List<ChainRecord> chainRecordList = c2StService.getChainRecordByNo(requestMap);
        chainRecordList.forEach(item -> {
            System.out.println(item.toString());
        });
    }

    @Test
    public void jjj() throws Exception {
        List<StoreRecord> storeRecordList = c2StDao.getStoreRecordById("xs1101", "", "1", "10");
        storeRecordList.forEach(item -> {
            System.out.println(item.toString());
        });
    }

    @Test
    public void kkk() throws Exception {
        Map<Object, Object> map = new HashMap<>();
        map.put("chainId", "");
        map.put("code", "");
        map.put("mobile", "");
        map.put("account", "");
        map.put("page", "1");
        map.put("limit", "10");
        List<ChainnerUser> chainnerUserList = chainnerService.getChainnerByCondition(map);
        chainnerUserList.forEach(item -> {
            System.out.println(item.toString());
        });
    }

    @Test
    public void lll() throws Exception {
        //List<MemberUser> memberUserList = memberDao.getMemberByCondition("", "", "", "1", "10");
        Map<Object, Object> map = new HashMap<>();
        map.put("code", "");
        map.put("account", "");
        map.put("mobile", "");
        map.put("limit", 10);
        map.put("page", 1);
        List<MemberUser> memberUserList = memberService.getMemberByCondition(map);
        memberUserList.forEach(item -> {
            System.out.println(item.toString());
        });
    }

}

