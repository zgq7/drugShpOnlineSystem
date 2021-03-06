/**
 * Created by Administrator on 2019/1/29.
 * 加载user 的 html 模块
 */
$(document).ready(function () {
    //余额，头像，姓名
    $.ajax({
        url: "root",
        type: "post",
        contentType: 'application/json;charset=utf-8',
        dataType: "json",
        timeout: 1000,
        success: function (data) {
            //console.log(data);
            document.getElementById('myUserName').innerHTML = data.name;
            $("#userImg").attr("src", data.imgRoot);
            $("#amount").html("："+data.amount);
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
            let member = data.info;
            //console.log(member.amount);
            $("#img").attr("src", member.imgRoot);
            $("#name").html(member.name);
            $("#sex").html(member.sex);
            $("#cardNo").html(member.cardNo);
            $("#birthday").html(member.birthday);
            $("#email").html(member.email);
            $("#address").html(member.address);
            $("#intergration").html(member.intergration);
            $("#level").html(member.leavel);
            $("#infoAmount").html(member.amount);
        },
        error: function (data) {
            console.log(data);
        }
    });
    //个人设置

    //弹出模块必须在其他/js加载完之后再加载
    layui.use('element', function () {
        let element = layui.element;
        console.log("zdy element");
    });
});