KindEditor.ready(function(K) {
    window.editor = K.create('#editor1',{
        height : '400px', //初始化高度
        resizeType:1,  //只能改变编辑器高度
        // pasteType:1,  //txt文本粘贴
        allowImageRemote:false,  //不显示网络图片
        autoHeightMode:true,  //自动高度
    });
});
KindEditor.ready(function(K) {
    window.editor = K.create('#editor2',{
        height : '400px', //初始化高度
        resizeType:1,  //只能改变编辑器高度
        // pasteType:1,  //txt文本粘贴
        allowImageRemote:false,  //不显示网络图片
        autoHeightMode:true,  //自动高度
    });
});

$(function() {
    $("#add").click(function() {
        var newsEditor = editor1.html();
        var content = $('#participate').val(newsEditor);

        var newsEditor = editor2.html();
        var content = $('#achievement').val(newsEditor);
    });
});

$(function() {
    var content = $('#participate').val();
    editor1.html(content);

    var content = $('#achievement').val();
    editor2.html(content);
});
