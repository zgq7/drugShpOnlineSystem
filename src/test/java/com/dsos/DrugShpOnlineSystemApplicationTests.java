package com.dsos;

import com.dsos.dao.MemberDao;
import com.dsos.modle.user.MemberInfo;
import com.dsos.modle.user.MemberUser;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DrugShpOnlineSystemApplicationTests {
    @Autowired
    private MemberDao memberDao;

    @Test
    public void contextLoads() throws Exception {
    /*    MemberInfo memberInfo = memberDao.getInfo2ByCardNo("rsd123456");
        System.out.println(memberInfo.toString());
        System.out.println("1111");*/
        MemberUser memberUser = memberDao.getInfoByCardNo("rsd123456");
        System.out.println(memberUser);
    }

}

