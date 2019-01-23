package com.dsos.modle.view;

/**
 * Created by zgq7 on 2019/1/22.
 * 明细实体
 */
public class DetailRecord {
    //唯一标识
    private String id;
    //明细编号
    private String detailId;
    //订单
    private String orderNo;
    //行号
    private Integer itemNo;
    //卡号
    private String cardNo;
    //商品主键
    private String drugId;
    //商品名称
    private String name;
    //消费时间
    private String buyDate;
    //明细应付金额
    private Double originMoney;
    //实付金额
    private Double payMoney;
    //零售单价
    private Double unitPrice;
    //进价单价
    private Double costPrice;
    //明细说明
    private String explaination;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDetailId() {
        return detailId;
    }

    public void setDetailId(String detailId) {
        this.detailId = detailId;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    public Integer getItemNo() {
        return itemNo;
    }

    public void setItemNo(Integer itemNo) {
        this.itemNo = itemNo;
    }

    public String getCardNo() {
        return cardNo;
    }

    public void setCardNo(String cardNo) {
        this.cardNo = cardNo;
    }

    public String getDrugId() {
        return drugId;
    }

    public void setDrugId(String drugId) {
        this.drugId = drugId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBuyDate() {
        return buyDate;
    }

    public void setBuyDate(String buyDate) {
        this.buyDate = buyDate;
    }

    public Double getOriginMoney() {
        return originMoney;
    }

    public void setOriginMoney(Double originMoney) {
        this.originMoney = originMoney;
    }

    public Double getPayMoney() {
        return payMoney;
    }

    public void setPayMoney(Double payMoney) {
        this.payMoney = payMoney;
    }

    public Double getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(Double unitPrice) {
        this.unitPrice = unitPrice;
    }

    public Double getCostPrice() {
        return costPrice;
    }

    public void setCostPrice(Double costPrice) {
        this.costPrice = costPrice;
    }

    public String getExplaination() {
        return explaination;
    }

    public void setExplaination(String explaination) {
        this.explaination = explaination;
    }
}
