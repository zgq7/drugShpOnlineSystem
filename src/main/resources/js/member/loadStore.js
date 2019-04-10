layui.use('flow', function () {
    var flow = layui.flow;

    flow.load({
        elem: '#loadstore' //流加载容器
        , isAuto: true  //是否自动加载
        , done: function (page, next) { //加载下一页
            console.log(page);
            setTimeout(function () {
                var lis = [];
                for (var i = 0; i < 10; i++) {
                    lis.push('<a href="//www.baidu.com"><img src="http://localhost:8099/drug/images/logo/bg4.jpg"></a>')
                }
                next(lis.join(''), page < 10); //假设总页数为 6
            }, 500);
        }
    });

});