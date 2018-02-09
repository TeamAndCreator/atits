<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>体系动态添加</title>
    <meta name="description" content=""/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css"/>

    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jquery-ui.custom.min.css"/>

    <!-- text fonts -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-fonts.css"/>
    <!-- ace styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.min.css" id="main-ace-style"/>
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-part2.min.css"/>
    <![endif]-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-skins.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-rtl.min.css"/>
    <!--bootstrap-fileinput  -->
    <!--<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/wangEditor.min.css" />-->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/bootstrap-fileinput/css/fileinput.css"/>
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-ie.min.css"/><![endif]-->
    <!-- inline styles related to this page -->
    <!-- ace settings handler -->
    <script src="${pageContext.request.contextPath}/assets/js/ace-extra.min.js"></script>
    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->
    <!--[if lte IE 8]>
    <script src="${pageContext.request.contextPath}/assets/js/html5shiv.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/respond.min.js"></script>
    <![endif]-->
</head>
<body class="no-skin">
<!-- #section:basics/navbar.layout -->


<!-- /section:basics/navbar.layout -->
<div class="main-container" id="main-container">

    <script type="text/javascript">
        try {
            ace.settings.check('main-container', 'fixed')
        } catch (e) {
        }
    </script>

    <!-- #section:basics/sidebar -->


    <!-- /section:basics/sidebar -->
    <div class="main-content">
        <input type="hidden" id="personId" value="${person.id}"/>
        <input type="hidden" id="sysId" value="${person.system.id}"/>
        <!-- #section:basics/content.breadcrumbs -->
        <div class="breadcrumbs" id="breadcrumbs">
            <script type="text/javascript">
                try {
                    ace.settings.check('breadcrumbs', 'fixed')
                } catch (e) {
                }
            </script>

            <ul class="breadcrumb">
                <li><i class="ace-icon fa fa-home home-icon"></i> <a
                        href="index">首页</a></li>

                <li><a href="dynamic">体系动态</a></li>
                <li class="active">修改&amp;添加</li>
            </ul>
            <!-- /.breadcrumb -->
        </div>

        <!-- /section:basics/content.breadcrumbs -->
        <div class="page-content">
            <div class="page-content-area">

                <div class="page-header">
                    <h1>修改 &amp;添加</h1>
                </div>
                <!-- /.page-header -->
                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->
                        <form:form
                                action="${pageContext.request.contextPath}/dynamic_save"
                                method="POST" class="form-horizontal" id="sample-form"
                                modelAttribute="dynamic">
                            <c:if test="${dynamic.id != 0}">
                                <form:hidden path="id" id="id"/>
                                <input type="hidden" name="_method" value="PUT">
                            </c:if>

                            <!-- #section:elements.form.input-state -->
                            <div class="form-group has-warning">
                                <label for="inputWarning"
                                       class="col-xs-12 col-sm-3 control-label no-padding-right">标题</label>

                                <div class="col-xs-12 col-sm-5">
										<span class="block input-icon input-icon-right"> <form:input
                                                type="text" id="inputWarning" class="width-100" path="title"/>
											<i class="ace-icon fa fa-leaf"></i>
										</span>
                                </div>

                            </div>
                            <div class="form-group has-success">
                                <label for="inputSuccess"
                                       class="col-xs-12 col-sm-3 control-label no-padding-right">编辑人</label>
                               <c:choose>
                                   <c:when test="${dynamic.id ne 0}">
                                       <div class="col-xs-12 col-sm-5">
										<span class="block input-icon input-icon-right">
                                            <input type="text" class="width-100 " value="${dynamic.editor.name}"
                                                   disabled="true"/>
                                            <form:input type="hidden" class="width-100"
                                                        path="editor.id" value="${dynamic.editor.id}"/> <i
                                                class="ace-icon fa fa-check-circle"></i>
										</span>
                                       </div>
                                   </c:when>
                                   <c:otherwise>
                                       <div class="col-xs-12 col-sm-5">
										<span class="block input-icon input-icon-right">
                                            <input type="text" class="width-100 " value="${person.name}"
                                                   disabled="true"/>
                                            <form:input type="hidden" id="inputSuccess" class="width-100"
                                                        path="editor.id" value="${person.id}"/> <i
                                                class="ace-icon fa fa-check-circle"></i>
										</span>
                                       </div>
                                   </c:otherwise>
                               </c:choose>
                            </div>

                                    <div class="form-group has-info">
                                        <label
                                                class="col-xs-12 col-sm-3 control-label no-padding-right">发布者</label>
                                        <div class="col-xs-12 col-sm-5">
                                            <form:select class="form-control" path="system.id">
                                                <c:choose>
                                                    <c:when test="${person.permission==1}">
                                                        <form:options items="${system}" itemLabel="sysName"
                                                                      itemValue="id"/>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <form:option
                                                                value="${person.system.id}">${person.system.sysName}</form:option>
                                                    </c:otherwise>
                                                </c:choose>
                                            </form:select>
                                        </div>
                                    </div>


                            <c:choose>
                                <c:when test="${dynamic.fileId ==''||dynamic.fileId ==null}">
                                    <div class="form-group has-success">
                                        <label for="inputSuccess"
                                               class="col-xs-12 col-sm-3 control-label no-padding-right">上传文件</label>
                                        <div class="col-xs-12 col-sm-5  ">
                                            <input id="input-id" type="file" class="file input-id" multiple
                                                   name="files" data-show-caption="true"/>
                                            <!-- <i class="ace-icon fa fa-calendar"></i> -->

                                        </div>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <div class="form-group has-success no_load">
                                        <label for="inputSuccess"
                                               class="col-xs-12 col-sm-3 control-label no-padding-right">删除文件</label>
                                        <div class="col-xs-12 col-sm-5  ">
                                            <div class="btn btn-sm btn-danger red" id="delete">删除文件</div>
                                        </div>
                                    </div>
                                    <div class="form-group has-success load" style="display: none">
                                        <label for="inputSuccess"
                                               class="col-xs-12 col-sm-3 control-label no-padding-right">上传文件</label>
                                        <div class="col-xs-12 col-sm-5  ">
                                            <input id="input-id2" type="file" class="file input-id" multiple
                                                   name="files" data-show-caption="true"/>
                                            <!-- <i class="ace-icon fa fa-calendar"></i> -->

                                        </div>
                                    </div>
                                </c:otherwise>
                            </c:choose>

                        <div class="col-md-11 col-lg-10" style=" float: none;display: block;margin-left: auto;margin-right: auto;  ">
                            <form:input type='hidden' path="fileId" id="fileId" value=''/>
                            <h4 class="header green clearfix">内容</h4>
                            <%--<div id="editor" class="col-lg-12 " style="float: none;display: block;margin-left: auto;margin-right: auto;">--%>
                            <%--</div>--%>
                            <iframe ID="eWebEditor1" src="assets/ewebeditor/ewebeditor.htm?id=content&style=coolblue" class="col-lg-12"
                                    style="float: none;display: block;margin-left: auto;margin-right: auto;"
                                    frameborder="0" scrolling="no" width="550" height="700"></iframe>
                            <form:input type='hidden' path='content' id='content' value=''/>
                            <%--<c:choose>--%>
                            <%--<c:when test="${person.permission ==1}">--%>
                            <%--<form:input type='hidden' path='state' value='0'/>--%>
                            <%--</c:when>--%>
                            <%--<c:when test="${person.permission == 2}">--%>
                            <%--<form:input type='hidden' path='state' value='6'/>--%>
                            <%--</c:when>--%>
                            <%--<c:otherwise>--%>
                            <form:input type='hidden' path='state' value='0'/>
                            <%-- <form:input class="wysiwyg-editor" id="editor1" path="content" /> --%>
                            <div class="widget-toolbox padding-4 clearfix">

                                <div class="btn-group pull-left">
                                    <a href="javascript:history.back()"
                                       class="btn btn-sm btn-danger btn-white btn-round "> <i
                                            class="ace-icon fa fa-times bigger-125"></i>取消
                                    </a>
                                </div>
                                <div class="btn-group pull-right">
                                    <button class="btn btn-sm btn-danger btn-white btn-round "
                                            id="add">
                                        <i class="ace-icon fa fa-floppy-o bigger-125"></i> 提交
                                    </button>
                                </div>
                            </div>
                        </div>
                        </form:form>

                        <script type="text/javascript">
                            var $path_assets = "assets";//this will be used in loading jQuery UI if needed!
                        </script>

                        <!-- PAGE CONTENT ENDS -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.page-content-area -->
        </div>
        <!-- /.page-content -->
    </div>
    <!-- /.main-content -->

    <div class="footer">
        <div class="footer-inner">
            <!-- #section:basics/footer -->
            <div class="footer-content">
					<span class="bigger-120"> <span class="blue bolder">安徽农业大学数字农业研究所</span>
						&copy; 2017-2018（测试版）
					</span>
            </div>

            <!-- /section:basics/footer -->
        </div>
    </div>

    <a href="#" id="btn-scroll-up"
       class="btn-scroll-up btn btn-sm btn-inverse"> <i
            class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>
