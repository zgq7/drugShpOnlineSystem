/**
 * Created by Administrator on 2019/1/29.
 * 加载admin 的 html 模块
 */
$(document).ready(function () {
    //余额、头像、姓名
    $.ajax({
        url: "adminRoot",
        type: "post",
        contentType: 'application/json;charset=utf-8',
        dataType: "json",
        timeout: 1000,
        success: function (data) {
            document.getElementById('adminName').innerHTML = data.name;
            $("#adminImg").attr("src", data.imgRoot);
        },
        error: function (data, status) {
            console.log("ajax error : " + status);
        }
    });
    //个人资料
    $.ajax({
        url: "infoData",
        type: "post",
        contentType: 'application/json;charset=utf-8',
        dataType: "json",
        timeout: 1000,
        success: function (data) {
            let admin = data.info;
            //console.log(data.info);
            $("#img").attr("src", admin.imgRoot);
            $("#name").html(admin.name);
            $("#mobile").html(admin.mobile);
            $("#sex").html(admin.sex);
            $("#cardNo").html(admin.adminAccount);
            $("#birthday").html(admin.birthday);
            $("#idCard").html(admin.idCard);
            $("#homeAt").html(admin.homeAt);
        },
        error: function (data) {
            console.log(data);
        }
    });
    //个人设置

    //弹出模块必须在其他/js加载完之后再加载
    layui.use('element', function () {
        var element = layui.element;
        console.log("zdy element");
    });
});