<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>通知公告</title>
    <meta name="description" content="Static &amp; notice Tables"/>
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


        <!-- /section:basics/content.breadcrumbs -->
        <div class="page-content">
            <!-- #section:settings.box -->

            <!-- /.ace-settings-container -->

            <!-- /section:settings.box -->
            <div class="page-content-area">
                <div class="row">
                    <div class="col-xs-12">
                        <h1 class="header smaller lighter blue">通知公告</h1>
                        <br/>
                        <!-- PAGE CONTENT BEGINS -->
                        <c:choose>
                            <c:when test="${person.permission ==1}">
                                <div class="action-buttons">
                                    <a class="btn btn-sm btn-primary" href="notice_add"> <i
                                            class="ace-icon fa  bigger-130">+添加</i>
                                    </a> <a class="btn btn-sm btn-danger red" href="#"> <i
                                        class="ace-icon fa  bigger-130">×删除</i>
                                </a>
                                    <a class="btn btn-sm green" href="#"> <i
                                            class="ace-icon fa  bigger-130">置顶</i>
                                    </a>
                                </div>
                                <!-- <div class="dataTables_borderWrap"> -->
                                <table id="sample-table-1" class="table table-hover table-bordered">
                                    <thead>
                                    <tr>
                                        <th class="text-center col-md-1 col-sm-1"><label class="position-relative">
                                            <input type="checkbox" class="ace"/> <span class="lbl"></span>
                                        </label></th>
                                        <th class="col-md-4 col-sm-5 text-center">标题</th>
                                        <th class="col-md-3 col-sm-2 text-center">发布者</th>
                                        <th class="col-md-2 col-sm-2 text-center">发布时间</th>
                                        <th class="col-md-2 col-sm-2 text-center">状态</th>

                                    </tr>
                                    </thead>

                                    <tbody>
                                    <c:forEach items="${notices}" var="notice">
                                        <tr>
                                            <td class="center col-md-1 subcheck"><label
                                                    class="position-relative"> <input type="checkbox"
                                                                                      class="ace" name="subcheck"
                                                                                      value="${notice.id}"/> <span
                                                    class="lbl"></span>
                                            </label></td>

                                            <td><a href="notice_detail?id=${notice.id}" role="button"
                                                   class="blue" data-toggle="modal">${notice.title}</a>
                                            </td>
                                            <td>${notice.system.sysName}</td>
                                            <td>${notice.time}</td>

                                            <c:choose>
                                                <c:when test="${notice.state==0}">
                                                    <td class="hidden-480">
                                                        <button type="button" class="btn btn-primary btn-xs state"
                                                                id="${notice.id}">审&nbsp;&nbsp;&nbsp;&nbsp;核
                                                        </button>
                                                            <%--<input id="id-pills-stacked" checked="" type="checkbox" class="ace ace-switch ace-switch-5" />--%>
                                                            <%--<span class="lbl"></span>--%>
                                                    </td>
                                                </c:when>
                                                <c:when test="${notice.state==1}">
                                                    <td class="hidden-480">
                                                        <button
                                                                class="btn btn-success btn-xs disabled">通&nbsp;&nbsp;&nbsp;&nbsp;过
                                                        </button>

                                                    </td>
                                                </c:when>
                                                <c:otherwise>
                                                    <td class="hidden-480">
                                                        <button
                                                                class="btn btn-danger btn-xs disabled">未通过
                                                        </button>
                                                    </td>
                                                </c:otherwise>
                                            </c:choose>

                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                                <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog"
                                     aria-labelledby="mySmallModalLabel" id="mySmallModalLabel">
                                    <div class="modal-dialog modal-sm" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal"
                                                        aria-label="Close"><span aria-hidden="true">&times;</span>
                                                </button>
                                                <h4 class="modal-title" id="gridSystemModalLabel">审核</h4>
                                            </div>
                                            <div class="modal-body">

                                                <input name="shenhe" type="radio" value="1"/>通过&nbsp;&nbsp;&nbsp;&nbsp;
                                                <input name="shenhe" type="radio" value="2"/>未通过
                                                <input type="hidden" id="state_id"/>
                                            </div>

                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-sm btn-default"
                                                        data-dismiss="modal">取消
                                                </button>
                                                <button type="button" class="submit btn btn-sm btn-primary">提交</button>
                                            </div>

                                        </div>
                                    </div>
                                </div>

                                <form action="" method="POST" class="form_put">
                                      <input type="hidden" name="_method" value="PUT"/>       
                                </form>
                                <form action="" method="POST" class="form_delete">
                                      <input type="hidden" name="_method" value="DELETE"/>       
                                </form>

                            </c:when>
                            <c:when test="${person.permission ==2}">
                                <div class="action-buttons">
                                    <a class="btn btn-sm btn-primary" href="notice_add"> <i
                                            class="ace-icon fa  bigger-130">+添加</i>
                                    </a> <a class="btn btn-sm btn-danger red" href="#"> <i
                                        class="ace-icon fa  bigger-130">×删除</i>
                                </a>
                                </div>
                                <!-- <div class="dataTables_borderWrap"> -->
                                <table id="sample-table-1" class="table table-hover table-bordered">
                                    <thead>
                                    <tr>
                                        <th class="text-center col-md-1 col-sm-1"></th>
                                        <th class="col-md-4 col-sm-5 text-center">标题</th>
                                        <th class="col-md-3 col-sm-2 text-center">发布者</th>
                                        <th class="col-md-2 col-sm-2 text-center">发布时间</th>
                                        <th class="col-md-2 col-sm-2 text-center">状态</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${notices}" var="notice">
                                        <c:if test="${notice.state==1 || notice.system.id==person.system.id && notice.editor.system.id==person.system.id}">
                                            <tr>
                                                <c:choose>
                                                    <c:when test="${notice.system.id==person.system.id && notice.state!=0 && notice.editor.system.id==person.system.id}">
                                                        <td class="center col-md-1 subcheck"><label
                                                                class="position-relative"> <input type="checkbox"
                                                                                                  class="ace"
                                                                                                  name="subcheck"
                                                                                                  value="${notice.id}"/>
                                                            <span
                                                                    class="lbl"></span>
                                                        </label></td>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <td class="center col-md-1 subcheck"><label
                                                                class="position-relative"> <input type="checkbox"
                                                                                                  class="ace"
                                                                                                  name="subcheck"
                                                                                                  disabled="true"
                                                                                                  value="${notice.id}"/>
                                                            <span
                                                                    class="lbl"></span>
                                                        </label></td>
                                                    </c:otherwise>
                                                </c:choose>
                                                <td><a href="notice_detail?id=${notice.id}" role="button"
                                                       class="blue" data-toggle="modal">${notice.title}</a>
                                                </td>
                                                <td>${notice.system.sysName}</td>
                                                <td>${notice.time}</td>

                                                <c:choose>
                                                    <c:when test="${notice.state==0}">
                                                        <td class="hidden-480">
                                                            <button type="button"
                                                                    class="btn btn-primary btn-xs disabled">审核中
                                                            </button>
                                                        </td>
                                                    </c:when>
                                                    <c:when test="${notice.state==1}">
                                                        <td class="hidden-480">
                                                            <button
                                                                    class="btn btn-success btn-xs disabled">通&nbsp;&nbsp;&nbsp;&nbsp;过
                                                            </button>
                                                        </td>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <td class="hidden-480">
                                                            <button
                                                                    class="btn btn-danger btn-xs disabled">未通过
                                                            </button>
                                                        </td>
                                                    </c:otherwise>
                                                </c:choose>
                                            </tr>
                                        </c:if>
                                    </c:forEach>
                                    </tbody>
                                </table>

                                <form action="" method="POST" class="form_put">
                                      <input type="hidden" name="_method" value="PUT"/>       
                                </form>
                                <form action="" method="POST" class="form_delete">
                                      <input type="hidden" name="_method" value="DELETE"/>       
                                </form>

                            </c:when>
                            <c:otherwise>
                                <table id="sample-table-3" class="table table-hover table-bordered">
                                    <thead>
                                    <tr>
                                        <th class="text-center col-md-1 col-sm-1"></th>
                                        <th class="col-md-5 col-sm-5 text-center">标题</th>
                                        <th class="col-md-3 col-sm-3 text-center">发布者</th>
                                        <th class="col-md-3 col-sm-3 text-center">发布时间</th>

                                    </tr>
                                    </thead>

                                    <tbody>
                                    <c:forEach items="${notices}" var="notice">
                                        <c:if test="${notice.state == 1 && notice.system.id==1 || notice.state == 1 && notice.system.id == person.system.id}">
                                            <tr>
                                                <td></td>
                                                <td><a href="notice_detail?id=${notice.id}" role="button"
                                                       class="blue" data-toggle="modal">${notice.title}</a>
                                                </td>
                                                <td>${notice.system.sysName}</td>
                                                <td>${notice.time}</td>
                                            </tr>
                                        </c:if>
                                    </c:forEach>
                                    </tbody>
                                </table>

                            </c:otherwise>
                        </c:choose>
                        <!-- /.row -->
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
    $(".state").click(function () {
        $("#state_id").val($(this).attr('id'));
        $('#mySmallModalLabel').modal('show');
    });

    $(".submit").click(function () {

        $.ajax({
            url: 'notice_state',
            type: 'post',
            data: {
                "id": $("#state_id").val(),
                'val': $("input[name='shenhe']:checked").val()
            },
            dataType: 'json',
            success: function (result) {
                $('#' + $("#state_id").val()).addClass('disabled');
                if (result == 1) {
                    $('#' + $("#state_id").val()).removeClass("btn-primary").addClass("disabled btn-success").html("通&nbsp;&nbsp;&nbsp;&nbsp;过");

                }
                else {
                    $('#' + $("#state_id").val()).removeClass("btn-primary").addClass("disabled btn-danger").html("未通过");
                }
            }
        });
        $('#mySmallModalLabel').modal('hide');
    })
</script>
<script type="text/javascript">
    jQuery(function ($) {
        var oTable1 = $('#sample-table-1')
        //.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
            .dataTable({
                bAutoWidth: false,
                "aoColumns": [{
                    "bSortable": false
                }, null, null, null, null],
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

        var oTable2 = $('#sample-table-2')
        //.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
            .dataTable({
                bAutoWidth: false,
                "aoColumns": [{
                    "bSortable": false
                }, null, null, null],
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

        var oTable3 = $('#sample-table-3')
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
        /**
         var tableTools = new $.fn.dataTable.TableTools( oTable1, {
				"sSwfPath": "copy_csv_xls_pdf.swf",
			    "buttons": [
			        "copy",
			        "csv",
			        "xls",
					"pdf",
			        "print"
			    ]
			} );
         $( tableTools.fnContainer() ).insertBefore('#sample-table-2');
         */

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
<script src="assets/js/atits-js/notice.js"></script>
</body>
</html>
