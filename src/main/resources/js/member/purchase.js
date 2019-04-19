layui.use('layer', function () {
    let $ = layui.jquery, layer = layui.layer;
    //let $ = jQuery;

    //触发事件
    let active = {
        purchase: function () {
            let param = {};
            param.buyCount = $("#count").val();

            $.ajax({
                url: "purchaseDrug",
                data: JSON.stringify(param),
                type: "post",
                contentType: 'application/json;charset=utf-8',
                dataType: "json",
                timeout: 1000,
                success: function (data) {
                    alert(data.result);
                    layer.alert(data.result);
                },
                error: function (data, status) {
                    layer.alert(data.result + "，状态码：" + status);
                }
            });
        }
    };

    $('.infoLi').find('#purchase').on('click', function () {
        let othis = $(this), method = othis.data('method');
        active[method] ? active[method].call(this, othis) : '';
    });

});