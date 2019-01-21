package com.dsos.bean;

/**
 * 存放超级管理员相关信息
 */
public class adminUser {
    //管理员标识
    private Integer adminId;
    //管理员姓名
    private String name;
    //账号
    private String userAccount;
    //密码
    private String password;
    //手机号
    private Integer mobile;
    //身份证号
    private String idCard;
    //家庭地址
    private String homeAt;
    //生日
    private String birthday;
    //头像存放地址
    private String imgRoot;
    //存放md5加密过的密码
    private String md5Password;

    public Integer getAdminId() {
        return adminId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUserAccount() {
        return userAccount;
    }

    public void setUserAccount(String userAccount) {
        this.userAccount = userAccount;
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

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public String getHomeAt() {
        return homeAt;
    }

    public void setHomeAt(String homeAt) {
        this.homeAt = homeAt;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getImgRoot() {
        return imgRoot;
    }

    public void setImgRoot(String imgRoot) {
        this.imgRoot = imgRoot;
    }

    public String getMd5Password() {
        return md5Password;
    }

    public void setMd5Password(String md5Password) {
        this.md5Password = md5Password;
    }

    @Override
    public String toString() {
        return "adminUser{" +
                ", 姓名='" + name + '\'' +
                ", 账号='" + userAccount + '\'' +
                '}';
    }
}
