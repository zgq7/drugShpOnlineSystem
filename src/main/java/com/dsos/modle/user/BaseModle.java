package com.dsos.modle.user;

import org.apache.shiro.crypto.hash.Md5Hash;

import java.util.Set;

/**
 * Created by zgq7 on 2019/1/22.
 * subject 的原体
 */
public abstract class BaseModle {
    //唯一标识
    private Integer id;
    //登录名
    private String loginAccount;
    //登录密码
    private String loginPassword;
    //存放md5加密过后的password
    private String md5Password;
    //角色
    private Set<String> roles;
    //权限
    private Set<String> perms;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLoginAccount() {
        return loginAccount;
    }

    public void setLoginAccount(String loginAccount) {
        this.loginAccount = loginAccount;
    }

    public String getLoginPassword() {
        return loginPassword;
    }

    public void setLoginPassword(String loginPassword) {
        this.loginPassword = loginPassword;
    }

    public String getMd5Password() {
        return md5Password;
    }

    //重写
    public void setMd5Password(String md5Password) {
        if(md5Password.isEmpty()){
            this.md5Password= String.valueOf(new Md5Hash(loginPassword));
        }
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
}
