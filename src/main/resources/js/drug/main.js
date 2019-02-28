layui.use(['table', 'form', 'laydate'], function () {
    let table = layui.table,
        form = layui.form
        , laydate = layui.laydate;

    //日期
    laydate.render({
        elem: '#date'
    });

    //监听提交  商品资料
    form.on('submit(demo1)', function (data) {
        let params = data.field;
        let drugCode, date, chainId, url;
        drugCode = params.drugCode;
        date = params.date;
        chainId = params.chainId;
        url = '../drug/drugInList?drugCode=' + drugCode + '&date=' + date + '&chainId=' + chainId;
        console.log(url);
        //商品资料列表
        table.render({
            elem: '#test2'
            , title: '药品资料'
            , url: url
            , height: 'full-198'
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
        return false;
    });

    //监听提交  上架下架
    form.on('submit(demo2)', function (data) {
        let params = data.field;
        let drugCode, chainId, updown, url;
        drugCode = params.drugCode;
        chainId = params.chainId;
        updown = params.updown;
        if (updown == '已上架') {
            updown = 1;
        } else {
            updown = 0;
        }
        url = '../drug/drugInList?drugCode=' + drugCode + '&chainId=' + chainId + '&updowm=' + updown;
        //商品资料列表
        table.render({
            elem: '#test2'
            , title: '上架下架'
            , url: url
            , height: 'full-198'
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
                , {field: 'drugCode', width: 100, title: '药品编码'}
                , {field: 'unitPrice', width: 80, title: '连锁单价', sort: true}
                , {field: 'company', width: 200, title: '公司', sort: true}
                , {field: 'purchaseDate', width: 120, title: '进货日期', sort: true}
                , {field: 'produceDate', width: 120, title: '生产日期', sort: true}
                , {field: 'isAllowedTrade', width: 80, title: '状态', sort: true, style: 'background-color: #5FB878;'}
                , {fixed: 'right', title: '操作', toolbar: '#barDemo', width: 150}
            ]]
        });
        return false;
    });

    //监听行工具事件
    table.on('tool(test)', function (obj) {
        let data = obj.data;
        let drugCode = data.drugCode;
        if (obj.event === 'down') {
            layer.confirm('真的下架吗？', function (index) {
                //只是在页面中移除
                obj.del();
                $.ajax({
                    url: '../drug/updateDrugDownLoad'
                    , data: JSON.stringify(drugCode)
                    , dataType: 'json'
                    , contentType: 'application/json;charset=utf-8'
                    , type: 'post'
                    , timeout: 1000,
                    success: function (data) {
                        alert(1);
                    },
                    error: function (data) {

                    }
                });
                layer.close(index);
            });
        } else if (obj.event === 'up') {
            layer.confirm('确认上架吗？', function (index) {
                layer.close(index);
            });
        }
    });

});