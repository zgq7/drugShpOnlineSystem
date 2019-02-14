/**
 *  jq按需加载css文件
 *  @param fileName css 路径
 **/
function includeCss(fileName) {
    let head = document.getElementsByTagName("head")[0];
    let link = document.createElement("link");
    link.href = fileName;
    link.type = "text/css";
    link.rel = "styleSheet";
    head.appendChild(link);
}
/**
 * 按需加载js文件
 * @param fileRoot js 路径
 **/
function includeJs(fileRoot) {
    let head = document.getElementsByTagName("head")[0];
    let script = document.createElement("script");
    script.src = fileRoot;
    script.type = "text/javaScript";
    head.appendChild(script);
}