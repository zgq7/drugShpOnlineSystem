package com.dsos.bean;

/**
 * 会员主表，主要存放用户登录信息
 * **/
public class member {
    //会员标识
    private Integer cardId;
    //卡号，即会员登录账号
    private String cardNo;
    //登录密码
    private String password;
    //手机号
    private Integer mobile;
    //归属门店唯一标识
    private Integer storeId;
    //存放md5加密过后的password
    private String md5Password;
    //门店类
    //md5

    public Integer getCardId() {
        return cardId;
    }

    public void setCardId(Integer cardId) {
        this.cardId = cardId;
    }

    public String getCardNo() {
        return cardNo;
    }

    public void setCardNo(String cardNo) {
        this.cardNo = cardNo;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getMobile() {
        return mobile;
    }

    public void setMobile(Integer mobile) {
        this.mobile = mobile;
    }

    public Integer getStoreId() {
        return storeId;
    }

    public void setStoreId(Integer storeId) {
        this.storeId = storeId;
    }

    public String getMd5Password() {
        return md5Password;
    }

    public void setMd5Password(String md5Password) {
        this.md5Password = md5Password;
    }

    @Override
    public String toString() {
        return "[卡号："+cardNo+"归属门店"+"]";
    }
}
