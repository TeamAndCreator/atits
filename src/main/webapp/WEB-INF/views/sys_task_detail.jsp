<%--
  Created by IntelliJ IDEA.
  User: James
  Date: 2017/8/25
  Time: 20:28
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html; charset=UTF-8"%>--%>
<%--<%--%>
<%--request.setCharacterEncoding("UTF-8");--%>
<%--%>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ page language="java" pageEncoding="UTF-8"%>--%>
<%--<%@ page contentType="text/html;charset=UTF-8"%>--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <%--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">--%>
    <meta charset="utf-8"/>
    <title>任务合同详情</title>

    <meta name="description" content="Draggabble Widget Boxes &amp; Containers"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="assets/css/font-awesome.min.css"/>

    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="assets/css/jquery-ui.custom.min.css"/>

    <!-- text fonts -->
    <link rel="stylesheet" href="assets/css/ace-fonts.css"/>

    <!-- ace styles -->
    <link rel="stylesheet" href="assets/css/ace.min.css" id="main-ace-style"/>

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="assets/css/ace-part2.min.css"/>
    <![endif]-->
    <link rel="stylesheet" href="assets/css/ace-skins.min.css"/>
    <link rel="stylesheet" href="assets/css/ace-rtl.min.css"/>

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="assets/css/ace-ie.min.css"/>
    <![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->
    <script src="assets/js/ace-extra.min.js"></script>
    <link href="assets/summernote/summernote.min.css" rel="stylesheet">
    <script src="assets/js/jquery-2.2.4.min.js"></script>
    <script src="assets/summernote/summernote.min.js"></script>
    <script src="assets/js/form-text-editor.js"></script>

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

    <!--[if lte IE 8]>
    <script src="assets/js/html5shiv.min.js"></script>
    <script src="assets/js/respond.min.js"></script>
    <![endif]-->
</head>

<body class="no-skin">
<div class="main-container" id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.check('main-container', 'fixed')
        } catch (e) {
        }
    </script>

    <div class="main-content">
        <div class="page-content">

            <div class="page-content-area">
                <ul class="breadcrumb">
                    <li><i class="ace-icon fa fa-home home-icon"></i>
                        <a href="#">首页</a>
                    </li>

                    <li>
                        <a href="sys_task?sysId=${taskNum.sysId}">工作任务</a>
                    </li>
                    <li class="active">任务合同</li>

                </ul>
                <!-- /.page-header -->

                <div class="page-content-area">
                    <div class="row">
                        <div class="col-xs-12">
                            <!-- PAGE CONTENT BEGINS -->

                            <!-- #section:pages/error -->
                            <div class="error-container">
                                <div class="well">

                                        <ul class="pager">
                                        <c:if test="${person.permission == 1}">
                                            <li class="next bigger-120">
                                                <a href="sys_task_setting?id=${task.id}"><i class="ace-icon fa fa-pencil"></i> 修改</a>
                                            </li>
                                        </c:if>
                                        <li class="previous bigger-120">
                                            <a href="javascript:history.back()"><i class="ace-icon fa fa-arrow-left"></i> 返回</a>
                                        </li>
                                        </ul>

                                    <div class="col-md-11"  style="float: none;display: block;margin-left: auto;margin-right: auto;">
                                        <h1 class="header smaller lighter blue">合同详情</h1>

                                        <!--<div class="space"></div>-->
                                        <div>
                                            <%--<h3 class="lighter smaller">任务合同详情展示：</h3>--%>

                                            <ul class="list-unstyled spaced inline bigger-150 margin-20">
                                                <li><i class="ace-icon fa fa-hand-o-right blue"></i>
                                                    <font color="#0088CC"> 合同名称：</font>
                                                </li>
                                                <div style="display: block; padding-left: 3em;">
                                                    ${task.title}
                                                </div>
                                                <li><i class="ace-icon fa fa-hand-o-right blue"></i>
                                                    <font color="#0088CC"> 负责人：</font>
                                                </li>
                                                <div style="display: block; padding-left: 3em;">
                                                    ${task.bearer.name}
                                                </div>
                                                <li><i class="ace-icon fa fa-hand-o-right blue"></i>
                                                    <font color="#0088CC"> 任务时间：</font>
                                                </li>
                                                <div style="display: block; padding-left: 3em;">
                                                    ${task.startDate}&nbsp至&nbsp${task.endDate}
                                                </div>

                                                <li><i class="ace-icon fa fa-hand-o-right blue"></i>
                                                    <font color="#0088CC"> 所属体系：</font>
                                                </li>
                                                <div style="display: block; padding-left: 3em;">${task.system.sysName}</div>

                                                <li><i class="ace-icon fa fa-hand-o-right blue"></i>
                                                    <font color="#0088CC"> 合同内容：</font>
                                                </li>
                                                <div style="display: block; padding-left: 3em;">${task.content}</div>

                                                <br/><br/>
                                                <li><i class="ace-icon fa fa-cloud-download  red"></i>
                                                <font color="red" > 合同文件下载：</font>
                                            </li>
                                                <c:if test="${files!=null}">


                                                    <c:forEach items="${files}" var="file">
                                                        <div style="display: block; padding-left: 3em;" class="smaller-80"><a
                                                                href="files_download/${file.id}">${file.title}</a></div>
                                                    </c:forEach>
                                                </c:if>
                                            </ul>
                                            <!--Summernote-->
                                            <!--===================================================-->
                                            <div style="display: block; padding-left: 2em;">
                                                <!--<h4 class="text-main">Super simple WYSIWYG editor
                                                                on Bootstrap</h4>-->
                                                <p style="text-indent: 2em;"></p>
                                            </div>

                                            <!--===================================================-->

                                                <hr><hr>
                                            <%--href="task_setting?id=${task.id}"--%>


                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>

                    <!-- /section:pages/error -->

                    <!-- PAGE CONTENT ENDS -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </div>
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
					<span class="bigger-120"> <span class="blue bolder">安徽农业大学数字研究所</span> &copy; 2017-2018（测试版）
					</span>
        </div>

        <!-- /section:basics/footer -->
    </div>
