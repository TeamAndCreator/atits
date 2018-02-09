KindEditor.ready(function(K) {
    window.editor = K.create('#editor',{
        height : '500px', //初始化高度
        resizeType:1,  //只能改变编辑器高度
        // pasteType:1,  //txt文本粘贴
        allowImageRemote:false,  //不显示网络图片
        autoHeightMode:true,  //自动高度
        // items:[
        //     'undo', 'redo', '|', 'preview', 'print',  'cut', 'copy', 'paste',
        //     'plainpaste', 'wordpaste', '|', 'justifyleft', 'justifycenter', 'justifyright',
        //     'justifyfull', 'insertorderedlist', 'insertunorderedlist', 'indent', 'outdent',  'clearhtml', 'quickformat', 'selectall', '|','/',
        //      'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold',
        //     'italic', 'underline', 'strikethrough', 'lineheight', 'removeformat', '|',  'hr', 'emoticons',
        // ],
    });


	$("#add").click(function() {
		var newsEditor = editor.html();
		var content = $('#content').val(newsEditor);
	});
    var content = $('#content').val();
    editor.html(content);

});


$(function () {
    $("#delete").click(function () {
        $.ajax({
            url : 'regulation_fileId',
            type : 'post',
            data : {
                "id":$("#id").val(),
                'fileId' : "["+$('#fileId').val()+"]"
            },
            dataType : 'json',
            success : function(result) {
                alert(result);
                $(".no_load").css('display','none');
                $(".load").css('display','block');
                $('#fileId').val("");

            }
        });
    })
});

// initialize with defaults 默认初始化方法
// $("#input-id").fileinput({
// language : 'zh', // 设置语言
// uploadUrl : uploadUrl, // 上传的地址ZF
// allowedFileExtensions : [ 'jpg', 'gif', 'png' ],// 接收的文件后缀
// showUpload : false, // 是否显示上传按钮
// showCaption : false,// 是否显示标题
// browseClass : "btn", // 按钮样式
// });

params={
    "sysId":$("#sysId").val(),
    "type":"规章制度",
    "personId":$("#personId").val()
};

$(".input-id").fileinput({
	language : 'zh',// 设置语言
	uploadUrl : 'files_upload/'+JSON.stringify(params), // 上传的地址ZF
    allowedPreviewTypes: ['image'],
	allowedFileExtensions : [ 'pdf','doc','docx'],// 接收的文件后缀
	maxFileCount : 10, // 文件数量
    maxFileSize : 100000,

    showUpload : true, // 是否显示上传按钮
	// showCaption : true,// 是否显示标题
	browseClass : "btn btn-sm btn-primary",
	removeClass : "btn btn-sm btn-default",
	uploadClass : "btn btn-sm btn-default",// 按钮样式
	dropZoneEnabled: true,//是否显示拖拽区域
	enctype: 'multipart/form-data',
	slugCallback : function(filename) {
		return filename.replace('(', '_').replace(']', '_');
	}
});


//上传完成后数据处理
var fileId = new Array();
$(".input-id").on("fileuploaded", function(event, data, previewId, index) {
	fileId.push(JSON.stringify(data.response));
	$('#fileId').val(fileId.toString());
});