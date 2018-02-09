
//时间插件
$(function() {
	$("#datepicker").datepicker();
});


//上传插件
$("#input-1").fileinput({
	language : 'zh',// 设置语言
	uploadUrl : 'files_upload/'+JSON.stringify(params), // 上传的地址ZF
    allowedPreviewTypes: ['image'],
	allowedFileExtensions : [ 'xls', 'xlsx', 'doc', 'docx', 'pdf', 'txt',"pptx",'ppt','zip','rar' ],// 接收的文件后缀
	maxFileCount : 1, // 文件数量

	showUpload : true, // 是否显示上传按钮
	// showCaption : true,// 是否显示标题
	browseClass : "btn btn-sm btn-primary",
	removeClass : "btn btn-sm btn-default",
	uploadClass : "btn btn-sm btn-default",// 按钮样式
	// showPreview : true,
    maxFileSize : 100000,
	enctype : 'multipart/form-data',
	slugCallback : function(filename) {
		return filename.replace('(', '_').replace(']', '_');
	},
	showPreview : true,

});

//上传完成后数据处理
$("#input-1").on("fileuploaded", function(event, data, previewId, index) {
	$.ajax({
		url : 'files_setting',
		type : 'get',
		data : {
			'id' : JSON.stringify(data.response)
		},
		dataType : 'json'
	});
	//$('#fileId').val(JSON.stringify(data.response));
});