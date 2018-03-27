$(document).ready(function () {
    // alert("nihao ");

    //=======1.页面加载完成后，直接发送ajax请求，要到分页数据=======
    $.ajax({
        url: 'main',
        type: "GET",
        // data: $("#from-add").serialize(),
        data: {
            "id": 1
        },
        // dataType : 'json',
        success: function (result) {
            result = JSON.parse(result);
            // alert(system.content);
            $("#article").html(result.data.system.content);
        }
    });

    $.ajax({
        url: 'main_notice',
        type: "GET",
        data: {
        },
        // dataType : 'json',
        success: function (result) {
            result = JSON.parse(result);

            // alert(result.data.system.id);
            // system=result.data['system'];
            // notices=result.data['notices'];
            // console.log(result.data);
            var li = '';
            $.each(result.data.notices, function () {
                var tmp = '<li class="news-item">\n' +
                    '                                                                    <div style="text-overflow:ellipsis;overflow:hidden;"\n' +
                    '                                                                         >' + this.title + '...\n' +
                    '\n' +
                    '                                                                        &nbsp;&nbsp;&nbsp;&nbsp;\n' +
                    '                                                                        <span class="pull-right">' + this.time + '</span>\n' +
                    '                                                                        <a href="notice_detail?id=' + this.id + '"\n' +
                    '                                                                           class="pull-right">详情</a>\n' +
                    '                                                                    </div>\n' +
                    '                                                                </li>';
                li.append(tmp);
            });
            console.log(li);

            // alert(notices.content);
            //1、解析并显示员工数据

            //2、解析并显示分页信息
        }
    });

    $("#article").readmore({
        maxHeight: 250,
        speed: 700,
        moreLink: '<a HREF="#" style="text-align: center;color:#CC0033;font-size: larger">▼阅读更多</a>',
        lessLink: '<a HREF="#" style="text-align: center;color:#CC0033;font-size: larger">▲收起</a>',
        heightMargin: 16
    });

});