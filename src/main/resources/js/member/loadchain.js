layui.use('flow', function () {
    var flow = layui.flow;
    var $ = jQuery;

    flow.load({
        elem: '#loadchain' //流加载容器
        , scrollElem: '#loadchain' //滚动条所在元素，一般不用填，此处只是演示需要。
        , done: function (page, next) {

            let param = {};
            param.page = page;
            let postParams = JSON.stringify(param);
            $.ajax({
                url: 'chainList',
                data: postParams,
                dataType: 'json',
                contentType: 'application/json;charset=utf-8',
                type: 'post',
                timeout: 1000,
                success: function (data, status) {
                    let result = data.result;
                    setTimeout(function () {
                        console.log(result[0]);
                        var lis = [];
                        for (var i = 0; i < result.length; i++) {
                            lis.push('<li><a href="' + 'toDirStore?chainNo=' + result[i].chainNo + '"><img src="' + result[i].logoRoot + '"><span class="storename">' + result[i].chainName + '</span></a></li>')
                        }
                        next(lis.join(''), page < 10); //假设总页数为 10
                    }, 500);
                },
                fail: function (data, status) {
                    console.log("0");
                }
            });
        }
    });

});