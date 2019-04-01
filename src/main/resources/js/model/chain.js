/**
 * Created by Administrator on 2019/1/29.
 * 加载admin 的 html 模块
 */
$(document).ready(function () {
    //头像、姓名
    $.ajax({
        url: "chainRoot",
        type: "post",
        contentType: 'application/json;charset=utf-8',
        dataType: "json",
        timeout: 1000,
        success: function (data) {
            console.log(data);
            document.getElementById('chainnerName').innerHTML = data.name;
            $("#chainnerImg").attr("src", data.imgRoot);
        },
        error: function (data, status) {
            console.log("ajax error : " + status);
        }
    });
    //个人资料
    $("a#info").click(function () {
        $('#body').load("../chain/info.html #infoModel", function (txt, st, xhr) {
            if (st == "success")
                console.log("info");
            if (st == "error")
                console.log("error:" + xhr.status + ":" + xhr.statusText);

        });
    });
    //个人设置
    $("a#config").click(function () {
        $('#body').load("../chain/config.html #configModel", function (txt, st, xhr) {
            if (st == "success")
                console.log("config");
            if (st == "error")
                console.log("error:" + xhr.status + ":" + xhr.statusText);

        });
    });
    //弹出模块必须在其他/js加载完之后再加载
    layui.use('element', function () {
        var element = layui.element;
        console.log("zdy element");
    });
});