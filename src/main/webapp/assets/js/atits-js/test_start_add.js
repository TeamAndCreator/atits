$(function() {
    var E = window.wangEditor;
    var editor = new E('#editor');
    // 或者 var editor = new E( document.getElementById('#editor') )

    // 自定义菜单配置
    editor.customConfig.menus = [
        'head',  // 标题
        'bold',  // 粗体
        'italic',  // 斜体
        'underline',  // 下划线
        'strikeThrough',  // 删除线
        'foreColor',  // 文字颜色
        'backColor',  // 背景颜色
        'link',  // 插入链接
        'list',  // 列表
        'justify',  // 对齐方式
        'quote',  // 引用
//      'emoticon',  // 表情
        'image',  // 插入图片
//      'table',  // 表格
//      'video',  // 插入视频
//      'code',  // 插入代码
        'undo',  // 撤销
        'redo'  // 重复
    ];
    editor.customConfig.uploadImgShowBase64 = true;   // 使用 base64 保存图片
    editor.customConfig.showLinkImg = false;//隐藏“网络图片”tab
    editor.customConfig.zIndex = 10000;
    editor.create();

	$("#add").click(function() {
		var newsEditor = editor.txt.html();
		var content = $('#content').val(newsEditor);
	});
    var content = $('#content').val();
    editor.txt.html(content);
});



$(function () {
    $("#delete").click(function () {
        $.ajax({
            url : 'notice_fileId',
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

$(function() {

    var checkedList = new Array();
    $("input[name='select1']:checked").each(function() {
        checkedList.push($(this).val())
    });




});

params={
    "sysId":$("#sysId").val(),
    "type":"考评启动",
    "personId":$("#personId").val()
};

$(".input-id").fileinput({
	language : 'zh',// 设置语言
	uploadUrl : 'files_upload/'+JSON.stringify(params), // 上传的地址ZF
    allowedPreviewTypes: ['image'],
	allowedFileExtensions : [ 'jpg','xls', 'xlsx', 'doc', 'docx', 'pdf', 'txt','ppt','pptx','zip','rar' ],// 接收的文件后缀
	maxFileCount : 10, // 文件数量
    maxFileSize : 100000,
	showUpload : true, // 是否显示上传按钮
	// showCaption : true,// 是否显示标题
	browseClass : "btn btn-sm btn-primary",
	removeClass : "btn btn-sm btn-default",
	uploadClass : "btn btn-sm btn-default",// 按钮样式
	dropZoneEnabled : false,// 是否显示拖拽区域
	enctype : 'multipart/form-data',
	slugCallback : function(filename) {
		return filename.replace('(', '_').replace(']', '_');
	}
});
// 上传完成后数据处理
var fileId = new Array();
$(".input-id").on("fileuploaded", function(event, data, previewId, index) {
	fileId.push(JSON.stringify(data.response));
	//console.log(data.response)
	//alert(fileDir.toString())
	$('#fileId').val(fileId.toString());
});