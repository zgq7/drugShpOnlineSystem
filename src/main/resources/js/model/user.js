/**
 * Created by Administrator on 2019/1/29.
 * 加载user 的 html 模块
 */
$(document).ready(function () {
    let param = {};
    let cardNo = $("#myCardNo").text();
    console.log(cardNo);
    param.cardNo = cardNo;
    $.ajax({
        url: "root",
        type: "post",
        data: JSON.stringify(param),
        contentType: 'application/json;charset=utf-8',
        dataType: "json",
        timeout: 1000,
        success: function (data) {
            document.getElementById('myUserName').innerHTML = data.name;
            $("#userImg").attr("src", data.imgRoot);
        },
        error: function (data, status) {
            console.log("ajax error : " + status);
        }
    });
    //个人资料
    $("a#info").click(function () {
        $('#body').load("../member/info.html #infoModel", function (txt, st, xhr) {
            if (st == "success")
            //console.log("info");
                $.ajax({
                    url: "info",
                    data: JSON.stringify(param),
                    type: "post",
                    contentType: 'application/json;charset=utf-8',
                    dataType: "json",
                    timeout: 1000,
                    success: function (data) {
                        //console.log(data);
                        let sssdata = { //数据
                            "title": "Layui常用模块"
                            ,
                            "list": [{"modname": "弹层", "alias": "layer", "site": "layer.layui.com"}, {
                                "modname": "表单",
                                "alias": "form"
                            }]
                        };
                        let getTpl = $("#demo").html()
                            , view = $("#view");
                        laytpl(getTpl).render(sssdata, function (html) {
                            //view.innerHTML = html;
                        });
                    },
                    error: function (data) {
                        console.log(data);
                    }
                });
            if (st == "error")
                console.log("error:" + xhr.status + ":" + xhr.statusText);
        });
    });
    //个人设置
    $("a#config").click(function () {
        $('#body').load("../member/config.html #configModel", function (txt, st, xhr) {
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