<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>综合试验站</title>

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
<div id="main-container" class="main-container">
    <div class="main-content">
        <div class="page-content">
            <div class="page-content-area">
                <div class="row">
                    <div class="col-xs-12">

                        <div class="row">
                            <div class="col-xs-12">
                                <h1 class="header smaller lighter blue">综合试验站</h1>
                                <br/>
                                <div class="action-buttons">
                                    <c:if test="${person.permission == 1}">
                                        <a class="btn btn-sm btn-primary" href="station_add"> <i
                                                class="ace-icon fa  bigger-130">+添加</i>
                                        </a>
                                        <a class="btn btn-sm btn-danger" href="#">
                                            <i class="ace-icon fa  bigger-130">×删除</i>
                                        </a>
                                    </c:if>
                                </div>

                                <div>
                                    <table id="sample-table-2"
                                           class="table table-striped table-bordered table-hover"
                                           width="100%">
                                        <thead>
                                        <tr>
                                            <c:if test="${person.permission == 1}">
                                                <th class="center col-sm-1"><label class="position-relative">
                                                    <input type="checkbox" class="ace"/> <span class="lbl"></span>
                                                </label></th>
                                            </c:if>
                                            <th class="text-center col-sm-3">综合试验站名称</th>
                                            <th class="text-center col-sm-2">综合试验站站长</th>
                                            <th class="text-center col-sm-2">所属体系</th>
                                            <th class="hidden-480 text-center col-sm-3">建设依托单位</th>
                                            <c:if test="${person.permission eq 1}">
                                                <th class="hidden-480 text-center col-sm-1" >状态</th>
                                            </c:if>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:choose>
                                            <c:when test="${person.permission == 1}">
                                                <c:forEach items="${stations}" var="station">
                                                    <tr>
                                                        <td class="center">
                                                            <label class="position-relative">
                                                                <input type="checkbox" class="ace" name="subcheck"
                                                                       value="${station.id}"/>
                                                                <span class="lbl"></span>
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <a href="station_detail?id=${station.id}" role="button"
                                                               class="blue" data-toggle="modal">${station.staName}
                                                            </a>
                                                        </td>
                                                        <td class="hidden-480">${station.manager}</td>
                                                        <td>${station.system.sysName}</td>
                                                        <td>${station.company}</td>
                                                        <c:choose>
                                                            <c:when test="${station.state==0}">
                                                                <td class="hidden-480">
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-xs state"
                                                                            id="${station.id}">审&nbsp;&nbsp;&nbsp;&nbsp;核
                                                                    </button>
                                                                </td>
                                                            </c:when>
                                                            <c:when test="${station.state==1}">
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
                                            </c:when>

                                            <c:otherwise>
                                                <c:forEach items="${stations}" var="station">
                                                    <c:if test="${station.state == 1 || person.system.sysName == station.system.sysName && station.state == 2}">
                                                        <tr>
                                                            <td><a href="station_detail?id=${station.id}" role="button"
                                                                   class="blue"
                                                                   data-toggle="modal">${station.staName}</a>
                                                            </td>
                                                            <td class="hidden-480">${station.manager}</td>
                                                            <td>${station.system.sysName}</td>
                                                            <td>${station.company}</td>
                                                        </tr>
                                                    </c:if>
                                                </c:forEach>
                                            </c:otherwise>
                                        </c:choose>
                                        </tbody>
                                    </table>

                                    <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog"
                                         aria-labelledby="mySmallModalLabel" id="mySmallModalLabel"
                                         style="position: absolute;top: 50%;left: 50%;transform: translateX(-50%) translateY(-50%);">
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
                                                    <input name="shenhe" type="radio" value="2"/>不通过
                                                    <input type="hidden" id="state_id"/>
                                                </div>

                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-sm btn-default"
                                                            data-dismiss="modal">取消
                                                    </button>
                                                    <button type="button" class="submit btn btn-sm btn-primary">提交
                                                    </button>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <form action="" method="POST">
                                        <input type="hidden" name="_method" value="DELETE"/>
                                    </form>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript">
    window.jQuery
    || document.write("<script src='assets/js/jquery.min.js'>"
        + "<" + "/script>");
</script>

<script type="text/javascript">
    if ('ontouchstart' in document.documentElement)
        document
            .write("<script src='assets/js/jquery.mobile.custom.min.js'>"
                + "<" + "/script>");
</script>
<script src="assets/js/bootstrap.min.js"></script>

<script src="assets/js/jquery.dataTables.min.js"></script>
<script src="assets/js/jquery.dataTables.bootstrap.js"></script>
<script src="assets/js/ace-elements.min.js"></script>
<script src="assets/js/ace.min.js"></script>
<script type="text/javascript">
    $(".state").click(function () {
        $("#state_id").val($(this).attr('id'));
        $('#mySmallModalLabel').modal('show');
    });

    $(".submit").click(function () {

        $.ajax({
            url: 'station_state',
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
        var oTable1 = $('#sample-table-2')
        //.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
            .dataTable({
                "aLengthMenu": [10, 25, 50],  //设置每页显示记录的下拉菜单
                bAutoWidth: true,
//                "bStateSave":true,//静态刷新不跳转
                <c:choose>
                <c:when test="${person.permission == 1}">
                "aoColumns": [{
                    "bSortable": false
                }, {
                    "sWidth": "200px"
                }, null, null, null, null],
                </c:when>
                <c:otherwise>
                "aoColumns": [{
                    "sWidth": "200px"
                }, null, null, null],
                </c:otherwise>
                </c:choose>
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
<script src="assets/js/atits-js/station.js"></script>
</body>

</html>