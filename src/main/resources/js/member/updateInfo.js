$(document).ready(function () {
    layui.use(['form', 'layedit', 'laydate'], function () {
        let form = layui.form
            , layer = layui.layer
            , layedit = layui.layedit
            , laydate = layui.laydate;

        //日期
        laydate.render({
            elem: '#date'
        });

        //自定义验证规则
        form.verify({
            title: function (value) {
                if (value.length < 5) {
                    return '标题至少得5个字符啊';
                }
            }
            , pass: [
                /^[\S]{6,12}$/
                , '密码必须6到12位，且不能出现空格'
            ]
            , content: function (value) {
                layedit.sync(editIndex);
            }
        });

        //监听提交
        form.on('submit(demo1)', function (data) {
            console.log(data.field);
            /*layer.alert(JSON.stringify(data.field), {
             title: '最终的提交信息'
             });
             return false;*/
        });

        $.ajax({
            url: "infoData",
            type: "post",
            contentType: 'application/json;charset=utf-8',
            dataType: "json",
            timeout: 1000,
            success: function (data) {
                let member = data.info;
                //console.log(member.address.slice(8,11));
                //表单初始赋值
                form.val('example', {
                    "name": member.name // "name": "value"
                    , "birthday": member.birthday
                    , "privince": member.address.slice(0,3)
                    , "urban": member.address.slice(4,7)
                    , "area": member.address.slice(8,11)
                    , "email": member.email
                    , "sex": member.sex
                });
            },
            error: function (data, status) {
                console.log("ajax error : " + status);
            }
        });

        /*//表单初始赋值
        form.val('example', {
            "name": '123' // "name": "value"
            , "birthday": "1997-07-07"
            , "oldPassword": "123457"
            , "newPassword": "123456"
            , "mobile": "12345678911"
            , "email": "12345678911@qq.com"
            , "sex": "男"
        });*/

    });
});