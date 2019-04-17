var $ = jQuery;

function purchase() {
    let param = {};
    param.buyCount = $("#count").val();
    console.log(param);

    $.ajax({
        url: "purchaseDrug",
        data: JSON.stringify(param),
        type: "post",
        contentType: 'application/json;charset=utf-8',
        dataType: "json",
        timeout: 1000,
        success: function (data) {
            console.log(1);
        },
        error: function (data, status) {
            console.log("ajax error : " + status);
        }
    });
}