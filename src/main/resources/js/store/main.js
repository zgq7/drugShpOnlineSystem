layui.use(['table', 'form', 'laydate'], function () {
    let table = layui.table;

    //方法级渲染
    table.render({
        elem: '#storeTable'   //与加载的table的id一致
        , url: '../c2st/getStoreByCode'
        , id: 'storeReload' //当前容器的索引应与重载中的reload中的参数一致
        , page: true
        , height: 'full-230'
        , cols: [[
            {checkbox: true, fixed: true}
            , {field: 'storeId', title: 'ID', width: 80, sort: true, fixed: true}
            , {field: 'linkedId', title: '所属连锁', width: 150}
            , {field: 'code', title: '门店编号', width: 150}
            , {field: 'shopHolder', title: '负责人', minWidth: 120, sort: true}
            , {field: 'name', title: '门店名', width: 200}
            , {field: 'address', title: '门店地址', sort: true, width: 200}
            , {field: 'telepgone', title: '门店热线', sort: true, width: 150}
            , {field: 'businessNo', title: '经营许可证', width: 140}
        ]]
    });

    let $ = layui.$
        , active = {
        reload: function () {
            let chainNo = $('#chainNo');
            let code = $('#code');
            //执行重载
            table.reload('storeReload', {
                page: {
                    curr: 1 //重新从第 1 页开始
                }
                , where: {
                    //设置多个参数时用key封装
                    chainNo: chainNo.val()
                    , code: code.val()
                }
            });
        }
    };

    $('.storeTable .layui-btn').on('click', function () {
        let type = $(this).data('type');
        active[type] ? active[type].call(this) : '';
    });

});