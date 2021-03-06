layui.use(['table', 'form', 'laydate'], function () {
    let table = layui.table,
        laydate = layui.laydate;

    let $ = layui.$;

    //日期
    laydate.render({
        elem: '#effectDate',
    });
    //日期1
    laydate.render({
        elem: '#date1'
    });
    //日期2
    laydate.render({
        elem: '#date2'
    });
    //日期3
    laydate.render({
        elem: '#date3'
    });


    //监听提交  商品资料 render ---------------------------------->商品资料列表
    table.render({
        elem: '#test'
        , title: '药品资料'
        , url: '../drug/drugInList'
        , id: 'testReload' //当前容器的索引
        , height: 'full-230'
        , page: { //支持传入 laypage 组件的所有参数（某些参数除外，如：jump/elem） - 详见文档
            layout: ['limit', 'count', 'prev', 'page', 'next', 'skip', 'refresh'] //自定义分页布局
            , groups: 1//只显示 1 个连续页码
            , first: false //不显示首页
            , last: true  //不显示尾页
            , curr: 1      //获取指定页
        }
        ,
        cols: [[
            {field: 'chainId', width: 120, title: '所属连锁', sort: true}
            , {field: 'drugName', width: 100, title: '药品名称'}
            , {field: 'drugKind', width: 80, title: '类别', sort: true}
            , {field: 'drugCode', width: 80, title: '药品编码'}
            , {field: 'barCode', title: '内码', minWidth: 150}
            , {field: 'unitPrice', width: 80, title: '连锁单价', sort: true}
            , {field: 'storePrice', width: 80, title: '门店单价', sort: true}
            , {field: 'costPrice', width: 80, title: '进价单价'}
            , {field: 'spec', width: 80, title: '规格'}
            , {field: 'company', width: 135, title: '公司', sort: true}
            , {field: 'purchaseDate', width: 135, title: '进货日期', sort: true}
            , {field: 'produceDate', width: 135, title: '生产日期', sort: true}
            , {field: 'effectDate', width: 135, title: '保质日期', sort: true}
            , {field: 'approval', width: 135, title: '国产准字', sort: true}
            , {field: 'explaination', width: 135, title: '说明', sort: true}
            , {field: 'isAllowedTrade', width: 135, title: '是否交易', sort: true, style: 'background-color: #5FB878;'}
        ]]
    });

    let activeOfList = {
        reload: function () {
            let drugCode = $('#drugCode');
            let chainNo = $('#chainNo');
            let effectDate = $('#effectDate');
            //执行重载
            table.reload('testReload', {
                page: {
                    curr: 1 //重新从第 1 页开始
                }
                , where: {
                    //设置多个参数时用key封装
                    drugCode: drugCode.val()
                    , chainId: chainNo.val()
                    , effectDate: effectDate.val()
                }
            })
            ;
        }
    };

    $('.demoTable .layui-btn').on('click', function () {
        let type = $(this).data('type');
        activeOfList[type] ? activeOfList[type].call(this) : '';
    });

    //监听提交  上架下架 render ---------------------------------->上架下架列表
    table.render({
        elem: '#updownTable'
        , title: '上架下架'
        , url: '../drug/drugInList'
        , id: 'updownReload'
        , height: 'full-230'
        , page: { //支持传入 laypage 组件的所有参数（某些参数除外，如：jump/elem） - 详见文档
            layout: ['limit', 'count', 'prev', 'page', 'next', 'skip', 'refresh'] //自定义分页布局
            , groups: 1//只显示 1 个连续页码
            , first: false //不显示首页
            , last: true  //不显示尾页
            , curr: 1      //获取指定页
        }
        ,
        cols: [[
            {field: 'chainId', width: 110, title: '所属连锁', sort: true}
            , {field: 'drugName', width: 240, title: '药品名称'}
            , {field: 'drugCode', minWidth: 100, title: '药品编码', sort: true}
            , {field: 'unitPrice', width: 80, title: '连锁单价', sort: true}
            , {field: 'company', width: 200, title: '公司', sort: true}
            , {field: 'purchaseDate', width: 120, title: '进货日期', sort: true}
            , {field: 'produceDate', width: 120, title: '生产日期', sort: true}
            , {field: 'isAllowedTrade', width: 80, title: '状态', sort: true, style: 'background-color: #5FB878;'}
            , {fixed: 'right', title: '操作', toolbar: '#barDemo', width: 150}
        ]]
    });

    let activeOfUpDown = {
        reload: function () {
            let drugCode = $('#drugCode');
            let chainId = $('#chainId');
            let option = $('#updown option:selected').val();
            if (option == '已上架') {
                option = 1;
            } else {
                option = 0;
            }
            //执行重载 搜索按钮的class要与table.reload一样
            table.reload('updownReload', {
                page: {
                    curr: 1 //重新从第 1 页开始
                }
                , where: {
                    //设置多个参数时用key封装
                    drugCode: drugCode.val()
                    , chainId: chainId.val()
                    , updown: option
                }
            })
            ;
        }
    };

    $('.updownTable .layui-btn').on('click', function () {
        let type = $(this).data('type');
        activeOfUpDown[type] ? activeOfUpDown[type].call(this) : '';
    });


    //监听提交  出库入库 render ---------------------------------->出库入库列表
    table.render({
        elem: '#InOutTable'
        , title: '出库入库'
        , url: '../drug/drugInList'
        , id: 'InOutTable'
        //, height: 'full-600'
        , cols: [[
            {field: 'chainId', width: 110, title: '所属连锁', sort: true}
            , {field: 'drugName', width: 260, title: '药品名称'}
            , {field: 'drugCode', minWidth: 100, title: '药品编码'}
            , {field: 'company', width: 200, title: '公司', sort: true}
            , {field: 'effectDate', width: 160, title: '保质日期', sort: true}
            , {field: 'produceDate', width: 160, title: '生产日期', sort: true}
            , {field: 'isAllowedTrade', width: 80, title: '状态', sort: true, style: 'background-color: #5FB878;'}
            , {fixed: 'right', title: '操作', toolbar: '#barDemo', width: 120}
        ]]
    });

    let activeOfInOut = {
        reload: function () {
            let drugCode = $('#drugCode');
            let chainId = $('#chainId');
            let effectDate = $('#effectDate');
            let option = $('#updown option:selected').val();
            if (option == '已上架') {
                option = 1;
            } else {
                option = 0;
            }
            //执行重载 搜索按钮的class要与table.reload一样
            table.reload('InOutTable', {
                page: {
                    curr: 1 //重新从第 1 页开始
                }
                , where: {
                    //设置多个参数时用key封装
                    drugCode: drugCode.val()
                    , effectDate: effectDate.val()
                    , chainId: chainId.val()
                    , updown: option
                }
            })
            ;
        }
    };

    $('.InOutTable .layui-btn').on('click', function () {
        let type = $(this).data('type');
        activeOfInOut[type] ? activeOfInOut[type].call(this) : '';
    });

    //-------------------------------------------------------------------按钮监听
    //监听行工具事件 -> 上架下架 ->按钮
    table.on('tool(test)', function (obj) {
        let data = obj.data;
        let param = {};
        let url = '../drug/updateDrugDownLoad';
        param.drugCode = data.drugCode;
        if (obj.event === 'down') {
            if (data.isAllowedTrade == '不可交易') {
                layer.alert("已下架，请勿重复点击！");
                return false;
            }
            param.updown = "0";
            layer.confirm('真的下架吗？', function (index) {
                drugDownUpLoad(param, url);
                //只是在页面中移除
                obj.del();
                layer.close(index);
            });
        } else if (obj.event == 'up') {
            if (data.isAllowedTrade == '可交易') {
                layer.alert("已上架，请勿重复点击！");
                return false;
            }
            param.updown = "1";
            layer.confirm('确认上架吗？', function (index) {
                drugDownUpLoad(param, url);
                obj.del();
                layer.close(index);
            });
        }
    });

    //监听行工具事件 -> 出库入库 ->按钮
    table.on('tool(InOut)', function (obj) {
        let data = obj.data;
        let param = {};
        let url = '../drug/updateDrugDownLoad';
        param.drugCode = data.drugCode;
        param.chainId = data.chainId;
        console.log(param);
        if (obj.event === 'delete') {
            layer.confirm('真的删除' + param.drugCode + '吗？', function (index) {
                drugDownUpLoad(param, url);
                //只是在页面中移除
                obj.del();
                layer.close(index);
            });
        }
        if (obj.event === 'add') {
            layer.confirm('确认入库吗？', function (index) {
                //drugDownUpLoad(param, url);
                //只是在页面中移除
                obj.del();
                layer.close(index);
            });
        }
    });

    //监听单元格编辑
    table.on('edit(test3)', function (obj) {
        var value = obj.value //得到修改后的值
            , data = obj.data //得到所在行所有键值
            , field = obj.field; //得到字段
        layer.msg('[ID: ' + data.id + '] ' + field + ' 字段更改为：' + value);
    });

    /**
     * 上架下架、出库入库 ajax
     * @param param 参数 JSON对象，并用JSON.Stringfy()封装,post请求
     * @param url 要访问的url
     * **/
    function drugDownUpLoad(param, url) {
        //console.log(url);
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