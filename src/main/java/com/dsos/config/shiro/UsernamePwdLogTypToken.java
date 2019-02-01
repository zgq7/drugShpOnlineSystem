package com.dsos.config.shiro;

import org.apache.shiro.authc.UsernamePasswordToken;

/**
 * Created by zgq7 on 2019/1/30.
 * 自定义token，重写父类的 UsernamePasswordToken9)构造器
 */
public class UsernamePwdLogTypToken extends UsernamePasswordToken{
    private String loginType;

    public UsernamePwdLogTypToken(String username, String password, String loginType) {
        super(username, password);
        this.loginType = loginType;
    }

    public String getLoginType() {
        return loginType;
    }

    public void setLoginType(String loginType) {
        this.loginType = loginType;
    }
}
