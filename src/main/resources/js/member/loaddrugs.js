layui.use('flow', function () {
    var flow = layui.flow;
    var $ = jQuery;

    flow.load({
        elem: '#loaddrugs' //流加载容器
        , scrollElem: '#loaddrugs' //滚动条所在元素，一般不用填，此处只是演示需要。
        , done: function (page, next) {
            let param = {};
            param.page = page;
            let postParams = JSON.stringify(param);
            $.ajax({
                url: 'drugList',
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
                            lis.push('<li>' +
                                '<a href="' + '//www.baidu.com' + '">' +
                                '<img src="' + result[i].drugData + '">' +
                                '<span class="storename">' + result[i].drugName + ' / $' + result[i].storePrice + '</span>' +
                                '</a>' +
                                '</li>')
                        }
                        next(lis.join(''), page < data.count);
                    }, 500);
                },
                fail: function (data, status) {
                    console.log("ajax error");
                }
            });
        }
    });

});