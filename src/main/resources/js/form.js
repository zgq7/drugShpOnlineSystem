layui.use(['form', 'layedit', 'laydate'], function () {
    let form = layui.form
        , layer = layui.layer
        , laydate = layui.laydate;

    //日期
    laydate.render({
        elem: '#date'
    });


    //监听提交
    form.on('submit(demo1)', function (data) {
        layer.alert(JSON.stringify(data.field), {
            title: '最终的提交信息'
        });
        return false;
    });

});