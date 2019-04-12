layui.use('flow', function () {
    var flow = layui.flow;
    var $ = jQuery;

    flow.load({
        elem: '#loadstore' //流加载容器
        , scrollElem: '#loadstore' //滚动条所在元素，一般不用填，此处只是演示需要。
        , done: function (page, next) {

            let param = {};
            param.page = page;
            let postParams = JSON.stringify(param);
            console.log(postParams);
            $.ajax({
                url: 'chainList',
                data: postParams,
                dataType: 'json',
                contentType: 'application/json;charset=utf-8',
                type: 'post',
                timeout: 1000,
                success: function (data, status) {
                    console.log(data);
                },
                fail: function (data, status) {
                    console.log("0");
                }
            });
            //模拟数据插入
            setTimeout(function () {
                var lis = [];
                for (var i = 0; i < 8; i++) {
                    lis.push('<li><a href="//www.baidu.com"><img src="../images/store.jpg"><span class="storename">xxx大药房</span></a></li>')
                }
                next(lis.join(''), page < 10); //假设总页数为 10
            }, 500);
        }
    });

});