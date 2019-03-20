layui.use(['table', 'form', 'laydate'], function () {
    let table = layui.table;

    //方法级渲染
    table.render({
        elem: '#LAY_table_user'
        , url: '../member/getMemberByCondtion'
        , id: 'testReload' //当前容器的索引应与重载中的reload中的参数一致
        , page: true
        , height: 'full-230'
        , cols: [[
            {checkbox: true, fixed: true}
            , {field: 'chainId', title: 'ID', width: 80, sort: true, fixed: true}
            , {field: 'chainNo', title: '连锁编号', width: 150}
            , {field: 'chainName', title: '连锁名称', minWidth: 120, sort: true}
            , {field: 'address', title: '地址', width: 150}
            , {field: 'businessNo', title: '经营许可证', width: 120}
            , {field: 'hodler', title: '负责人', sort: true, width: 100}
            , {field: 'workNum', title: '负责人编号', sort: true, width: 150}
            , {field: 'telephone', title: '连锁热线', width: 140}
            , {field: 'logoRoot', title: 'logo地址', width: 135}
        ]]
    });

    let $ = layui.$
        , active = {
        reload: function () {
            let demoReload = $('#demoReload');
            //执行重载
            table.reload('testReload', {
                page: {
                    curr: 1 //重新从第 1 页开始
                }
                , where: {
                    //设置多个参数时用key封装
                    key: {
                        chainNo: demoReload.val()
                    }
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