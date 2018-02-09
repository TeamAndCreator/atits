<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>权重设置</title>

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
        <div class="breadcrumbs" id="breadcrumbs">
            <script type="text/javascript">
                try {
                    ace.settings.check('breadcrumbs', 'fixed')
                } catch (e) {
                }
            </script>

            <ul class="breadcrumb">
                <li><i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">首页</a>
                </li>
                <li class="active">考评管理</li>
            </ul>
            <!-- /.breadcrumb -->

        </div>
        <div class="page-content">
            <h1 class="header smaller lighter blue">权重设置</h1>
            <!--<div class="action-buttons">
                <a class="btn btn-yellow btn-lg header" href="#"> <i class="ace-icon fa  bigger-130">评分汇总</i>
                </a>
            </div>-->
            <!-- /section:settings.box -->
            <div class="page-content-area ">

                <!-- /.page-header -->

                <div class="row">
                    <div class="col-sm-12 col-lg-10 ">
                        <div class="action-buttons">
                            <a class="btn btn-sm btn-primary" href="#modal-table" data-toggle="modal"> <i
                                    class="ace-icon fa  bigger-130">+添加</i>
                            </a>
                            <a class="btn btn-sm btn-danger" href="#"> <i class="ace-icon fa  bigger-130">×删除</i>
                            </a>
                        </div>
                        <br/>
                        <!-- PAGE CONTENT BEGINS -->

                        <div class="row">
                            <div class="col-xs-12">

                                <!-- <div class="dataTables_borderWrap"> -->
                                <div>
                                    <table id="sample-table-2" class="table table-striped table-bordered table-hover">
                                        <thead>

                                        <th class="center"><label class="position-relative">
                                            <input type="checkbox" class="ace"/> <span class="lbl"></span>
                                        </label></th>
                                        <th>年度</th>
                                        <th>评分对象</th>
                                        <th>农委</th>
                                        <th>首席/副首席专家</th>
                                        <th>岗位专家/试验站站长</th>
                                        <th>外聘专家(可无)</th>
                                        <th>操作</th>

                                        </thead>

                                        <tbody>
                                        <c:forEach items="${tasks}" var="task">
                                            <tr>
                                                <td class="center"><label class="position-relative">
                                                    <input type="checkbox" class="ace" name="subcheck"/> <span
                                                        class="lbl"></span>
                                                </label></td>
                                                <td>2017</td>
                                                <td>首席/副首席专家</td>
                                                <td>0.6</td>
                                                <td>/</td>
                                                <td>0.2</td>
                                                <td>0.2</td>
                                                <td>
                                                    <div class="hidden-sm hidden-xs action-buttons">
                                                        <a class="green" href="person_setting?id=${person.id}"> <i
                                                                class="ace-icon fa fa-pencil bigger-130"></i>
                                                        </a>
                                                        <c:if test="${person.role.id!=1}">
                                                            <a class="red" href="person_delete/${person.id}"> <i
                                                                    class="ace-icon fa fa-trash-o bigger-130"></i>
                                                            </a>
                                                        </c:if>
                                                    </div>

                                                    <div class="hidden-md hidden-lg">
                                                        <div class="inline position-relative">
                                                            <button class="btn btn-minier btn-yellow dropdown-toggle"
                                                                    data-toggle="dropdown" data-position="auto">
                                                                <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                                            </button>

                                                            <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                                                <li>
                                                                    <a href="person_setting?id=${person.id}"
                                                                       class="tooltip-success" data-rel="tooltip"
                                                                       title="编辑"> <span class="green">
																		<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																</span>
                                                                    </a>
                                                                </li>
                                                                <c:if test="${person.role.id!=1}">
                                                                    <li>
                                                                        <a href="person_delete/${person.id}"
                                                                           class="tooltip-error red" data-rel="tooltip"
                                                                           title="删除"> <span> <i
                                                                                class="ace-icon fa fa-trash-o bigger-120"></i>
																</span>
                                                                        </a>
                                                                    </li>
                                                                </c:if>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td class="center"><label class="position-relative">
                                                    <input type="checkbox" class="ace" name="subcheck"/> <span
                                                        class="lbl"></span>
                                                </label></td>
                                                <td>2017</td>
                                                <td>岗位专家/试验站站长</td>
                                                <td>/</td>
                                                <td>0.2</td>
                                                <td>0.6</td>
                                                <td>0.2</td>
                                                <td>
                                                    <div class="hidden-sm hidden-xs action-buttons">
                                                        <a class="green" href="person_setting?id=${person.id}"> <i
                                                                class="ace-icon fa fa-pencil bigger-130"></i>
                                                        </a>
                                                        <c:if test="${person.role.id!=1}">
                                                            <a class="red" href="person_delete/${person.id}"> <i
                                                                    class="ace-icon fa fa-trash-o bigger-130"></i>
                                                            </a>
                                                        </c:if>
                                                    </div>

                                                    <div class="hidden-md hidden-lg">
                                                        <div class="inline position-relative">
                                                            <button class="btn btn-minier btn-yellow dropdown-toggle"
                                                                    data-toggle="dropdown" data-position="auto">
                                                                <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                                            </button>

                                                            <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                                                <li>
                                                                    <a href="person_setting?id=${person.id}"
                                                                       class="tooltip-success" data-rel="tooltip"
                                                                       title="编辑"> <span class="green">
																		<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																</span>
                                                                    </a>
                                                                </li>
                                                                <c:if test="${person.role.id!=1}">
                                                                    <li>
                                                                        <a href="person_delete/${person.id}"
                                                                           class="tooltip-error red" data-rel="tooltip"
                                                                           title="删除"> <span> <i
                                                                                class="ace-icon fa fa-trash-o bigger-120"></i>
																</span>
                                                                        </a>
                                                                    </li>
                                                                </c:if>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>

                                        </c:forEach>
                                        </tbody>
                                    </table>
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
                                            权重设置
                                        </div>
                                    </div>

                                    <div class="modal-body no-padding">
                                        <table class="table table-striped table-bordered table-hover no-margin-bottom no-border-top">

                                            <tbody>
                                            <br/>
                                            <tr>
                                                <td class="align-right">年度</td>
                                                <td>
                                                    <select class="form-control " id="form-field-select-1">
                                                        <option value="">2018</option>
                                                        <option value="">2017</option>
                                                        <option value="">2016</option>
                                                    </select>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td class="align-right">评分对象</td>
                                                <td>
                                                    <div class="radio">
                                                        <label>
                                                            <input name="form-field-radio" type="radio" class="ace"
                                                                   id="id-disable-check1" autocomplete="off"/>
                                                            <span class="lbl">对首席/副首席专家打分</span>
                                                        </label>
                                                    </div>
                                                    <div class="radio">
                                                        <label>
                                                            <input name="form-field-radio" type="radio" class="ace"
                                                                   id="id-disable-check2" autocomplete="off"/>
                                                            <span class="lbl">对岗位专家/试验站站长打分</span>
                                                        </label>
                                                    </div>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td class="align-right ">农委：</td>
                                                <td><input type="text" placeholder="" id="form-input-readonly1"
                                                           placeholder="" class="col-xs-10 col-sm-8"
                                                           autocomplete="off"/>
                                                </td>
                                            </tr>
                                            <tr>

                                                <td class="align-right">首席/副首席专家：</td>
                                                <td>
                                                    <input type="text" placeholder="" id="form-input-readonly2"
                                                           placeholder="" class="col-xs-10 col-sm-8"
                                                           autocomplete="off"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="align-right">岗位专家/试验站站长：</td>
                                                <td><input type="text" placeholder="" id="form-field-1" placeholder=""
                                                           class="col-xs-10 col-sm-8" autocomplete="off"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="align-right">外聘专家(可选)：</td>
                                                <td><input type="text" placeholder="" id="form-field-2" placeholder=""
                                                           class="col-xs-10 col-sm-8" autocomplete="off"/>
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
                                                id="btn_submit" onclick="javasript:window.alert('提交成功！')">
                                            <i class="ace-icon fa fa-check"></i>提交
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
						</span> &nbsp; &nbsp; <span class="action-buttons"> <a href="#">
							<i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
					</a> <a href="#"> <i
                    class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
					</a> <a href="#"> <i
                    class="ace-icon fa fa-rss-square orange bigger-150"></i>
					</a>
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
    jQuery(function ($) {
        var oTable1 = $('#sample-table-2')
        //.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
            .dataTable({
                "bAutoWidth": false,
                "aoColumns": [{
                    "bSortable": false
                }, null, {
                    "bSortable": false
                }, {
                    "bSortable": false
                }, {
                    "bSortable": false
                }, {
                    "bSortable": false
                }, {
                    "bSortable": false
                }, {
                    "bSortable": false
                },],
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


        $('#id-disable-check1').on('click', function () {
            var inp1 = $('#form-input-readonly1').get(0);
            var inp2 = $('#form-input-readonly2').get(0);
            if (inp2.hasAttribute('disabled')) {
//						inp2.removeAttribute('disabled');
//						inp3.setAttribute('disabled' , 'disabled');
//						inp2.value="这里随便写！";
//						inp3.value="你变为只读";
            }
            else {
                inp2.setAttribute('disabled', 'disabled');
                inp1.removeAttribute('disabled');
                inp2.value = "不可输入";
                inp1.value = "";

            }
        });

        $('#id-disable-check2').on('click', function () {
            var inp1 = $('#form-input-readonly1').get(0);
            var inp2 = $('#form-input-readonly2').get(0);
            if (inp1.hasAttribute('disabled')) {
//						inp2.removeAttribute('disabled');
//						inp3.setAttribute('disabled' , 'disabled');
//						inp2.value="这里随便写！";
//						inp3.value="你变为只读";

            }
            else {
                inp1.setAttribute('disabled', 'disabled');
                inp2.removeAttribute('disabled');
                inp1.value = "不可输入";
                inp2.value = "";

            }
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
<!-- <script src="assets/js/atits-js/sys_task.js"></script> -->
</body>

</html>