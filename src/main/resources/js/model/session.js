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
            {field: 'sessionID', title: 'sessionID', width:250, sort: true, fixed: true}
            , {field: 'ip', title: 'ip地址',width: 200}
            , {field: 'userType', title: '用户类型', width: 150}
            , {field: 'account', title: '用户账户', minWidth: 120, sort: true}
            , {field: 'name', title: '用户名', width: 120}
            , {field: 'statu', title: '状态', width: 100}
            , {fixed: 'right', title: '管理', toolbar: '#sessionBar', width: 120}
        ]]
    });

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

    $('.sessionTable .layui-btn').on('click', function () {
        let type = $(this).data('type');
        active[type] ? active[type].call(this) : '';
    });

});