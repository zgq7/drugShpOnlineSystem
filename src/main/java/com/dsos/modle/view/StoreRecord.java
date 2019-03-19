package com.dsos.modle.view;

/**
 * 用于存放门店所有信息
 */
public class StoreRecord {
    //门店标识
    private Integer storeId;
    //所属连锁标识
    private Integer linkedId;
    //门店负责人编号
    private String shopHolder;
    //门店编号
    private String code;
    //门店名
    private String name;
    //门店地址
    private String address;
    //门店热线
    private String telephone;
    //经营许可证号
    private String businessNo;
    //连锁信息

    public Integer getStoreId() {
        return storeId;
    }

    public void setStoreId(Integer storeId) {
        this.storeId = storeId;
    }

    public Integer getLinkedId() {
        return linkedId;
    }

    public void setLinkedId(Integer linkedId) {
        this.linkedId = linkedId;
    }

    public String getShopHolder() {
        return shopHolder;
    }

    public void setShopHolder(String shopHolder) {
        this.shopHolder = shopHolder;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getBusinessNo() {
        return businessNo;
    }

    public void setBusinessNo(String businessNo) {
        this.businessNo = businessNo;
    }

    @Override
    public String toString() {
        return "StoreRecord{" +
                "storeId=" + storeId +
                ", linkedId=" + linkedId +
                ", shopHolder='" + shopHolder + '\'' +
                ", code='" + code + '\'' +
                ", name='" + name + '\'' +
                ", address='" + address + '\'' +
                ", telephone='" + telephone + '\'' +
                ", businessNo='" + businessNo + '\'' +
                '}';
    }
}
