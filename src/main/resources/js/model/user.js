/**
 * Created by Administrator on 2019/1/29.
 * 加载user 的 html 模块
 */
$(document).ready(function () {
    console.log("loading");
    $('#page1').load("../model/userHead.html #head", function (txt, st, xhr) {
        if (st == "success")
            console.log("head");
        if (st == "error")
            console.log("error:" + xhr.status + ":" + xhr.statusText)
    });
    $('#page2').load("../model/userLeft.html #left", function (txt, st, xhr) {
        if (st == "success")
            console.log("left");
        if (st == "error")
            console.log("error:" + xhr.status + ":" + xhr.statusText)
    });
    $('#page4').load("../model/userButtom.html #buttom", function (txt, st, xhr) {
        if (st == "success")
            console.log("buttom");
        if (st == "error")
            console.log("error:" + xhr.status + ":" + xhr.statusText)
    });
    //弹出模块必须在其他/js加载完之后再加载
    layui.use('element', function () {
        var element = layui.element;
        console.log("zdy element");
    });
});