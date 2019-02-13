layui.use('table', function () {
    var table = layui.table;

    table.render({
        elem: '#test'
        , url: 'getDrugInfoList'
        , page: { //支持传入 laypage 组件的所有参数（某些参数除外，如：jump/elem） - 详见文档
            layout: ['limit', 'count', 'prev', 'page', 'next', 'skip'] //自定义分页布局
            //,curr: 5 //设定初始在第 5 页
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
    });
});