</div>

<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse"> <i
        class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
</a>
</div>
<!-- /.main-container -->

<!-- basic scripts -->

<!--[if !IE]> -->
<script type="text/javascript">
    window.jQuery ||
    document.write("<script src='assets/js/jquery.min.js'>" +
        "<" + "/script>");
</script>

<!-- <![endif]-->

<!--[if IE]>
<script type="text/javascript">
    window.jQuery || document.write("<script src='assets/js/jquery1x.min.js'>" + "<" + "/script>");
</script>
<![endif]-->
<script type="text/javascript">
    if ('ontouchstart' in document.documentElement)
        document
            .write("<script src='assets/js/jquery.mobile.custom.min.js'>" +
                "<" + "/script>");
</script>
<script src="assets/js/bootstrap.min.js"></script>

<!-- page specific plugin scripts -->
<script src="assets/js/jquery-ui.custom.min.js"></script>
<script src="assets/js/jquery.ui.touch-punch.min.js"></script>

<!-- ace scripts -->
<script src="assets/js/ace-elements.min.js"></script>
<script src="assets/js/ace.min.js"></script>

<!-- the following scripts are used in demo only for onpage help and you don't need them -->
<link rel="stylesheet" href="assets/css/ace.onpage-help.css"/>
<link rel="stylesheet" href="docs/assets/js/themes/sunburst.css"/>

<script type="text/javascript">
    ace.vars['base'] = '..';
</script>
<script src="assets/js/ace/elements.onpage-help.js"></script>
<script src="assets/js/ace/ace.onpage-help.js"></script>
<script src="docs/assets/js/rainbow.js"></script>
<script src="docs/assets/js/language/generic.js"></script>
<script src="docs/assets/js/language/html.js"></script>
<script src="docs/assets/js/language/css.js"></script>
<script src="docs/assets/js/language/javascript.js"></script>
<script src="docs/assets/js/atits-js/sys_task.js"></script>
</body>

</html>
