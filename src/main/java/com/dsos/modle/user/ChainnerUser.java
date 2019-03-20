package com.dsos.modle.user;

import java.io.Serializable;
import java.util.Set;

/**
 * Created by zgq7 on 2019/1/22.
 * 连锁工作人员，以level区别总负责人、店长、普通员工等；
 */
public class ChainnerUser implements Serializable {
    //连锁工作人员标识
    private Integer chainId;
    //所属门店
    private Integer linkedStore;
    //管理员姓名
    private String name;
    //性别
    private String sex;
    //账号，即员工编号
    private String chainAccount;
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
    //店员级别
    private Integer level;
    //店员职称
    private String lectruer;
    //角色
    private Set<String> roles;
    //权限
    private Set<String> perms;

    public Integer getChainId() {
        return chainId;
    }

    public void setChainId(Integer chainId) {
        this.chainId = chainId;
    }

    public Integer getLinkedStore() {
        return linkedStore;
    }

    public void setLinkedStore(Integer linkedStore) {
        this.linkedStore = linkedStore;
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

    public String getChainAccount() {
        return chainAccount;
    }

    public void setChainAccount(String chainAccount) {
        this.chainAccount = chainAccount;
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

    public Set<String> getRoles() {
        return roles;
    }

    public void setRoles(Set<String> roles) {
        this.roles = roles;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public String getLectruer() {
        return lectruer;
    }

    public void setLectruer(String lectruer) {
        this.lectruer = lectruer;
    }

    public Set<String> getPerms() {
        return perms;
    }

    public void setPerms(Set<String> perms) {
        this.perms = perms;
    }

    @Override
    public String toString() {
        return "ChainnerUser{" +
                "chainId=" + chainId +
                ", linkedStore=" + linkedStore +
                ", name='" + name + '\'' +
                ", sex='" + sex + '\'' +
                ", chainAccount='" + chainAccount + '\'' +
                ", password='" + password + '\'' +
                ", mobile=" + mobile +
                ", idCard='" + idCard + '\'' +
                ", homeAt='" + homeAt + '\'' +
                ", birthday='" + birthday + '\'' +
                ", imgRoot='" + imgRoot + '\'' +
                ", md5Password='" + md5Password + '\'' +
                ", level=" + level +
                ", lectruer='" + lectruer + '\'' +
                ", roles=" + roles +
                ", perms=" + perms +
                '}';
    }
}
