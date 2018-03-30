<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>文件下载中心</title>
    <meta name="description" content="Static &amp; Dynamic Tables"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="assets/css/font-awesome.min.css"/>

    <!-- page specific plugin styles -->
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

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

    <!--[if lte IE 8]>
    <script src="assets/js/html5shiv.min.js"></script>
    <script src="assets/js/respond.min.js"></script>
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
        <!-- #section:basics/content.breadcrumbs -->
        <%--<div class="breadcrumbs" id="breadcrumbs">--%>
        <%--<script type="text/javascript">--%>
        <%--try {--%>
        <%--ace.settings.check('breadcrumbs', 'fixed')--%>
        <%--} catch (e) {--%>
        <%--}--%>
        <%--</script>--%>

        <%--<ul class="breadcrumb">--%>
        <%--<li><i class="ace-icon fa fa-home home-icon"></i>--%>
        <%--<a href="#">首页</a>--%>
        <%--</li>--%>
        <%--<li class="active">下载中心</li>--%>
        <%--</ul>--%>
        <%--<!-- /.breadcrumb -->--%>

        <%--</div>--%>

        <!-- /section:basics/content.breadcrumbs -->
        <div class="page-content">
            <h1 class="header smaller lighter blue">下载中心</h1>
            <!-- #section:settings.box -->

            <!-- /.ace-settings-container -->

            <!-- /section:settings.box -->
            <div class="page-content-area">
                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->
                        <!-- /.row -->

                        <!-- <div class="dataTables_borderWrap"> -->

                        <c:choose>
                            <c:when test="${person.permission eq 1}">
                                <table id="sample-table-2" class="table table-hover table-bordered">
                                    <thead>
                                    <tr>
                                        <th class="center"><label class="position-relative">
                                            <input type="checkbox" class="ace"/> <span class="lbl"></span>
                                        </label></th>
                                        <th class="center">文件名</th>
                                        <th class="center">发布者</th>
                                        <th class="center">文件来源</th>
                                        <th class="center">时间</th>
                                        <th class="center"></th>
                                    </tr>
                                    </thead>

                                    <tbody>
                                    <c:forEach items="${filess}" var="files">
                                        <c:if test="${fn:contains(files.fileType,'通知公告') or fn:contains(files.fileType,'体系动态') or fn:contains(files.fileType,'规章制度') or fn:contains(files.fileType,'重大文件')}">
                                            <tr>
                                                <td class="center col-md-1 subcheck"><label
                                                        class="position-relative"> <input type="checkbox"
                                                                                          class="ace" name="subcheck"
                                                                                          value="${files.id}"/> <span
                                                        class="lbl"></span>
                                                </label></td>
                                                <td><a href="files_download/${files.id}" role="button"
                                                       class="blue" data-toggle="modal">${files.title}</a>
                                                </td>
                                                <td><span>${files.system.sysName}</span></td>
                                                <td><span>${files.fileType}</span></td>
                                                <td>${files.time}</td>
                                                <td class="text-right">
                                                    <div class="left hidden-sm hidden-xs action-buttons">
                                                        <a class="green" href="files_download/${files.id}"
                                                           title="下载"> <i
                                                                class="ace-icon fa fa-cloud-download  bigger-130"></i>
                                                        </a>
                                                    </div>
                                                </td>


                                            </tr>
                                        </c:if>

                                    </c:forEach>
                                    </tbody>
                                </table>
                            </c:when>
                            <c:when test="${person.permission eq 2}">
                                <table id="sample-table-2" class="table table-hover table-bordered">
                                    <thead >
                                    <tr >
                                        <th class="center" ><label class="position-relative center">
                                            <input type="checkbox" class="ace center"/> <span class="lbl"></span>
                                        </label></th>
                                        <th class="center">文件名</th>
                                        <th class="center">发布者</th>
                                        <th class="center">文件来源</th>
                                        <th class="center">时间</th>
                                        <th class="center"></th>
                                    </tr>
                                    </thead>

                                    <tbody>
                                    <c:forEach items="${filess}" var="files">
                                        <c:if test="${fn:contains(files.fileType,'通知公告') or fn:contains(files.fileType,'重大文件')}">
                                            <tr>
                                                <td class="center col-md-1 subcheck"><label
                                                        class="position-relative"> <input type="checkbox"
                                                                                          class="ace" name="subcheck"
                                                                                          value="${files.id}"/> <span
                                                        class="lbl"></span>
                                                </label></td>
                                                <td><a href="files_download/${files.id}" role="button"
                                                       class="blue" data-toggle="modal">${files.title}</a>
                                                </td>
                                                <td><span>${files.system.sysName}</span></td>
                                                <td><span>${files.fileType}</span></td>
                                                <td>${files.time}</td>
                                                <td class="text-right">
                                                    <div class="left hidden-sm hidden-xs action-buttons">
                                                        <a class="green" href="files_download/${files.id}"
                                                           title="下载"> <i
                                                                class="ace-icon fa fa-cloud-download  bigger-130"></i>
                                                        </a>
                                                    </div>
                                                </td>


                                            </tr>
                                        </c:if>
                                        <c:if test="${fn:contains(files.fileType,'体系动态') or fn:contains(files.fileType,'规章制度' )}">
                                            <c:if test="${files.state eq 3}">
                                                <tr>
                                                    <td class="center col-md-1 subcheck"><label
                                                            class="position-relative"> <input type="checkbox"
                                                                                              class="ace"
                                                                                              name="subcheck"
                                                                                              value="${files.id}"/>
                                                        <span
                                                                class="lbl"></span>
                                                    </label></td>
                                                    <td><a href="files_download/${files.id}" role="button"
                                                           class="blue" data-toggle="modal">${files.title}</a>
                                                    </td>
                                                    <td ><span>${files.system.sysName}</span></td>
                                                    <td ><span>${files.fileType}</span></td>
                                                    <td >${files.time}</td>
                                                    <td class="text-right">
                                                        <div class="left hidden-sm hidden-xs action-buttons">
                                                            <a class="green" href="files_download/${files.id}"
                                                               title="下载"> <i
                                                                    class="ace-icon fa fa-cloud-download  bigger-130"></i>
                                                            </a>
                                                        </div>
                                                    </td>


                                                </tr>
                                            </c:if>
                                            <c:if test="${files.state eq 1}">
                                                <c:if test="${files.system.id eq 1 or files.system.id eq person.system.id}">
                                                    <tr>
                                                        <td class="center col-md-1 subcheck"><label
                                                                class="position-relative"> <input type="checkbox"
                                                                                                  class="ace"
                                                                                                  name="subcheck"
                                                                                                  value="${files.id}"/>
                                                            <span
                                                                    class="lbl"></span>
                                                        </label></td>
                                                        <td><a href="files_download/${files.id}" role="button"
                                                               class="blue" data-toggle="modal">${files.title}</a>
                                                        </td>
                                                        <td ><span>${files.system.sysName}</span></td>
                                                        <td ><span>${files.fileType}</span></td>
                                                        <td >${files.time}</td>
                                                        <td class="text-right">
                                                            <div class="left hidden-sm hidden-xs action-buttons">
                                                                <a class="green" href="files_download/${files.id}"
                                                                   title="下载"> <i
                                                                        class="ace-icon fa fa-cloud-download  bigger-130"></i>
                                                                </a>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </c:if>
                                            </c:if>
                                        </c:if>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </c:when>
                            <c:otherwise>
                                <table id="sample-table-2" class="table table-hover table-bordered">
                                    <thead>
                                    <tr>
                                        <th class="center"><label class="position-relative">
                                            <input type="checkbox" class="ace"/> <span class="lbl"></span>
                                        </label></th>
                                        <th class="center">文件名</th>
                                        <th class="center">发布者</th>
                                        <th class="center">文件来源</th>
                                        <th class="center">时间</th>
                                        <th class="center"></th>
                                    </tr>
                                    </thead>

                                    <tbody>
                                    <c:forEach items="${filess}" var="files">
                                        <c:if test="${files.system.id eq 1 or files.system.id eq person.system.id}">
                                            <tr>
                                                <td class="center col-md-1 subcheck"><label
                                                        class="position-relative"> <input type="checkbox"
                                                                                          class="ace" name="subcheck"
                                                                                          value="${files.id}"/> <span
                                                        class="lbl"></span>
                                                </label></td>
                                                <td><a href="files_download/${files.id}" role="button"
                                                       class="blue" data-toggle="modal">${files.title}</a>
                                                </td>
                                                <td ><span>${files.system.sysName}</span></td>
                                                <td ><span>${files.fileType}</span></td>
                                                <td >${files.time}</td>
                                                <td class="text-right">
                                                    <div class="left hidden-sm hidden-xs action-buttons">
                                                        <a class="green" href="files_download/${files.id}"
                                                           title="下载"> <i
                                                                class="ace-icon fa fa-cloud-download  bigger-130"></i>
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </c:if>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </c:otherwise>
                        </c:choose>
                          


                        <form action="" method="POST">
                              <input type="hidden" name="_method" value="DELETE"/>       
                        </form>
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
<!-- /.main-content -->

