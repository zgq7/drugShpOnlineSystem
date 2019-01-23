package com.dsos.modle.view;

/**
 * Created by zgq7 on 2019/1/22.
 * 订单实体
 */
public class SaleRecord {
    //订单唯一标识
    private String id;
    //订单号
    private String orderNo;
    //所属卡号
    private String cardNo;
    //消费日期（精确到时分秒）
    private String buyDate;
    //应付
    private double originMoney;
    //实付
    private double payMoney;
    //促单店员编号
    private String storeUserNo;
    //支付方式
    private String payWay;
    //订单类型
    private String saleType;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    public String getCardNo() {
        return cardNo;
    }

    public void setCardNo(String cardNo) {
        this.cardNo = cardNo;
    }

    public String getBuyDate() {
        return buyDate;
    }

    public void setBuyDate(String buyDate) {
        this.buyDate = buyDate;
    }

    public double getOriginMoney() {
        return originMoney;
    }

    public void setOriginMoney(double originMoney) {
        this.originMoney = originMoney;
    }

    public double getPayMoney() {
        return payMoney;
    }

    public void setPayMoney(double payMoney) {
        this.payMoney = payMoney;
    }

    public String getStoreUserNo() {
        return storeUserNo;
    }

    public void setStoreUserNo(String storeUserNo) {
        this.storeUserNo = storeUserNo;
    }

    public String getPayWay() {
        return payWay;
    }

    public void setPayWay(String payWay) {
        this.payWay = payWay;
    }

    public String getSaleType() {
        return saleType;
    }

    public void setSaleType(String saleType) {
        this.saleType = saleType;
    }
}
