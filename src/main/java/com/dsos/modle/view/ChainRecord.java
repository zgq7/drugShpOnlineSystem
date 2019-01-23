package com.dsos.modle.view;

/**
 * Created by zgq7 on 2019/1/20 0020.
 * 用户保存连锁信息
 */
public class ChainRecord {
    //连锁唯一标识
    private Integer chainId;
    //连锁编号
    private String chainNo;
    //连锁名称
    private String chainNaem;
    //连锁地址
    private String address;
    //经营许可证号
    private String businessNo;
    //连锁负责人名称
    private String hodler;
    //连锁负责人工作编号
    private String workNum;
    //连锁热线
    private String telephone;
    //连锁图片标志地址
    private String logoRoot;

    public Integer getChainId() {
        return chainId;
    }

    public void setChainId(Integer chainId) {
        this.chainId = chainId;
    }

    public String getChainNo() {
        return chainNo;
    }

    public void setChainNo(String chainNo) {
        this.chainNo = chainNo;
    }

    public String getChainNaem() {
        return chainNaem;
    }

    public void setChainNaem(String chainNaem) {
        this.chainNaem = chainNaem;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getBusinessNo() {
        return businessNo;
    }

    public void setBusinessNo(String businessNo) {
        this.businessNo = businessNo;
    }

    public String getHodler() {
        return hodler;
    }

    public void setHodler(String hodler) {
        this.hodler = hodler;
    }

    public String getWorkNum() {
        return workNum;
    }

    public void setWorkNum(String workNum) {
        this.workNum = workNum;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getLogoRoot() {
        return logoRoot;
    }

    public void setLogoRoot(String logoRoot) {
        this.logoRoot = logoRoot;
    }
}
