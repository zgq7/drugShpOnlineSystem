/**
 项目JS主入口
 以依赖layui的layer和form模块为例
 **/
/*layui.define(['layer', 'form'], function (exports) {
    var layer = layui.layer,
        form = layui.form;

    layer.msg('Hello World');
    exports('moudle', {}); //注意，这里是模块输出的核心，模块名必须和use时的模块名一致
});

layui.config({
    base: 'js/' //你存放新模块的目录，注意，不是layui的模块目录
}).use('moudle'); //加载入口*/

//弹出模块
layui.use('element', function () {
    var element = layui.element;
});
