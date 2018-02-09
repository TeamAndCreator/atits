//localStorage.url = 'http://localhost:8080/atits/';

//判断当前窗口是否有顶级窗口，如果有就让当前的窗口的地址栏发生变化， 
function loadTopWindow() {
    if (window.top != null && window.top.document.URL != document.URL) {
        window.top.location = document.URL; // 这样就可以让登陆窗口显示在整个窗口了   
    }
}

$(function () {
    $("#tip").click(function () {
        $('#modal_table').modal('show');
    });
});

// 登录
$("#login").click(function () {
    if ($("#sysId").val()==0){
        alert("请选择体系名称！");
        return false
    }
    name = $("#userName").val();
// 	alert(name.length);
//     var reg = new RegExp("[\\u4E00-\\u9FFF]+", "g");
//     if (reg.test(name) && name.length == 2) {//2个字的姓名
//         temp = name.split('');
//         temp.splice(1, 0, "    ");//空格的个数
//         temp = temp.join("");
//         name=temp;
//
//
//     }
    var params = {
        "sysId":$("#sysId").val(),
        "userName": name,
        "password": $("#password").val(),
        "imageCode": $("#imageCode").val()
    };
    $.ajax({
        url: 'login',
        type: 'post',
        data: {
            'params': JSON.stringify(params)
        },
        dataType: 'json',
        success: function (result) {
            if (result.state == 0) {
                alert("用户名或密码有错误！");
            } else if (result.state == 1) {
                alert("用户未激活，请联系管理员！");
                //} else {
            } else if (result.state == 2) {
                alert("验证码错误！");
                //} else {
            } else {
                window.location.href = "home";
            }

        }
    });
});