</div>
<!-- /.main-container -->

<!-- basic scripts -->

<!--[if !IE]> -->
<script type="text/javascript">
    window.jQuery
    || document.write("<script src='${pageContext.request.contextPath}/assets/js/jquery.min.js'>"
        + "<" + "/script>");
</script>

<!-- <![endif]-->

<!--[if IE]>
<script type="text/javascript">
    window.jQuery || document.write("<script src='${pageContext.request.contextPath}/assets/js/jquery1x.min.js'>" + "<" + "/script>");
</script>
<![endif]-->
<script type="text/javascript">
    if ('ontouchstart' in document.documentElement)
        document
            .write("<script src='${pageContext.request.contextPath}/assets/js/jquery.mobile.custom.min.js'>"
                + "<" + "/script>");
</script>
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>

<!-- page specific plugin scripts -->
<script src="${pageContext.request.contextPath}/assets/js/jquery-ui.custom.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.ui.touch-punch.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/markdown/markdown.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/markdown/bootstrap-markdown.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.hotkeys.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/bootbox.min.js"></script>

<!-- ace scripts -->
<script src="${pageContext.request.contextPath}/assets/js/ace-elements.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->

<script type="text/javascript">
    $(function () {
        $("#datepicker").datepicker();
    });
</script>

<!-- the following scripts are used in demo only for onpage help and you don't need them -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.onpage-help.css"/>
<link rel="stylesheet" href="docs/${pageContext.request.contextPath}/assets/js/themes/sunburst.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jquery-ui.min.css"/>

