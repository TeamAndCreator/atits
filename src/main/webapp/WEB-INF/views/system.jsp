<%--
  Created by IntelliJ IDEA.
  User: James
  Date: 2017/8/20
  Time: 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>体系管理</title>

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
        <div class="page-content">
            <!-- /section:settings.box -->
            <div class="page-content-area">
                <div class="row">
                    <div class="col-lg-8 col-md-9 col-sm-11">
                        <h1 class="header smaller lighter blue">体系管理</h1>
                        <br/>

                        <div>
                            <table id="sample-table-1"
                                   class="table table-striped table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th class="center col-sm-1"><label class="position-relative">
                                        <input type="checkbox" class="ace"/> <span class="lbl"></span>
                                    </label></th>
                                    <th class="text-center">编号</th>
                                    <th class="text-center">体系名称</th>

                                </tr>
                                </thead>

                                <tbody>
                                <c:forEach items="${systems}" var="system">
                                    <tr>
                                        <td class="center col-md-1 subcheck"><label
                                                class="position-relative"> <input type="checkbox"
                                                                                  class="ace" name="subcheck"
                                                                                  value="${system.id}"/> <span
                                                class="lbl"></span>
                                        </label></td>
                                        <td>${system.id}</td>
                                        <td>
                                            <a href="system_detail1?id=${system.id}">${system.sysName}</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <form action="" method="POST" id="form">
                                  <input type="hidden" name="_method" value="DELETE"/>       
                            </form>
                        </div>


                        <div id="updata" class="modal fade" tabindex="-1">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header no-padding">
                                        <div class="table-header">
                                            <button type="button" class="close" data-dismiss="modal"
                                                    aria-hidden="true">
                                                <span class="white">&times;</span>
                                            </button>
                                            添加
                                        </div>
                                    </div>
                                    <form action="${pageContext.request.contextPath}/system_save"
                                          class="form-horizontal" method="post" id="add">
                                        <input type="hidden" name="_method" value="PUT">
                                        <input type="hidden" name="id" id="id1">
                                        <div class="modal-body no-padding">
                                            <div class="space-18"></div>
                                            <div class="form-group has-warning">
                                                <label for="sysName1"
                                                       class="col-xs-12 col-sm-3 control-label no-padding-right">体系名称</label>

                                                <div class="col-xs-12 col-sm-5">
										            <span class="block input-icon input-icon-right"> <input
                                                            type="text" id="sysName1" class="width-100"
                                                            name="sysName"/>
											            <i class="ace-icon fa fa-leaf"></i>
										            </span>
                                                </div>

                                            </div>
                                            <div class="form-group has-success">
                                                <label class="col-sm-3 control-label no-padding-right"> 体系简介 </label>
                                                <div class="col-xs-12 col-sm-5">
										<textarea name="content" id="content1"
                                                  class="autosize-transition form-control"
                                        ></textarea>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="modal-footer no-margin-top">
                                            <button class="btn btn-sm btn-default pull-left"
                                                    data-dismiss="modal">
                                                <i class="ace-icon fa fa-times"></i>关闭
                                            </button>
                                            <button class="btn btn-sm btn-success pull-right" type="submit">
                                                <i class="ace-icon fa fa-check"></i>提交
                                            </button>
                                        </div>
                                    </form>
                                </div>
                                <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
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
</div>
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
        var oTable1 = $('#sample-table-1')
        //.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
            .dataTable({
                "sDom": "<'row'<'col-md-5 toolbar'><'col-md-3'l><'col-md-4'f>r>t<'row'<'col-md-4'i><'col-md-8'p>>",
                "bAutoWidth": false,
                "aoColumns": [{
                    "bSortable": false
                }, null, null],
                "aaSorting": [],

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
        $("div.toolbar").html('<div class="action-buttons"><a class="btn btn-xs btn-primary" href="system_add"> <i\n' +
            '                                    class="ace-icon fa  bigger-130">+添加</i>\n' +
            '                            </a> <a class="btn btn-xs btn-danger red" href="#"> <i\n' +
            '                                class="ace-icon fa  bigger-130">×删除</i>\n' +
            '                        </a>\n' +
            '                        </div>');

        oTable1.add({"pagingType": "full_numbers"});

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

<script type="text/javascript">


    function system_detail(id) {
        $.ajax({
            url: 'system_detail_ajax',
            type: 'post',
            data: {
                'id': id
            },
            dataType: 'json',
            success: function (result) {


                console.log(result);
                $("#sysName1").val(result.sysName);
                $("#id1").val(result.id);
                $("#content1").val(result.content);

            }
        });
    }


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
<script src="assets/js/atits-js/system.js"></script>
</body>
</html>
