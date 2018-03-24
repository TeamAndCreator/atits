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
    if ($("#sysId").val() === 0) {
        alert("请选择体系名称！");
        return false
    }
    name = $("#userName").val();

    var params = {
        "sysId": $("#sysId").val(),
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

            if (result.code === 300) {
                alert(result.msg);
            } else if (result.code === 400) {
                alert(result.msg);
                //} else {
            } else if (result.code === 100) {
                alert(result.msg);
            } else {
                person = result.data["person"];
                console.log(person);
                sessionStorage.setItem('person', JSON.stringify(person));
                window.location.href = "home";

            }

        }
    });
});
