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
            $.ajax({
                url: 'storeList',
                data: postParams,
                dataType: 'json',
                contentType: 'application/json;charset=utf-8',
                type: 'post',
                timeout: 1000,
                success: function (data, status) {
                    let result = data.result;
                    setTimeout(function () {
                        console.log(data);
                        var lis = [];
                        for (var i = 0; i < result.length; i++) {
                            lis.push('<li><a href="' + 'toDirDrugList?code=' + result[i].code + '"><img src="' + result[i].logoRoot + '"><span class="storename">' + result[i].name + '</span></a></li>')
                        }
                        next(lis.join(''), page < result.length / 6 + 1);
                    }, 500);
                },
                fail: function (data, status) {
                    console.log("ajax error");
                }
            });
        }
    });

});