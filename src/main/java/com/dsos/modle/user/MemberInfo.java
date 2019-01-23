package com.dsos.modle.user;

/**
 * 会员信息表
 */
public class MemberInfo {
    //信息标识
    private Integer infoId;
    //所属卡号
    private String cardNo;
    //会员姓名
    private String mame;
    //性别
    private String sex;
    //生日
    private String birthday;
    //收货地址
    private String address;
    //积分
    private double intergration;
    //余额
    private double amount;
    //折扣
    private double discount;
    //头像存放文件夹地址
    private String imgRoot;
    //邮箱
    private String email;
    //会员等级
    private Integer leavel;
    //会员状态，默认0
    private Integer statu;

    public Integer getInfoId() {
        return infoId;
    }

    public void setInfoId(Integer infoId) {
        this.infoId = infoId;
    }

    public String getCardNo() {
        return cardNo;
    }

    public void setCardNo(String cardNo) {
        this.cardNo = cardNo;
    }

    public String getMame() {
        return mame;
    }

    public void setMame(String mame) {
        this.mame = mame;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public double getIntergration() {
        return intergration;
    }

    public void setIntergration(double intergration) {
        this.intergration = intergration;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public String getImgRoot() {
        return imgRoot;
    }

    public void setImgRoot(String imgRoot) {
        this.imgRoot = imgRoot;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getLeavel() {
        return leavel;
    }

    public void setLeavel(Integer leavel) {
        this.leavel = leavel;
    }

    public Integer getStatu() {
        return statu;
    }

    public void setStatu(Integer statu) {
        this.statu = statu;
    }

}
