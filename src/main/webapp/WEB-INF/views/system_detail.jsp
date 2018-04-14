<!--
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
-->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>产业技术体系介绍</title>

    <meta name="description" content="Static &amp; Dynamic Tables"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="assets/css/font-awesome.min.css"/>

    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="assets/css/jquery-ui.min.css"/>
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
</head>

<body class="no-skin">
<!-- #section:basics/navbar.layout -->

<!-- /section:basics/navbar.layout -->
<div class="main-container" id="main-container">
    <!--<script type="text/javascript">
        try {
            ace.settings.check('main-container', 'fixed')
        } catch(e) {}
    </script>-->
    <div class="main-content">
        <div class="page-content">
            <!-- /section:settings.box -->
            <div class="page-content-area">
                <h1 class="header smaller lighter blue">${system.sysName}</h1>
                <!-- /.page-header -->
                <!--从此处添加-->
                <div class="col-md-10 col-sm-12">
                    <div id="tabs" class="bigger-130">
                        <ul>
                            <li>
                                <a href="#tabs-1">体系简介</a>
                            </li>
                            <li>
                                <a href="#tabs-2">人员名单</a>
                            </li>


                            <li>
                                <a href="#tabs-3">功能研究室</a>
                            </li>

                            <li>
                                <a href="#tabs-4">综合试验站</a>
                            </li>

                            <li>
                                <a href="#tabs-5">产业概况</a>
                            </li>
                        </ul>

                        <div id="tabs-1">
                            <!--<p>Proin elit arcu, rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin mi sit amet mauris. Nam elementum quam ullamcorper ante. Duis orci. Aliquam sodales tortor vitae ipsum. Ut et mauris vel pede varius sollicitudin.</p>-->
                            <div class="main-content">
                                <div class="page-content">

                                    <div class="page-content-area">
                                        <div class="row">
                                            <div class="col-xs-12">

                                                <h3 class="header smaller lighter red"
                                                    style="text-indent:2em; line-height:35px ">
                                                    ${system.content}
                                                </h3>

                                            </div>
                                        </div>


                                    </div>
                                    <!-- /.page-content-area -->
                                </div>
                            </div>
                        </div>


                        <div id="tabs-2">
                            <div class="main-content">
                                <div class="page-content">

                                    <div class="page-content-area">
                                        <div class="row">
                                            <div class="col-xs-12">

                                                <h3 class="header smaller lighter red">
                                                    <i class="ace-icon fa fa-graduation-cap"></i>首席专家
                                                </h3>
                                                <div class="row well">

                                                    <c:forEach items="${system.chief}" var="name">
                                                        <%--<div class="col-xs-1">--%>
                                                        <div><h4 class="blue smaller lighter">${name}</h4>
                                                        </div>
                                                        <%--</div>--%>
                                                    </c:forEach>

                                                </div>
                                            </div>
                                        </div>

                                        <c:if test="${!empty system.subChief}">
                                            <div class="row">
                                                <div class="col-xs-12">
                                                    <h3 class="header smaller lighter orange">
                                                        <i class="ace-icon fa fa-graduation-cap"></i> 副首席专家
                                                    </h3>
                                                    <div class="row well">
                                                        <c:forEach items="${system.subChief}" var="name">
                                                            <%--<div class="col-xs-1">--%>
                                                            <div><h4 class="blue smaller lighter">${name}</h4>
                                                            </div>
                                                            <%--</div>--%>
                                                        </c:forEach>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
                                        <div class="row">
                                            <div class="col-xs-12">

                                                <h3 class="header smaller lighter green">
                                                    <i class="ace-icon fa fa-users"></i> 岗位专家（共${num.labManagerNum}人）
                                                </h3>
                                                <div class="row well">
                                                    <c:forEach items="${laboratories}" var="laboratory">
                                                        <c:if test="${laboratory.state eq 1}">
                                                            <c:forEach items="${laboratory.persons}" var="person">
                                                                <%--<div class="col-xs-1">--%>
                                                                <c:if test="${person.state eq 1}">
                                                                    <div>
                                                                        <h4 class="blue smaller lighter pull-left">
                                                                                ${person.name}&nbsp;&nbsp;&nbsp;&nbsp;
                                                                        </h4>
                                                                    </div>
                                                                </c:if>
                                                                <%--</div>--%>
                                                            </c:forEach>
                                                        </c:if>
                                                    </c:forEach>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-xs-12">

                                                <h3 class="header smaller lighter purple">
                                                    <i class="ace-icon fa fa-flask"></i>综合试验站站长（共${num.staManagerNum}人）
                                                </h3>
                                                <div class="row well">
                                                    <c:forEach items="${stations}" var="station">
                                                        <c:if test="${station.state eq 1 and station.person.state eq 1}">
                                                            <div>
                                                                <h4 class="blue smaller lighter pull-left">
                                                                        ${station.person.name}&nbsp;&nbsp;&nbsp;&nbsp;
                                                                </h4>
                                                            </div>
                                                        </c:if>
                                                        <%--</div>--%>
                                                    </c:forEach>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- /.page-content-area -->
                                </div>
                            </div>
                        </div>

                        <div id="tabs-3">
                            <div class="main-content">
                                <div class="page-content">
                                    <!-- #section:settings.box -->

                                    <!-- /section:settings.box -->
                                    <div class="page-content-area">
                                        <!-- /.page-header -->

                                        <div class="row">
                                            <div class="col-xs-12">
                                                <!-- PAGE CONTENT BEGINS -->
                                                <div class="row">
                                                    <div class="col-xs-12">
                                                        <c:forEach items="${laboratories}" var="laboratory">
                                                            <c:if test="${laboratory.state eq 1}">
                                                                <div class="row">
                                                                    <div class="col-xs-12">
                                                                        <div class="widget-box">
                                                                            <div class="widget-header widget-header-flat">
                                                                                <div><h3 class="widget-title smaller">
                                                                                        ${laboratory.labName}
                                                                                </h3></div>

                                                                            </div>

                                                                            <div class="widget-body">
                                                                                <div class="widget-main">
                                                                                    <dl id="dt-list-1"
                                                                                        class="ft dl-horizontal">
                                                                                        <dt>建设依托单位</dt>
                                                                                        <dd>${laboratory.company}</dd>
                                                                                        <dt>研究室主任</dt>
                                                                                        <dd>${laboratory.manager}（兼）</dd>
                                                                                        <dt>岗位专家</dt>

                                                                                        <dd>
                                                                                            <c:forEach
                                                                                                    items="${laboratory.persons}"
                                                                                                    var="person">
                                                                                                <c:if test="${person.state eq 1}">
                                                                                                    ${person.name}&nbsp;&nbsp;&nbsp;&nbsp;</c:if>
                                                                                            </c:forEach>

                                                                                        </dd>
                                                                                        <!-- 	<dd>张运海（安徽农业大学），陈宏权（安徽农业大学），庞训胜（安徽科技学院）</dd> -->
                                                                                    </dl>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="hr hr-double dotted"></div>
                                                            </c:if>
                                                        </c:forEach>
                                                        <div class="row">
                                                            <div class="col-sm-5 pull-right">
                                                                <h4 class="pull-right">
                                                                    功能研究室数 : <span class="red">${num.labNum}</span>个
                                                                </h4>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>


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

                        </div>
                        <!--tabs-3结束-->

                        <div id="tabs-4">
                            <div class="main-content">
                                <!-- #section:basics/content.breadcrumbs -->

                                <!-- /section:basics/content.breadcrumbs -->
                                <div class="page-content">
                                    <!-- #section:settings.box -->

                                    <!-- /section:settings.box -->
                                    <div class="page-content-area">
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <!-- PAGE CONTENT BEGINS -->
                                                <div>
                                                    <table class="table table-striped table-bordered">
                                                        <thead>
                                                        <tr>
                                                            <th class="tb_th text-center">综合试验站名称</th>
                                                            <th class="hidden-xs tb_th text-center">建设依托单位</th>
                                                            <th class="hidden-480 tb_th text-center">站长</th>

                                                        </tr>
                                                        </thead>

                                                        <tbody class="tb_tb">

                                                        <c:forEach items="${stations}" var="station">
                                                            <c:if test="${station.state eq 1}">
                                                                <tr>
                                                                    <td>
                                                                        <div>${station.staName}</div>
                                                                    </td>
                                                                    <td class="hidden-xs">${station.company}</td>
                                                                    <td class="hidden-480 text-center">${station.manager}</td>
                                                                </tr>
                                                            </c:if>
                                                        </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </div>

                                                <div class="hr hr8 hr-double hr-dotted"></div>
                                                <div class="row">
                                                    <div class="col-sm-5 pull-right">
                                                        <h4 class="pull-right">
                                                            综合试验站数 : <span class="red">${num.staNum}</span>个
                                                        </h4>
                                                    </div>
                                                </div>
                                                <div class="space-6"></div>
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

                        </div>


                        <div id="tabs-5">
                            <!--<p>Proin elit arcu, rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin mi sit amet mauris. Nam elementum quam ullamcorper ante. Duis orci. Aliquam sodales tortor vitae ipsum. Ut et mauris vel pede varius sollicitudin.</p>-->
                            <div class="main-content">
                                <div class="page-content">

                                    <div class="page-content-area">
                                        <div class="row">
                                            <div class="col-xs-12">

                                                <h3 class="header smaller lighter red"
                                                    style="text-indent:2em; line-height:35px ">
                                                    ${system.overview}
                                                </h3>

                                            </div>
                                        </div>


                                    </div>
                                    <!-- /.page-content-area -->
                                </div>
                            </div>
                        </div>
                        <!--tabs-4结束-->
                    </div>
                </div>
                <!-- ./col -->
                <br/>
            </div>
            <!-- /.page-content-area -->
        </div>
        <!-- /.page-content -->
    </div>
    <!-- /.main-content -->

    <%--<div class="footer">--%>
    <%--<div class="footer-inner">--%>
    <%--<!-- #section:basics/footer -->--%>
    <%--<div class="footer-content">--%>
    <%--<span class="bigger-120"> <span class="blue bolder">安徽农业大学数字农业研究所--%>
    <%--</span> &copy; 2017-2018（测试版）--%>
    <%--</span> &nbsp; &nbsp; <span class="action-buttons"> <a href="#">--%>
    <%--<i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>--%>
    <%--</a> <a href="#"> <i--%>
    <%--class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>--%>
    <%--</a> <a href="#"> <i--%>
    <%--class="ace-icon fa fa-rss-square orange bigger-150"></i>--%>
    <%--</a>--%>
    <%--</span>--%>
    <%--</div>--%>

    <%--<!-- /section:basics/footer -->--%>
    <%--</div>--%>
    <%--</div>--%>

    <%--<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse"> <i--%>
    <%--class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>--%>
    <%--</a>--%>
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
    if ('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
</script>
<!-- page specific plugin scripts -->
<script src="assets/js/jquery-ui.min.js"></script>
<script src="assets/js/jquery.ui.touch-punch.min.js"></script>

<script type="text/javascript">
    if ('ontouchstart' in document.documentElement)
        document
            .write("<script src='assets/js/jquery.mobile.custom.min.js'>" +
                "<" + "/script>");
</script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/ace-elements.min.js"></script>
<script src="assets/js/ace.min.js"></script>

<script type="text/javascript">
    jQuery(function ($) {
        $("#tabs").tabs();
    });
</script>
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
</body>

</html>