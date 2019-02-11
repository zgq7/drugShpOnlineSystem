package com.dsos.modle.user;

import java.io.Serializable;
import java.util.Set;

/**
 * 会员主表，主要存放用户登录信息
 * **/
public class MemberUser implements Serializable{
    //会员标识
    private Integer cardId;
    //角色编号
    private String roleNo;
    //卡号，即会员登录账号
    private String cardNo;
    //登录密码
    private String password;
    //手机号
    private String mobile;
    //归属门店唯一标识
    private Integer storeId;
    //存放md5加密过后的password
    private String md5Password;
    //关注的门店类，得到门店编号
    private Set<Integer> concernedStores;
    //角色
    private Set<String> roles;
    //权限
    private Set<String> perms;

    public Integer getCardId() {
        return cardId;
    }

    public void setCardId(Integer cardId) {
        this.cardId = cardId;
    }

    public String getRoleNo() {
        return roleNo;
    }

    public void setRoleNo(String roleNo) {
        this.roleNo = roleNo;
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

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
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

    public Set<Integer> getConcernedStores() {
        return concernedStores;
    }

    public void setConcernedStores(Set<Integer> concernedStores) {
        this.concernedStores = concernedStores;
    }

    public Set<String> getRoles() {
        return roles;
    }

    public void setRoles(Set<String> roles) {
        this.roles = roles;
    }

    public Set<String> getPerms() {
        return perms;
    }

    public void setPerms(Set<String> perms) {
        this.perms = perms;
    }


    @Override
    public String toString() {
        return "MemberUser{" +
                "cardId=" + cardId +
                ", roleNo='" + roleNo + '\'' +
                ", cardNo='" + cardNo + '\'' +
                ", password='" + password + '\'' +
                ", mobile=" + mobile +
                ", storeId=" + storeId +
                ", md5Password='" + md5Password + '\'' +
                ", concernedStores=" + concernedStores +
                ", roles=" + roles +
                ", perms=" + perms +
                '}';
    }
}
