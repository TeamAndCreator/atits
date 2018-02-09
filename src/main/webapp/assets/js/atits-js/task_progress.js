$(function () {
    $(".btn-danger").click(function () {
        var checkedNum = $("input[name='subcheck']:checked").length;
        if (checkedNum == 0) {
            alert("请至少选择一项！");
            return false;
        }
        if (confirm("确定删除所选项目？")) {
            var checkedList = new Array();
            $("input[name='subcheck']:checked").each(function () {
                checkedList.push($(this).val())
            });
            $(".deletes").attr("action", 'task_progress_deletes/' + checkedList).submit();
        }
    });


    $(document).on("click", ".add", function () {
        $("#subTasks").empty();
        $("#fileId").empty();
        $("#title").empty();
        $("#content").empty();
        var optionEle = $("<option></option>").append("--请选择--").attr("value", 0);
        optionEle.appendTo("#subTasks");
        getSubTasks();
        $("#modal-table").modal();
    });

    function getSubTasks() {
        //清空之前下拉列表的值
        //$(subTasks).empty();
        $.ajax({
            url: "sub_task_ajax",
            type: "GET",
            data: {
                personId: $("#personId").val()
            },
            success: function (result) {
                if (result == '') {
                    alert("没有子任务");
                    return false;
                }
                subTasks = $.parseJSON(result);
                $.each(subTasks, function (index, subTask) {
                        var optionEle = $("<option></option>").append(subTask.title).attr("value", subTask.id);
                        optionEle.appendTo("#subTasks");
                        // alert();
                    }
                );
            }
        })
        ;
    }

    $("select#title").change(function () {
        $("#title").empty();
        $("#title").append("<option value='0'>--请选择--</option>");
        getSubTasks();
    });

    $("#task_progress_save").click(function () {
        $.ajax({
            url: "task_progress_save",
            type: "POST",
            data: $("#task_progress_add_form").serialize(),
            success: function (result) {
                    location.reload();
                // $(document).ready(function () {
                // });


            }
        });
    });


    $(".input-id").fileinput({
        language: 'zh',// 设置语言
        uploadUrl: 'files_upload', // 上传的地址ZF
        allowedFileExtensions: ['xls', 'xlsx', 'doc', 'docx', 'pdf', 'txt'],// 接收的文件后缀
        maxFileCount: 10, // 文件数量
        showUpload: true, // 是否显示上传按钮
        // showCaption : true,// 是否显示标题
        browseClass: "btn btn-sm btn-primary",
        removeClass: "btn btn-sm btn-default",
        uploadClass: "btn btn-sm btn-default",// 按钮样式
        dropZoneEnabled: true,//是否显示拖拽区域
        enctype: 'multipart/form-data',
        slugCallback: function (filename) {
            return filename.replace('(', '_').replace(']', '_');
        }
    });


//上传完成后数据处理
    var fileId = new Array();
    $(".input-id").on("fileuploaded", function (event, data, previewId, index) {
        fileId.push(JSON.stringify(data.response));
        $('#fileId').val(fileId.toString());
        alert(fileId.toString());
    });


    // $(document).on("click", ".add1", function () {
    //     $("#subTasks1").empty();
    //     var optionEle = $("<option></option>").append("--请选择--").attr("value", 0);
    //     optionEle.appendTo("#subTasks1");
    //     getSubTasks1();
    //     $("#modal-table1").modal();
    // });
    //
    // function getSubTasks1() {
    //     alert($("#sysId").val());
    //     //清空之前下拉列表的值
    //     //$(subTasks).empty();
    //     $.ajax({
    //         url: "sub_task_ajax1",
    //         type: "GET",
    //         data: {
    //             sysId: $("#sysId").val()
    //         },
    //         success: function (result) {
    //             subTasks = $.parseJSON(result);
    //             $.each(subTasks, function (index, subTask) {
    //                     var optionEle = $("<option></option>").append(subTask.title).attr("value", subTask.id);
    //                     optionEle.appendTo("#subTasks1");
    //                     // alert();
    //                 }
    //             );
    //         }
    //     })
    //     ;
    // }
    //
    // $("select#title").change(function () {
    //     $("#title").empty();
    //     $("#title").append("<option value='0'>--请选择--</option>");
    //     getSubTasks1();
    // });
    //
    // $("#task_progress_save1").click(function () {
    //     $.ajax({
    //         url: "task_progress_save",
    //         type: "POST",
    //         data: $("#task_progress_add_form1").serialize(),
    //         success: function (result) {
    //             location.reload();
    //         }
    //     });
    // })

});


