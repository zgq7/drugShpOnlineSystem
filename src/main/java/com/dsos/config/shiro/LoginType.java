package com.dsos.config.shiro;

/**
 * Created by zgq7 on 2019/1/30.
 * 判断member、chain、admin的登录类型
 * 每个角色对应一个realm
 */
public enum LoginType {
    MEMBER("Member"), ADMIN("Admin"), CHAIN("Chain");

    private String loginType;

    LoginType(String loginType) {
        this.loginType = loginType;
    }

    public String getLoginType() {
        return loginType;
    }

    public void setLoginType(String loginType) {
        this.loginType = loginType;
    }

    @Override
    public String toString() {
        return "LoginType{" +
                "loginType='" + loginType + '\'' +
                '}';
    }
}
