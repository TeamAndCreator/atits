$(function () {
    $(document).on("click",".red",function () {
        if (confirm("确定删除所选项目？")) {
            var href = $(this).attr("href");
            $("#form_delete").attr("action", href).submit();
        }
        return false;
    });

    $(document).on("click",".state",function () {
        if (confirm("确定要激活此用户？")) {
            var href = $(this).attr("href");
            $.get(href);
            $(this).addClass('disabled'); // Disables visually
            $(this).html("已激活");
        }
        return false;
    });


});