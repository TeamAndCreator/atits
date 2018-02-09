// $(function () {
//     $(".red").click(function () {
//         if (person.permission ==1){
//             if (confirm("确定删除所选项目？")) {
//                 var href = $(this).attr("href");
//                 $("form").attr("action", href).submit();
//             }
//             return false;
//         }else {
//             if (files.system.sysName == person.system.sysName){
//                 if (confirm("确定删除所选项目？")) {
//                     var href = $(this).attr("href");
//                     alert(href);
//                     $("form").attr("action", href).submit();
//                 }
//                 return false;
//             }else {
//                 alert("权限限制，无法删除！");
//             }
//         }
//
//     });
// });
$(function () {
    $(".red").click(function () {
            if (confirm("确定删除所选项目？")) {
                var href = $(this).attr("href");
                $("form").attr("action", href).submit();
            }
            return false;
    });
});