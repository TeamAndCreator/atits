<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>工作进展</title>

    <meta name="description" content="Static &amp; Dynamic Tables"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>

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
    <link rel="stylesheet"
          href="assets/bootstrap-fileinput/css/fileinput.css"/>
    <!-- inline styles related to this page -->

    <!-- ace settings handler -->
    <script src="assets/js/ace-extra.min.js"></script>
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
        <%--<li class="active">工作进展</li>--%>
        <%--</ul>--%>
        <%--<!-- /.breadcrumb -->--%>

        <%--</div>--%>
        <div class="page-content">
            <!-- /section:settings.box -->
            <div class="page-content-area ">
                <div class="row">
                    <div class="col-xs-12">
                        <h1 class="header smaller lighter blue">工作进展</h1>
                        <br/>
                        <!-- PAGE CONTENT BEGINS -->
                        <c:choose>
                            <c:when test="${person.permission ==1}">
                                <!-- <div class="dataTables_borderWrap"> -->
                                <div class="action-buttons">
                                    <span class="bigger-150"><b>体系:</b></span>
                                    <select class="" style="width: 150px;">
                                        <c:forEach items="${systems}" var="system">
                                            <option value="">${system.sysName}</option>
                                        </c:forEach>
                                    </select>
                                    <a class="btn btn-sm btn-success" href="#">
                                        <i class="ace-icon fa fa-search  bigger-130">确定</i>
                                    </a>
                                </div>
                                <table id="sample-table-1"
                                       class="table table-striped table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <th class="text-center">负责人</th>
                                            <%--<th>岗位</th>--%>
                                        <th class="text-center">所属体系</th>
                                        <th class="text-center">任务合同</th>
                                        <th class="text-center">任务安排</th>
                                        <th class="text-center">标题</th>
                                        <th class="text-center">上传时间</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${taskProgresses}" var="taskProgress">
                                        <c:if test="${taskProgress.state == 1}">
                                            <tr>
                                                <td>${taskProgress.subTask.task.bearer.name}</td>
                                                    <%--<td>${person.role.name}</td>--%>
                                                <td>${taskProgress.subTask.task.system.sysName}</td>
                                                <td>
                                                    <a href="sys_task_detail?id=${taskProgress.subTask.task.id}"
                                                       role="button" class="blue" data-toggle="modal">
                                                            ${taskProgress.subTask.task.title}</a>
                                                </td>
                                                <td>${taskProgress.subTask.title}</td>
                                                <td><a href="task_progress_detail?id=${taskProgress.id}" role="button"
                                                       class="blue" data-toggle="modal">${taskProgress.title}</a></td>
                                                <td>${taskProgress.time}</td>
                                            </tr>
                                        </c:if>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </c:when>
                            <c:when test="${person.permission == 2}">
                                <div class="action-buttons">
                                    <a class="btn btn-sm btn-primary" href="#" data-toggle="modal"> <i
                                            class="ace-icon fa  bigger-130 add">+添加</i>
                                    </a>
                                    <a class="btn btn-sm btn-danger" href="#"> <i
                                            class="ace-icon fa  bigger-130">×删除</i>
                                    </a>
                                </div>
                                <tr/>
                                <!-- <div class="dataTables_borderWrap"> -->
                                <table id="sample-table-2"
                                       class="table table-striped table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <th class="center"><label class="position-relative">
                                            <input type="checkbox" class="ace"/> <span class="lbl"></span>
                                        </label></th>
                                        <th class="text-center">承担人</th>
                                            <%--<th>岗位</th>--%>
                                        <th class="text-center">所属体系</th>
                                        <th class="text-center">任务合同</th>
                                        <th class="text-center">任务安排</th>
                                        <th class="text-center">标题</th>
                                        <th class="text-center">上传时间</th>
                                        <th class="text-center">状态</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${taskProgresses}" var="taskProgress">
                                        <c:if test="${person.system.id==taskProgress.subTask.task.system.id}">
                                            <tr>
                                                <td class="center"><label class="position-relative">
                                                    <input type="checkbox" class="ace" name="subcheck"
                                                           value="${taskProgress.id}"/> <span
                                                        class="lbl"></span>
                                                </label></td>
                                                <td>${taskProgress.subTask.bearer.name}</td>
                                                <td>${taskProgress.subTask.task.system.sysName}</td>
                                                <input type="hidden" value="${taskProgress.subTask.task.system.id}"
                                                       id="sysId"/>
                                                <td>
                                                    <a href="sys_task_detail?id=${taskProgress.subTask.task.id}"
                                                       role="button" class="blue" data-toggle="modal">
                                                            ${taskProgress.subTask.task.title}</a>
                                                </td>
                                                <td>
                                                    <a href="sub_task_detail?subTaskId=${taskProgress.subTask.id}"
                                                       role="button" class="blue"
                                                       data-toggle="modal">${taskProgress.subTask.title}</a>
                                                </td>
                                                    <%--<td>${taskProgress.subTask.title}</td>--%>
                                                <td><a href="task_progress_detail?id=${taskProgress.id}" role="button"
                                                       class="blue" data-toggle="modal">${taskProgress.title}</a></td>
                                                <td>${taskProgress.time}</td>
                                                <c:choose>
                                                    <c:when test="${taskProgress.state==0}">
                                                        <td class="hidden-480">
                                                            <button type="button"
                                                                    class="btn btn-primary btn-xs state"
                                                                    id="${taskProgress.id}">审&nbsp;&nbsp;&nbsp;&nbsp;核
                                                            </button>
                                                        </td>
                                                    </c:when>
                                                    <c:when test="${taskProgress.state==1}">
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
                                <form action="" method="POST" class="deletes">
                                      <input type="hidden" name="_method" value="DELETE"/>       
                                </form>
                            </c:when>
                            <c:otherwise>
                                <div class="action-buttons">
                                    <a class="btn btn-sm btn-primary" href="#" data-toggle="modal"> <i
                                            class="ace-icon fa  bigger-130 add">+添加</i>
                                    </a>
                                    <a class="btn btn-sm btn-danger red" href="#"> <i
                                            class="ace-icon fa  bigger-130">×删除</i>
                                    </a>
                                </div>
                                <tr/>
                                <!-- <div class="dataTables_borderWrap"> -->
                                <table id="sample-table-3"
                                       class="table table-striped table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <th class="center"></th>
                                        <th class="text-center">承担人</th>
                                        <th class="text-center">所属体系</th>
                                        <th class="text-center">任务合同</th>
                                        <th class="text-center">任务安排</th>
                                        <th class="text-center">标题</th>
                                        <th class="text-center">上传时间</th>
                                        <th class="text-center">状态</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${taskProgresses}" var="taskProgress">
                                        <c:if test="${person.system.id==taskProgress.subTask.task.system.id && taskProgress.subTask.bearer.id!=person.id && taskProgress.state==1
                                        ||taskProgress.subTask.bearer.id==person.id }">
                                            <tr>
                                                <c:choose>
                                                    <c:when test="${taskProgress.subTask.bearer.id==person.id && taskProgress.state!=0}">
                                                        <td class="center"><label class="position-relative">
                                                            <input type="checkbox" class="ace" name="subcheck"
                                                                   value="${taskProgress.id}"/> <span
                                                                class="lbl"></span>
                                                        </label></td>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <td class="center"><label class="position-relative">
                                                            <input type="checkbox" class="ace" name="subcheck"
                                                                   disabled="true"
                                                                   value="${taskProgress.id}"/> <span
                                                                class="lbl"></span>
                                                        </label></td>
                                                    </c:otherwise>
                                                </c:choose>
                                                <td>${taskProgress.subTask.bearer.name}</td>
                                                    <%--<td>${person.role.name}</td>--%>
                                                <td>${taskProgress.subTask.task.system.sysName}</td>
                                                <td>${taskProgress.subTask.task.title}</td>
                                                <td>
                                                    <a href="sub_task_detail?subTaskId=${taskProgress.subTask.id}"
                                                       role="button" class="blue"
                                                       data-toggle="modal">${taskProgress.subTask.title}</a>
                                                </td>
                                                <td><a href="task_progress_detail?id=${taskProgress.id}" role="button"
                                                       class="blue" data-toggle="modal">${taskProgress.title}</a></td>
                                                <td>${taskProgress.time}</td>
                                                <c:choose>
                                                    <c:when test="${taskProgress.state==0}">
                                                        <td class="hidden-480">
                                                            <button type="button"
                                                                    class="btn btn-primary btn-sm disabled">审核中
                                                            </button>
                                                        </td>
                                                    </c:when>
                                                    <c:when test="${taskProgress.state==1}">
                                                        <td class="hidden-480">
                                                            <button
                                                                    class="btn btn-success btn-sm disabled">通&nbsp;&nbsp;&nbsp;&nbsp;过
                                                            </button>
                                                        </td>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <td class="hidden-480">
                                                            <button
                                                                    class="btn btn-danger btn-sm disabled">未通过
                                                            </button>
                                                        </td>
                                                    </c:otherwise>
                                                </c:choose>
                                            </tr>
                                        </c:if>
                                    </c:forEach>
                                    </tbody>
                                </table>

                                <form action="" method="POST" class="deletes">
                                      <input type="hidden" name="_method" value="DELETE"/>       
                                </form>
                            </c:otherwise>
                        </c:choose>
                        <input type="hidden" value="${person.id}" id="personId">
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
                    </div>
                </div>
            </div>
            <!-- PAGE CONTENT ENDS -->

            <div id="modal-table" class="modal fade" tabindex="-1">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header no-padding">
                            <div class="table-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                    <span class="white">&times;</span>
                                </button>
                                详情
                            </div>
                        </div>
                        <form id="task_progress_add_form">
                            <div class="modal-body no-padding">
                                <table class="table table-striped table-bordered table-hover no-margin-bottom no-border-top">
                                    <tbody>
                                    <br/>
                                    <tr>
                                        <td class="align-right">标题：</td>
                                        <td><textarea name="title" id="title" cols="50" rows="1"></textarea>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="align-right">任务安排：</td>
                                        <%--<td><select class="form-control" id="subTasks" name="subTask.id">--%>
                                        <%--<option value="0">--请选择--</option>--%>
                                        <%--</select>--%>
                                        <%--</td>--%>
                                        <td>
                                            <select class="form-control" id="subTasks" name="subTask.id">
                                                <option value="0">--请选择--</option>
                                            </select>
                                        </td>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="align-right">进展描述：</td>
                                        <td><textarea class="form-control" type="text" name="content" id="content"
                                                      placeholder="请输入详细工作进展"
                                                      style="height: 150px"></textarea>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="align-right">上传附件：</td>
                                        <td>
                                            <!-- #section:custom/file-input -->
                                            <input id="input-id" type="file" class="file input-id" multiple
                                                   name="files" data-show-caption="true"/>
                                            <input type='hidden' name="fileId" id="fileId" value=''/>

                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="modal-footer no-margin-top">
                                <button class="btn btn-sm btn-default pull-left" data-dismiss="modal">
                                    <i class="ace-icon fa fa-times"></i>关闭
                                </button>
                                <button class="btn btn-sm btn-success pull-left" data-dismiss="modal"
                                        id="task_progress_save">
                                    <%--onclick="javasript:window.alert('提交成功！')"--%>
                                    <i class="ace-icon fa fa-check"></i>提交
                                </button>
                            </div>
                        </form>

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
            url: 'task_progress_state',
            type: 'post',
            data: {
                "id": $("#state_id").val(),
                'val': $("input[name='shenhe']:checked").val()
            },
            dataType: 'json',
            success: function (result) {
                $('#' + $("#state_id").val()).addClass('disabled');
//                if (result == 1) {
//                    $('#' + $("#state_id").val()).removeClass("btn-primary").addClass("disabled btn-success").html("通&nbsp;&nbsp;&nbsp;&nbsp;过");
//
//                }
//                else {
//                    $('#' + $("#state_id").val()).removeClass("btn-primary").addClass("disabled btn-danger").html("未通过");
//                }
                location.reload();
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
                "bAutoWidth": false,
                "aoColumns": [{
                    "bSortable": true
                }, null, null, {
                    "bSortable": true
                }, {
                    "bSortable": true
                }, {
                    "bSortable": true
                }],
                "aaSorting": [],

                "searching": true, // 搜索
                "bPaginate": true, //显示（使用）分页器
                "pagingType": "full_numbers", //分页样式的类型
                "oLanguage": { //语言设置
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
                "bAutoWidth": false,
                "aoColumns": [{
                    "bSortable": false
                }, {
                    "bSortable": true
                }, {
                    "bSortable": true
                }, null, null, null, {
                    "bSortable": true
                }, {
                    "bSortable": true
                }],
                "aaSorting": [],

                "searching": true, // 搜索
                "bPaginate": true, //显示（使用）分页器
                "pagingType": "full_numbers", //分页样式的类型
                "oLanguage": { //语言设置
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

        var oTable2 = $('#sample-table-3')
        //.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
            .dataTable({
                "bAutoWidth": false,
                "aoColumns": [{
                    "bSortable": false
                }, {
                    "bSortable": true
                }, {
                    "bSortable": true
                }, null, null, null, {
                    "bSortable": true
                }, {
                    "bSortable": true
                }],
                "aaSorting": [],

                "searching": true, // 搜索
                "bPaginate": true, //显示（使用）分页器
                "pagingType": "full_numbers", //分页样式的类型
                "oLanguage": { //语言设置
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

        $('#id-input-file-2').ace_file_input({
            no_file: '点击此处...',
            btn_choose: '上传',
            btn_change: '重新上传',
            droppable: false,
            onchange: null,
            thumbnail: false //| true | large
            //whitelist:'gif|png|jpg|jpeg'
            //blacklist:'exe|php'
            //onchange:''
            //
        });

        function tooltip_placement(context, source) {
            var $source = $(source);
            var $parent = $source.closest('table')
            var off1 = $parent.offset();
            var w1 = $parent.width();

            var off2 = $source.offset();
            //var w2 = $source.width();

            if (parseInt(off2.left) < parseInt(off1.left) +
                parseInt(w1 / 2))
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

<script src="assets/js/atits-js/task_progress.js"></script>

<!-- bootstrap-fileinput -->
<script src="assets/bootstrap-fileinput/js/fileinput.min.js"></script>
<script src="assets/bootstrap-fileinput/js/locales/zh.js"></script>

</body>

</html>