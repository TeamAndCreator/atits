
$("#input-id").fileinput({

    language : 'zh',// 设置语言
    uploadUrl : 'files_upload/'+JSON.stringify(params), // 上传的地址ZF
    allowedPreviewTypes: ['image'],
    allowedFileExtensions : [ 'xls','xlsx', 'doc', 'docx', 'pdf','txt'],// 接收的文件后缀
    maxFileCount : 10, // 文件数量
    showUpload : true, // 是否显示上传按钮
    // showCaption : true,// 是否显示标题
    browseClass : "btn btn-sm btn-primary",
    removeClass : "btn btn-sm btn-default",
    uploadClass : "btn btn-sm btn-default",// 按钮样式
    dropZoneEnabled: true,//是否显示拖拽区域
    maxFileSize : 100000,
    enctype: 'multipart/form-data',
    slugCallback : function(filename) {
        return filename.replace('(', '_').replace(']', '_');
    }
});


//上传完成后数据处理
var fileId = new Array();
$("#input-id").on("fileuploaded", function(event, data, previewId, index) {
    fileId.push(JSON.stringify(data.response));
    $('#fileId').val(fileId.toString());
});