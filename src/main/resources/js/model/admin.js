/**
 * Created by Administrator on 2019/1/29.
 * 加载admin 的 html 模块
 */
$(document).ready(function () {
    let param = {};
    let account= $("#myAccount").text();
    //console.log(param);
    param.account = account;
    $.ajax({
        url: "adminRoot",
        type: "post",
        data: JSON.stringify(param),
        contentType: 'application/json;charset=utf-8',
        dataType: "json",
        timeout: 1000,
        success: function (data) {
            //console.log(data);
            document.getElementById('adminName').innerHTML = data.name;
            $("#adminImg").attr("src", data.imgRoot);
        },
        error: function (data, status) {
            console.log("ajax error : " + status);
        }
    });
    //个人资料
    $("a#info").click(function () {
        $('#body').load("../admin/info.html #infoModel", function (txt, st, xhr) {
            if (st == "success")
                console.log("info");
            if (st == "error")
                console.log("error:" + xhr.status + ":" + xhr.statusText);

        });
    });
    //个人设置
    $("a#config").click(function () {
        $('#body').load("../admin/config.html #configModel", function (txt, st, xhr) {
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