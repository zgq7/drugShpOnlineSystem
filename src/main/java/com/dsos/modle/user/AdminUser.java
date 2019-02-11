package com.dsos.modle.user;

import java.io.Serializable;
import java.util.Set;

/**
 * 存放超级管理员相关信息
 */
public class AdminUser implements Serializable{
    //管理员标识
    private Integer adminId;
    //管理员姓名
    private String name;
    //性别
    private String sex;
    //账号
    private String adminAccount;
    //密码
    private String password;
    //手机号
    private Long mobile;
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
    //角色
    private Set<String> roles;
    //权限
    private Set<String> perms;

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

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAdminAccount() {
        return adminAccount;
    }

    public void setAdminAccount(String adminAccount) {
        this.adminAccount = adminAccount;
    }

    public String getMd5Password() {
        return md5Password;
    }

    public void setMd5Password(String md5Password) {
        this.md5Password = md5Password;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Long getMobile() {
        return mobile;
    }

    public void setMobile(Long mobile) {
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

}
