layui.use(['table', 'form', 'laydate'], function () {
    let table = layui.table;

    //方法级渲染
    table.render({
        elem: '#member_table'
        , url: '../member/getMemberByCondtion'
        , id: 'memberReload' //当前容器的索引应与重载中的reload中的参数一致
        , page: true
        , height: 'full-230'
        , cols: [[
            {field: 'infoId', title: 'ID', width: 80, sort: true, fixed: true}
            , {field: 'cardNo', title: '卡号', width: 150}
            , {field: 'name', title: '竹根七', minWidth: 120, sort: true}
            , {field: 'sex', title: '性别', width: 50}
            , {field: 'birthday', title: '生日', width: 120}
            , {field: 'address', title: '现居地址', sort: true, width: 100}
            , {field: 'intergration', title: '积分', sort: true, width: 80}
            , {field: 'amount', title: '余额', width: 80}
            , {field: 'discount', title: '折扣率', width: 135}
            , {field: 'email', title: '邮箱', width: 135}
            , {field: 'leavel', title: '等级', width: 135}
            , {field: 'statu', title: '状态', width: 135}
        ]]
    });

    let $ = layui.$
        , active = {
        reload: function () {
            let account = $('#cardNo');
            //执行重载
            table.reload('memberReload', {
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

    $('.demoTable .layui-btn').on('click', function () {
        let type = $(this).data('type');
        active[type] ? active[type].call(this) : '';
    });

});