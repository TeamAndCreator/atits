<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>考评启动管理</title>

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
                    <div class="col-lg-11 col-md-12 col-sm-12">
                        <h1 class="header smaller lighter blue">考评启动管理</h1>
                        <br/>
                        <div class="action-buttons">
                            <a class="btn btn-sm btn-primary" href="test_start_add?sysId=${person.system.id}"> <i
                                    class="ace-icon fa  bigger-130">+添加</i>
                            </a>
                            <a class="btn btn-sm btn-danger red" href="#"> <i
                                class="ace-icon fa  bigger-130">×删除</i>
                        </a>
                        </div>
                        <div>
                            <table id="sample-table-1"
                                   class="table table-striped table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th class="center col-sm-1">
                                        <%--<label class="position-relative">--%>
                                        <%--<input type="checkbox" class="ace"/> <span class="lbl"></span>--%>
                                    <%--</label>--%>
                                    </th>
                                    <th class="text-center">考评年度</th>
                                    <th class="text-center">考评人员</th>
                                    <th class="text-center">考评日期</th>
                                    <th class="text-center">考评地点</th>
                                    <th class="text-center">状态</th>
                                </tr>
                                </thead>

                                <tbody>
                                <c:forEach var="map" items="${List}">
                                <tr>
                                    <c:choose>
                                        <c:when test="${map.testStarts.state == 1}">
                                            <td class="center col-md-1 subcheck"><label
                                                    class="position-relative"> <input type="checkbox"
                                                                                      class="ace" name="subcheck" disabled="true"
                                                                                      value="${map.testStarts.id}"/> <span
                                                    class="lbl"></span>
                                            </label></td>
                                        </c:when>
                                        <c:otherwise>
                                            <td class="center col-md-1 subcheck"><label
                                                    class="position-relative"> <input type="checkbox"
                                                                                      class="ace" name="subcheck"
                                                                                      value="${map.testStarts.id}"/> <span
                                                    class="lbl"></span>
                                            </label></td>
                                        </c:otherwise>
                                    </c:choose>

                                    <td>${map.testStarts.year}</td>

                                    <td><a href="#"  data-toggle="modal" class="staff">考评人员</a>
                                    </td>

                                    <td>${map.testStarts.date}</td>
                                    <td>${map.testStarts.address}</td>
                                    <%--<td>${map.testStarts.state}</td>--%>
                                    <c:choose>
                                        <c:when test="${map.testStarts.state==0}">
                                            <td class="hidden-480">
                                                <button type="button" class="btn btn-primary btn-xs state"
                                                        id="${map.testStarts.id}">启动考评
                                                </button>
                                            </td>
                                        </c:when>
                                        <c:when test="${map.testStarts.state==1}">
                                            <td class="hidden-480">
                                                    <button type="button" class="btn btn-success btn-xs state1"
                                                            id="${map.testStarts.id}">考&nbsp;评&nbsp;中
                                                    </button>
                                            </td>
                                        </c:when>
                                        <c:otherwise>
                                            <td class="hidden-480">
                                                <button
                                                        class="btn btn-danger btn-xs disabled">考评结束
                                                </button>
                                            </td>
                                        </c:otherwise>
                                    </c:choose>
                                </tr>
                                </c:forEach>
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
                                            <%--<h4 class="modal-title" id="gridSystemModalLabel">确定是否启动考评？</h4>&nbsp;&nbsp;&nbsp;&nbsp;--%>
                                        </div>
                                        <div class="modal-body">
                                            <input name="kaoping" type="radio" value="1"/>确定是否启动考评？
                                            <%--<input name="kaoping" type="radio" value="2"/>否--%>
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

                            <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog"
                                 aria-labelledby="mySmallModalLabel1" id="mySmallModalLabel1"
                                 style="position: absolute;top: 50%;left: 50%;transform: translateX(-50%) translateY(-50%);">
                                <div class="modal-dialog modal-sm" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal"
                                                    aria-label="Close"><span aria-hidden="true">&times;</span>
                                            </button>
                                            <%--<h4 class="modal-title" id="gridSystemModalLabel">确定是否启动考评？</h4>&nbsp;&nbsp;&nbsp;&nbsp;--%>
                                        </div>
                                        <div class="modal-body">
                                            <input name="kaoping" type="radio" value="2"/>确定是否结束考评？
                                            <%--<input name="kaoping" type="radio" value="2"/>否--%>
                                            <input type="hidden" id="state_id1"/>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-sm btn-default"
                                                    data-dismiss="modal">取消
                                            </button>
                                            <button type="button" class="submit1 btn btn-sm btn-primary">提交</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <form action="" method="POST" id="form">
                                  <input type="hidden" name="_method" value="DELETE"/>       
                            </form>
                        </div>


                        <div id="updata" class="modal fade" tabindex="-1">

                            <!-- /.modal-dialog -->
                        </div>
                        <!-- PAGE CONTENT ENDS -->

                        <div id="modal-table" class="modal fade" tabindex="-1">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header no-padding">
                                        <div class="table-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                <span class="white">&times;</span>
                                            </button> 考评人员
                                        </div>
                                    </div>

                                    <div class="modal-body no-padding">
                                        <table class="table table-striped table-bordered table-hover no-margin-bottom no-border-top">
                                            <div class="main-content">
                                                <div class="page-content">

                                                    <div class="page-content-area">
                                                        <div class="row">
                                                            <div class="col-xs-12">
                                                                <h3 class="header smaller lighter red">
                                                                    <i class="ace-icon fa fa-flask"></i>体系内部人员
                                                                </h3>
                                                                <div class="row well" id="nen_id">
                                                                    <c:forEach var="map" items="${List}">

                                                                        <c:forEach var="expert" items="${map.sysPers}">
                                                                            ${expert.name}
                                                                        </c:forEach>
                                                                    </c:forEach>

                                                                    <%--<c:forEach var="map1" items="${List1}">--%>
                                                                        <%--&lt;%&ndash;<c:if test="${map.testStarts.id == map1.testStarts.id}">&ndash;%&gt;--%>
                                                                            <%--<c:forEach var="person" items="${map1.sysPers}">--%>
                                                                                <%--<h4 class="blue col-sm-3">--%>
                                                                                        <%--${person[5]}&nbsp;&nbsp;&nbsp;&nbsp;--%>
                                                                                <%--</h4>--%>
                                                                            <%--</c:forEach>--%>
                                                                        <%--&lt;%&ndash;</c:if>&ndash;%&gt;--%>
                                                                    <%--</c:forEach>--%>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-xs-12">

                                                                <h3 class="header smaller lighter red">
                                                                    <i class="ace-icon fa fa-graduation-cap"></i>外聘人员
                                                                </h3>
                                                                <div class="row well">
                                                                    <c:forEach var="map" items="${List}">
                                                                        <c:forEach var="expert" items="${map.experts}">
                                                                            ${expert.name}
                                                                        </c:forEach>
                                                                    </c:forEach>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- /.page-content-area -->
                                                </div>
                                            </div>
                                        </table>
                                    </div>


                                    <div class="modal-footer no-margin-top">
                                        <button class="btn btn-sm btn-default pull-left" data-dismiss="modal">
                                            <i class="ace-icon fa fa-times"></i>关闭
                                        </button>
                                        <button class="btn btn-sm btn-info pull-left" data-dismiss="modal">
                                            <i class="ace-icon fa fa-check"></i>确定
                                        </button>
                                    </div>
                                </div>
                                <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                        </div>

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

