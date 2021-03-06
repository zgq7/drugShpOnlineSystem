package com.dsos.modle.view;

/**
 * 存放药品信息
 */
public class DrugRecord {
    //药品标识
    private Integer drugId;
    //归属连锁
    private String chainId;
    //归属门店
    private String code;
    //药品名称
    private String drugName;
    //药品图样地址
    private String drugData;
    //药品种类--中药/西药
    private String drugKind;
    //药品编码
    private String drugCode;
    //药品内码
    private String barCode;
    //药品单价--连锁
    private double unitPrice;
    //药品单价--门店 --默认连锁
    private double storePrice;
    //药品进价
    private double costPrice;
    //单位
    private String unit;
    //规格
    private String spec;
    //剩余数量
    private Integer count;
    //进货厂商
    private String company;
    //进货日期
    private String purchaseDate;
    //生产日期
    private String produceDate;
    //保质日期
    private String effectDate;
    //国产准字
    private String approval;
    //使用说明书
    private String explaination;
    //是否允许售卖
    private String isAllowedTrade;

    public Integer getDrugId() {
        return drugId;
    }

    public void setDrugId(Integer drugId) {
        this.drugId = drugId;
    }

    public String getChainId() {
        return chainId;
    }

    public void setChainId(String chainId) {
        this.chainId = chainId;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getDrugName() {
        return drugName;
    }

    public void setDrugName(String drugName) {
        this.drugName = drugName;
    }

    public String getDrugData() {
        return drugData;
    }

    public void setDrugData(String drugData) {
        this.drugData = drugData;
    }

    public String getDrugKind() {
        return drugKind;
    }

    public void setDrugKind(String drugKind) {
        this.drugKind = drugKind;
    }

    public String getDrugCode() {
        return drugCode;
    }

    public void setDrugCode(String drugCode) {
        this.drugCode = drugCode;
    }

    public String getBarCode() {
        return barCode;
    }

    public void setBarCode(String barCode) {
        this.barCode = barCode;
    }

    public double getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(double unitPrice) {
        this.unitPrice = unitPrice;
    }

    public double getStorePrice() {
        return storePrice;
    }

    public void setStorePrice(double storePrice) {
        this.storePrice = storePrice;
    }

    public double getCostPrice() {
        return costPrice;
    }

    public void setCostPrice(double costPrice) {
        this.costPrice = costPrice;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public String getSpec() {
        return spec;
    }

    public void setSpec(String spec) {
        this.spec = spec;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getPurchaseDate() {
        return purchaseDate;
    }

    public void setPurchaseDate(String purchaseDate) {
        this.purchaseDate = purchaseDate;
    }

    public String getProduceDate() {
        return produceDate;
    }

    public void setProduceDate(String produceDate) {
        this.produceDate = produceDate;
    }

    public String getEffectDate() {
        return effectDate;
    }

    public void setEffectDate(String effectDate) {
        this.effectDate = effectDate;
    }

    public String getApproval() {
        return approval;
    }

    public void setApproval(String approval) {
        this.approval = approval;
    }

    public String getExplaination() {
        return explaination;
    }

    public void setExplaination(String explaination) {
        this.explaination = explaination;
    }

    public String getIsAllowedTrade() {
        return isAllowedTrade;
    }

    public void setIsAllowedTrade(String isAllowedTrade) {
        this.isAllowedTrade = isAllowedTrade;
    }

    @Override
    public String toString() {
        return "DrugRecord{" +
                "drugId=" + drugId +
                ", chainId='" + chainId + '\'' +
                ", code='" + code + '\'' +
                ", drugName='" + drugName + '\'' +
                ", drugData='" + drugData + '\'' +
                ", drugKind='" + drugKind + '\'' +
                ", drugCode='" + drugCode + '\'' +
                ", barCode='" + barCode + '\'' +
                ", unitPrice=" + unitPrice +
                ", storePrice=" + storePrice +
                ", costPrice=" + costPrice +
                ", unit='" + unit + '\'' +
                ", spec='" + spec + '\'' +
                ", count=" + count +
                ", company='" + company + '\'' +
                ", purchaseDate='" + purchaseDate + '\'' +
                ", produceDate='" + produceDate + '\'' +
                ", effectDate='" + effectDate + '\'' +
                ", approval='" + approval + '\'' +
                ", explaination='" + explaination + '\'' +
                ", isAllowedTrade='" + isAllowedTrade + '\'' +
                '}';
    }
}

