layui.use(['table', 'form', 'laydate'], function () {
    let table = layui.table,
        form = layui.form
        , layer = layui.layer
        , laydate = layui.laydate;

    let drugCode, date, url;

    //日期
    laydate.render({
        elem: '#date'
    });

    //监听提交
    form.on('submit(demo1)', function (data) {
        let params = data.field;
        drugCode = params.drugCode;
        date = params.date;
        url = '../drug/drugInList?drugCode=' + drugCode + '&data=' + date;
        console.log(url);
        table.render({
            elem: '#test'
            , title: '药品资料'
            , url: '../drug/drugInList?drugCode=' + drugCode
            //, toolbar: "#toolbarDemo"
            , page: { //支持传入 laypage 组件的所有参数（某些参数除外，如：jump/elem） - 详见文档
                layout: ['limit', 'count', 'prev', 'page', 'next', 'skip', 'refresh'] //自定义分页布局
                , groups: 1//只显示 1 个连续页码
                , first: false //不显示首页
                , last: false  //不显示尾页
                , curr: 1      //获取指定页
                , hash: "page"
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
            ]]
        });
        return false;
    });


    //头工具栏事件
    table.on('toolbar(test)', function (obj) {
        let checkStatus = table.checkStatus(obj.config.id); //获取选中行状态
        switch (obj.event) {
            case 'getCheckData':
                let data = checkStatus.data;  //获取选中行数据
                layer.alert(JSON.stringify(data));
                break;
        }
    });

    /*table.render({
     elem: '#test'
     , url: '../drug/drugInList'
     , page: { //支持传入 laypage 组件的所有参数（某些参数除外，如：jump/elem） - 详见文档
     layout: ['limit', 'count', 'prev', 'page', 'next', 'skip'] //自定义分页布局
     , curr: 1 //设定初始在第 1 页
     , groups: 1//只显示 1 个连续页码
     , first: false //不显示首页
     , last: false //不显示尾页
     }
     , cols: [[
     {field: 'drugId', width: 80, title: 'ID', sort: true}
     , {field: 'chainId', width: 80, title: '所属连锁', sort: true}
     , {field: 'drugName', width: 100, title: '药品名称'}
     , {field: 'drugData', width: 100, title: 'log地址'}
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
     ]]
     });*/
});