<script type="text/javascript">
    $(".state").click(function () {
        $("#state_id").val($(this).attr('id'));
        $('#mySmallModalLabel').modal('show');
    });
    $(".state1").click(function () {
        $("#state_id1").val($(this).attr('id'));
        $('#mySmallModalLabel1').modal('show');
    });

    $(".submit").click(function () {
        $.ajax({
            url: 'testStart_state',
            type: 'post',
            data: {
                "id": $("#state_id").val(),
                'val': $("input[name='kaoping']:checked").val()
            },
            dataType: 'json',
            success: function (result) {
                $('#' + $("#state_id").val());//.addClass('disabled')
                if (result == 1) {
                    $('#' + $("#state_id").val()).removeClass("btn-primary").addClass("btn-success state1").html("考&nbsp;评&nbsp;中");
                }
                else {
                    $('#' + $("#state_id").val()).removeClass("btn-primary").addClass("btn-danger state").html("启动考评");
                }
            }
        });
        $('#mySmallModalLabel').modal('hide');
    })


    $(".submit1").click(function () {
        $.ajax({
            url: 'testStart_state',
            type: 'post',
            data: {
                "id": $("#state_id1").val(),
                'val': $("input[name='kaoping']:checked").val()
            },
            dataType: 'json',
            success: function (result) {
                $('#' + $("#state_id1").val());//.addClass('disabled')
                if (result == 2) {
                    $('#' + $("#state_id1").val()).removeClass("btn-primary").addClass("disabled btn-danger").html("考评结束");
                }
                else {
                    $('#' + $("#state_id1").val()).removeClass("btn-primary").addClass("btn-danger state").html("启动考评");
                }
            }
        });
        $('#mySmallModalLabel1').modal('hide');
    })
</script>
<!-- inline scripts related to this page -->
<script type="text/javascript">
    jQuery(function ($) {
        var oTable1 = $('#sample-table-1')
        //.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
            .dataTable({
                "bAutoWidth": false,
                "aoColumns":[{
                    "bSortable": false
                },null,null,null,null,null],
                "aaSorting": [],
                "searching": true,// 搜索
                "bPaginate": true,//显示（使用）分页器
//                "bServerSide": true,//指定从服务器端获取数据
//                "sAjaxSource": "findAll/",//获取数据的url
//                "fnServerData": retrieveData,//获取数据的处理函数
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
//                "fnRowCallback": function(nRow, aData, iDisplayIndex) {
//                   // console.log(aData)
//                    $('td:eq(0)', nRow).html('<label class="position-relative"><input type="checkbox" class="ace center" value=' + aData.id +' name="subcheck"/> <span class="lbl"></span></label>');
////                    $('td:eq(2)', nRow).html(aData.system.sysName);
//                    $('td:eq(2)', nRow).html(考评人员);
//                }
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

//        function retrieveData(sSource, aoData, fnCallback) {
//            //console.log(JSON.stringify(aoData))
//
//
//            //将客户名称加入参数数组
//            //aoData.push( { "name": "customerName", "value": $("#customerName").val() } );
//
//            $.ajax({
//                "type": "GET",
//                "contentType": "application/json",
//                "dataType": "json",
//                "url": sSource + JSON.stringify(aoData),
//                //"data": JSON.stringify(aoData), //以json格式传递
//                "success": function (resp) {
//                   // console.log(resp)
//                    fnCallback(resp); //服务器端返回的对象的returnObject部分是要求的格式
//                }
//            });
//        }
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
<script src="assets/js/atits-js/test_start.js"></script>
</body>
</html>