<script type="text/javascript">
    ace.vars['base'] = '..';
</script>
<!--<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/wangEditor.min.js"></script>-->
<script charset="utf-8" src="assets/js/kindedit/kindeditor-all.js"></script>
<script charset="utf-8" src="assets/js/kindedit/lang/zh-CN.js"></script>
<script charset="utf-8" src="assets/js/kindedit/plugins/autoheight/autoheight.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/ace/elements.onpage-help.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/ace/ace.onpage-help.js"></script>
<script src="${pageContext.request.contextPath}/docs/assets/js/rainbow.js"></script>
<script src="${pageContext.request.contextPath}/docs/assets/js/language/generic.js"></script>
<script src="${pageContext.request.contextPath}/docs/assets/js/language/html.js"></script>
<script src="${pageContext.request.contextPath}/docs/assets/js/language/css.js"></script>
<script src="${pageContext.request.contextPath}/docs/assets/js/language/javascript.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery-ui.min.js"></script>

<!-- bootstrap-fileinput -->

<script src="${pageContext.request.contextPath}/assets/bootstrap-fileinput/js/fileinput.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/bootstrap-fileinput/js/locales/zh.js"></script>

<script src="${pageContext.request.contextPath}/assets/js/atits-js/dynamic_add.js"></script>
</body>
</html>
