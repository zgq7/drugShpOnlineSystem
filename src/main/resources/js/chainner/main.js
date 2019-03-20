layui.use(['table', 'form', 'laydate'], function () {
    let table = layui.table;

    //方法级渲染------------------------------------------>店员资料
    table.render({
        elem: '#chainnerTable'
        , url: '../c2st/getChainnerByCondition'
        , id: 'chainnerTable' //当前容器的索引应与重载中的reload中的参数一致
        , page: true
        , height: 'full-230'
        , cols: [[
            {field: 'chainId', title: '连锁ID', width: 80, sort: true, fixed: true}
            , {field: 'linkedStore', title: '门店ID', width: 80, sort: true, fixed: true}
            , {field: 'name', title: '名称', minWidth: 120, sort: true}
            , {field: 'sex', title: '性别', width: 150}
            , {field: 'chainAccount', title: '账户', width: 120}
            , {field: 'password', title: '密码', sort: true, width: 100}
            , {field: 'idCard', title: '身份证', sort: true, width: 150}
            , {field: 'homeAt', title: '家庭住址', width: 140}
            , {field: 'birthday', title: '生日', width: 135}
            //, {field: 'imgRoot', title: '头像', width: 135}
            , {field: 'imgRoot', title: '头像', width: 135}
            , {field: 'md5Password', title: 'md5密码', width: 135}
            , {field: 'level', title: '等级', width: 135}
            , {field: 'lectruer', title: '职称', width: 135}
            , {field: '角色', title: '系统角色', width: 135}
        ]]
    });

    let $ = layui.$
        , active = {
        reload: function () {
            let chainId = $('#chainId');
            let code = $('#code');
            let mobile = $('#mobile');
            let account = $('#account');
            //执行重载
            table.reload('chainnerTable', {
                page: {
                    curr: 1 //重新从第 1 页开始
                }
                , where: {
                    //设置多个参数时用key封装
                    chainNo: chainId.val()
                    , code: code.val()
                    , mobile: mobile.val()
                    , account: account.val()
                    //单个参数时可直接设参
                    //id: demoReload.val()
                }
            });
        }
    };

    $('.chainnerTable .layui-btn').on('click', function () {
        let type = $(this).data('type');
        active[type] ? active[type].call(this) : '';
    });

});