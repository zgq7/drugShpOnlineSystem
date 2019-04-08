layui.use(['table', 'form', 'laydate'], function () {
    let table = layui.table;

    //方法级渲染
    table.render({
        elem: '#session_table'
        , url: '../admin/sessionList'
        , id: 'sessionReload' //当前容器的索引应与重载中的reload中的参数一致
        , page: true
        , height: 'full-230'
        , cols: [[
            {field: 'sessionID', title: 'sessionID', width: 250, sort: true, fixed: true}
            , {field: 'ip', title: 'ip地址', width: 200}
            , {field: 'userType', title: '用户类型', width: 150}
            , {field: 'account', title: '用户账户', minWidth: 120, sort: true}
            , {field: 'name', title: '用户名', width: 120}
            , {field: 'statu', title: '状态', width: 100}
            , {fixed: 'right', title: '管理', toolbar: '#sessionBar', width: 120}
        ]]
    });

    //执行重载操作
    let $ = layui.$
        , active = {
        reload: function () {
            let account = $('#account');
            //执行重载
            table.reload('sessionReload', {
                page: {
                    curr: 1 //重新从第 1 页开始
                }
                , where: {
                    //设置多个参数时用key封装
                    account: account.val()
                    //单个参数时可直接设参
                    //id: demoReload.val()
                }
            });
        }
    };

    //监听重载按钮
    $('.sessionTable .layui-btn').on('click', function () {
        let type = $(this).data('type');
        active[type] ? active[type].call(this) : '';
    });

    //监听下线按钮
    table.on('tool(offline)', function (obj) {
        let data = obj.data;
        let param = {};
        let url = '../admin/delSession';
        param.sessionID = data.sessionID;
        param.name = data.name;
        console.log(param);
        if (obj.event === 'offline') {
            layer.confirm('确认下线用户：' + param.name + ' 吗？', function (index) {
                delSession(param, url);
                //只是在页面中移除
                obj.del();
                layer.close(index);
            });
        }
    });

    /**
     * 下线具体用户 ajax
     * @param param 参数 JSON对象，并用JSON.Stringfy()封装,post请求
     * @param url 要访问的url
     * **/
    function delSession(param, url) {
        $.ajax({
            url: url
            , data: JSON.stringify(param)
            , dataType: 'json'
            , contentType: 'application/json;charset=utf-8'
            , type: 'post'
            , timeout: 1000,
            success: function (data) {
                layer.alert("操作成功 ：" + data.result);
            },
            error: function (data) {
                layer.alert("操作异常 ：" + data.result);
            }
        });
    }

});