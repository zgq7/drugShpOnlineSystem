package com.dsos.modle.view;

/**
 * Created by zgq7 on 2019/1/22.
 * 用户购物车
 */
public class PurchaseBus {
    //唯一标识
    private Integer id;
    //购物车号（一名用户只有一辆购物车）
    private String busNo;
    //序号
    private Integer items;
    //商品名称
    private String name;
    //当前价格
    private double retailPrice;
}