<div class="footer">
    <div class="footer-inner">
        <!-- #section:basics/footer -->
        <div class="footer-content">
				<span class="bigger-120"> <span class="blue bolder">安徽农业大学数字农业研究所
				</span> &copy; 2017-2018（测试版）
				</span>
        </div>

        <!-- /section:basics/footer -->
    </div>
</div>

<a href="#" id="btn-scroll-up"
   class="btn-scroll-up btn btn-sm btn-inverse"> <i
        class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
</a>
<!-- /.main-container -->

<!-- basic scripts -->

<!--[if !IE]> -->
<script type="text/javascript">
    window.jQuery
    || document.write("<script src='assets/js/jquery.min.js'>"
        + "<" + "/script>");
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
            .write("<script src='assets/js/jquery.mobile.custom.min.js'>"
                + "<" + "/script>");
</script>
<script src="assets/js/bootstrap.min.js"></script>

<!-- page specific plugin scripts -->
<script src="assets/js/jquery.dataTables.min.js"></script>
<script src="assets/js/jquery.dataTables.bootstrap.js"></script>

<!-- ace scripts -->
<script src="assets/js/ace-elements.min.js"></script>
<script src="assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->
<script type="text/javascript">
    jQuery(function ($) {
        var oTable1 = $('#sample-table-2')
        //.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
            .dataTable({
                bAutoWidth: false,
                "aoColumns": [{
                    "bSortable": false
                }, {
                    "bSortable": false
                }, {
                    "bSortable": false
                }, {
                    "bSortable": false
                }, {
                    "bSortable": true
                }, {
                    "bSortable": false
                }],
                "aaSorting": [],

                "searching": true,// 搜索
                "bPaginate": true,//显示（使用）分页器
                "pagingType": "full_numbers",//分页样式的类型
                "oLanguage": {//语言设置
                    "sLengthMenu": "每页显示 _MENU_ 条记录",
                    "sZeroRecords": "没有检索到数据",
                    "sSearch": "搜索",
                    "sInfo": "当前显示 _START_ 到 _END_ 条，共 _TOTAL_ 条记录",
                    "sInfoEmtpy": "没有数据",
                    "sProcessing": '<i class="fa fa-coffee"></i> 正在加载数据...',
                    "oPaginate": {
                        "sFirst": "首页",
                        "sPrevious": "前一页",
                        "sNext": "后一页",
                        "sLast": "尾页"
                    }
                }
            });
        $(document).on(
            'click',
            'th input:checkbox',
            function () {
                var that = this;
                $(this).closest('table').find(
                    'tr > td:first-child input:checkbox').each(
                    function () {
                        this.checked = that.checked;
                        $(this).closest('tr').toggleClass(
                            'selected');
                    });
            });

        $('[data-rel="tooltip"]').tooltip({
            placement: tooltip_placement
        });

        function tooltip_placement(context, source) {
            var $source = $(source);
            var $parent = $source.closest('table')
            var off1 = $parent.offset();
            var w1 = $parent.width();

            var off2 = $source.offset();
            //var w2 = $source.width();

            if (parseInt(off2.left) < parseInt(off1.left)
                + parseInt(w1 / 2))
                return 'right';
            return 'left';
        }

    })
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
<!-- 引入js -->
<script src="assets/js/atits-js/files.js"></script>
<script src="assets/js/atits-js/files_add.js"></script>
</body>
</html>
