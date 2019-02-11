/**
 * Created by zgq7 on 2019/1/30.
 * 弹出member regist 信息框
 */
layui.use('layer', function () { //独立版的layer无需执行这一句
    let $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

    //触发事件
    let active = {
        notice: function () {
            //示范一个公告层
            layer.open({
                type: 1,
                title: ['member registry', 'font-size:18px;color:red;text-align: center;'], //不显示标题栏
                closeBtn: false,
                area: '25%',
                offset: '15%',
                shade: 0.8,
                id: 'ss', //设定一个id，防止重复弹出
                btn: ['注册', '取消'],
                btnAlign: 'c',
                moveType: 1, //拖拽模式，0或者1
                content: $('#register'),
                yes: function () {
                    let params = {};
                    params.name = $("#name").val();
                    params.password = $("#password2").val();
                    params.mobile = $("#mobile").val();
                    params.sex = $("#sex").val();

                    let postParams = JSON.stringify(params);
                    console.log(params)
                    $.ajax({
                        url: 'member/registry',
                        data: postParams,
                        dataType: 'json',
                        contentType: 'application/json;charset=utf-8',
                        type: 'post',
                        timeout: 1000,
                        success: function (data, status) {
                            //console.log(data);
                            setTimeout(function () {
                                alert(data.msg);
                                console.log(data.msg);
                                layer.closeAll();
                            }, 1000);
                        },
                        fail: function (data, status) {
                            console.log(data);
                        }
                    });
                }
            });
        }
    };

    $('#layerDemo').find('.layui-btn').on('click', function () {
        let othis = $(this), method = othis.data('method');
        active[method] ? active[method].call(this, othis) : '';
    });
});