package com.dsos;

import com.alibaba.druid.support.json.JSONUtils;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.dsos.config.session.SessionCollections;
import com.dsos.modle.user.MemberInfo;
import org.apache.commons.lang.StringUtils;
import org.junit.Test;
import org.springframework.util.ResourceUtils;

import java.io.File;
import java.util.*;

public class test {

    @Test
    public void aaa() throws Exception {
        System.out.println(System.getProperty("user.dir") + File.separator + "src" + File.separator + "main" + File.separator + "resource"
                + File.separator + "images" + File.separator + "member" + File.separator);

        File path = new File(ResourceUtils.getURL("classpath:").getPath());
        String destFileName2 = new File(path.getAbsolutePath(), "images/member/").getAbsolutePath();
        System.out.println(destFileName2);

        String fileName = System.currentTimeMillis() + "TEST";
        String destFileName = System.getProperty("user.dir") + File.separator + "upload" + File.separator;
        File newFile = new File(destFileName);
        if (!newFile.exists()) {
            newFile.mkdirs();
        }
        //文件存储路径
    }

    @Test
    public void bbb() {
        Optional<String> optional1 = Optional.ofNullable(null);
        Optional<Integer> optional4 = Optional.ofNullable(1);
        System.out.println(optional1.isPresent());
        System.out.println(optional4.isPresent());
    }

    @Test
    public void ccc() {
        Boolean b = false;
        if (!b)
            System.out.println(1);
    }

    @Test
    public void ddd() {
        List<Integer> pList = new ArrayList<>();
        Set<Integer> pSet = new HashSet<>();
        for (int i = 0; i < 10; i++) {
            pList.add(i);
            pSet.add(i);
        }
        System.out.println(pList);
        System.out.println("============list->set,set->list==========");
        System.out.println(new HashSet<>(pList));
        System.out.println(new ArrayList<>(pSet));
        System.out.println("============foreach ==========");
        pList.forEach(item -> {
        });
        pSet.forEach(integer -> {
        });
    }

    @Test
    public void jjj() throws Exception {
        String t = null;
        System.out.println(t == null ? 1 : 2);
        //不为null并且不含空格返回true
        System.out.println(StringUtils.isBlank("1 1"));
        //为null或者含空格返回true
        System.out.println(StringUtils.isNotBlank("1 1"));
    }

    @Test
    public void eee() {
        //得到当前方法名
        String methodName = Thread.currentThread().getStackTrace()[1].getMethodName();
        String className = this.getClass().getName();
        System.out.println(methodName);
        System.out.println(className);
    }


    @Test
    public void fff() {
        SessionCollections inst1 = SessionCollections.getinstance();
        System.out.println(inst1);

        SessionCollections inst2 = SessionCollections.getinstance();
        System.out.println(inst2);

    }

    @Test
    public void ggg(){
        MemberInfo memberInfo = new MemberInfo();
        memberInfo.setCardNo("12412");
        memberInfo.setName("竹根其");
        Object object =JSONObject.toJSON(memberInfo);
        Map map = JSON.parseObject(JSONUtils.toJSONString(object));
        System.out.println(map);
    }
}
