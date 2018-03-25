<%--
  Created by IntelliJ IDEA.
  User: james
  Date: 2018/3/18
  Time: 00:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">
    <%--<link href="${pageContext.request.contextPath}/assets/css/jquery.dataTables.min.css" rel="stylesheet">--%>
    <link href="${pageContext.request.contextPath}/assets/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/atits-css/atits.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/bootstrap-fileinput/css/fileinput.css" rel="stylesheet">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="no-skin">
<div class="container">
    <ol class="breadcrumb">
        <li><span class="glyphicon-home glyphicon"></span></li>
        <li><a href="#">首页</a></li>
        <li><a href="#">重大活动</a></li>
        <li class="active">添加</li>
    </ol>
    <div class="row">
        <div class="col-md-12">
            <form class="form-horizontal" id="from-add">
                <div class="form-group">
                    <label class="col-sm-2 control-label ">标题</label>
                    <label class="col-sm-6">
                        <input type="text" class="form-control" name="title"/>
                    </label>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">编辑人</label>
                    <label class="col-sm-6">
                        <input type="text" class="form-control" id="editor" disabled>
                        <input type="hidden" class="form-control" name="editor.id"/>
                    </label>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">发布者</label>
                    <label class="col-sm-6">
                        <input type="text" class="form-control" id="system" disabled>
                        <input type="hidden" class="form-control" name="system.id"/>
                    </label>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">上传文件</label>
                    <label class="col-sm-6">
                        <input id="input-id" type="file" multiple class="file"/>
                    </label>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">内容</label>
                    <label class="col-sm-6">
                        <textarea class="form-control " cols="100" rows="10" placeholder="100字以内"></textarea>
                    </label>
                </div>
                <div class="form-group">

                    <div class="col-xs-offset-6 col-sm-1">
                        <button type="submit" class="btn btn-primary ">取消</button>
                    </div>
                    <div class="col-sm-1">
                        <button type="submit" class="btn btn-success">提交</button>
                    </div>

                </div>
            </form>
        </div>
    </div>
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${pageContext.request.contextPath}/assets/js/jquery-3.3.1.min.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/bootstrap-fileinput/js/fileinput.js"></script>
<script src="${pageContext.request.contextPath}/assets/bootstrap-fileinput/js/locales/zh.js"></script>
</body>
</html>
<script type="text/javascript">

    $(document).ready(function () {
        person = JSON.parse(sessionStorage.person);
        system = person.system;
        // //文件上传控件设置
        $("#input-id").fileinput({
            language: 'zh'// 设置语言
            // // uploadUrl : 'files_upload/'+JSON.stringify(params), // 上传的地址ZF
            // allowedPreviewTypes: ['image'],
            // allowedFileExtensions: ['xls', 'xlsx', 'doc', 'docx', 'pdf', 'txt', 'ppt', 'pptx', 'zip', 'rar'],// 接收的文件后缀
            // maxFileCount: 10, // 文件数量
            // maxFileSize: 100000,
            // showUpload: true, // 是否显示上传按钮
            // // showCaption : true,// 是否显示标题
            // browseClass: "btn btn-sm btn-primary",
            // removeClass: "btn btn-sm btn-default",
            // uploadClass: "btn btn-sm btn-default",// 按钮样式
            // dropZoneEnabled: true,//是否显示拖拽区域
            // enctype: 'multipart/form-data',
            // slugCallback: function (filename) {
            //     return filename.replace('(', '_').replace(']', '_');
            // }
        });

        $("#editor").val(person.name);
        $("#system").val(system.sysName);
        $("input[name='system.id']").val(system.id);
        $("input[name='editor.id']").val(person.id);

        $(".btn").click(function () {
            $.ajax({
                url: "activity_save",
                type: "POST",
                data: $("#from-add").serialize(),
                success: function (result) {
                    console.log(result.msg);
                }
            });
        });

    });
</script>

