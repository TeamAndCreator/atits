<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>人员管理</title>

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
            <!-- #section:settings.box -->


            <!-- /section:settings.box -->
            <div class="page-content-area">

                <!-- /.page-header -->

                <div class="row">

                    <div class="col-xs-12">
                        <h1 class="header smaller lighter blue">人员管理</h1>
                        <!-- PAGE CONTENT BEGINS --><br>
                        <table id="sample-table-2"
                               class="table table-striped table-bordered table-hover">
                            <thead>
                            <tr>
                                <th></th>
                                <th class="hidden-480 col-xs-2 text-center">姓名</th>
                                <th class="col-xs-3 text-center">所属体系</th>

                                <th class="text-center">岗位</th>
                                <th class="hidden-480 text-center">状态</th>

                                <th class="text-center">操作</th>
                            </tr>
                            </thead>

                            <tbody>

                            </tbody>
                        </table>
                        <form action="" id="form_delete" method="POST">
                              <input type="hidden" name="_method" value="DELETE"/>       
                        </form>
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
<!-- /.page-content -->
<!-- /.main-content -->

<div class="footer">
    <div class="footer-inner">
        <!-- #section:basics/footer -->
        <div class="footer-content">
				<span class="bigger-120"> <span class="blue bolder">安徽农业大学数字农业研究所</span>
					 © 2017-2018（测试版）
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
        var oTable1 = $('#sample-table-2')
        //.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
            .dataTable({
                bAutoWidth: false,
                fnDraw: false,
                aoColumns: [
                    {sDefaultContent: '',sortable: false, sClass: "center"},
                    {mData: "name"},
                    {sDefaultContent: ''},
                    {mData: "job"},
                    {sDefaultContent: ''},
                    {sDefaultContent: ''}],
                bServerSide: true,//指定从服务器端获取数据
                sAjaxSource: "person_ajax/",//获取数据的url
                fnServerData: retrieveData,//获取数据的处理函数
                searching: true,// 搜索
                bPaginate: true,//显示（使用）分页器
                pagingType: "full_numbers",//分页样式的类型
                oLanguage: {//语言设置
                    sLengthMenu: "每页显示 _MENU_ 条记录",
                    sZeroRecords: "没有检索到数据",
                    sSearch: "搜索",
                    sInfo: "当前显示 _START_ 到 _END_ 条，共 _TOTAL_ 条记录",
                    sInfoEmtpy: "没有数据",
                    sProcessing: '<i class="fa fa-coffee"></i> 正在加载数据...',
                    oPaginate: {
                        sFirst: "首页",
                        sPrevious: "前一页",
                        sNext: "后一页",
                        sLast: "尾页"
                    }
                },
                fnRowCallback: function (nRow, aData, iDisplayIndex) {
                    // console.log(aData)

                    $('td:eq(1)', nRow).html('<a class="green "  href="person_detail?id=' + aData.id + '">' + aData.name + '</a>');
                    $('td:eq(2)', nRow).html(aData.system.sysName);
                    if (aData.state === 0) {
                        $('td:eq(4)', nRow).html('<a\n' +
                            'class="btn btn-primary btn-xs state"\n' +
                            'href="person_state/' + aData.id + '">激&nbsp;&nbsp;&nbsp;&nbsp;活</a>');
                    } else {
                        $('td:eq(4)', nRow).html('<button\n' +
                            'class="btn btn-primary btn-xs disabled">已激活\n' +
                            '</button>');

                    }

                    if (aData.permission !== 1) {
                        $('td:eq(5)', nRow).html(
                            '<div class="hidden-sm hidden-xs action-buttons">\n' +
                            '                                            <a class="blue" href="person_detail?id=' + aData.id + '">\n' +
                            '                                                <i class="ace-icon fa fa-search-plus bigger-130"></i>\n' +
                            '                                            </a>\n' +
                            '                                            <a class="green" href="person_setting?id=' + aData.id + '"> <i\n' +
                            '                                                class="ace-icon fa fa-pencil bigger-130"></i>\n' +
                            '                                            </a>\n' +

                            '                                            <a class="red" href="person_delete/' + aData.id + '"> <i\n' +
                            '                                                class="ace-icon fa fa-trash-o bigger-130"></i>\n' +
                            '                                            </a>\n' +
                            '                                        </div>\n' +
                            '<div class="hidden-md hidden-lg">\n' +
                            '                                            <div class="inline position-relative">\n' +
                            '                                                <button class="btn btn-minier btn-yellow dropdown-toggle"\n' +
                            '                                                        data-toggle="dropdown" data-position="auto">\n' +
                            '                                                    <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>\n' +
                            '                                                </button>\n' +
                            '\n' +
                            '                                                <ul\n' +
                            '                                                        class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">\n' +
                            '                                                    <li><a href="person_detail?id=' + aData.id + '" data-toggle="modal"\n' +
                            '                                                           class="tooltip-info detail" data-rel="tooltip"\n' +
                            '                                                           title="查看"><span class="blue"> <i\n' +
                            '                                                            class="ace-icon fa fa-search-plus bigger-120"></i>\n' +
                            '\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</span> </a></li>\n' +
                            '\n' +
                            '                                                    <li><a href="person_setting?id=' + aData.id + '" class="tooltip-success"\n' +
                            '                                                           data-rel="tooltip" title="编辑"> <span class="green">\n' +
                            '\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>\n' +
                            '\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</span>\n' +
                            '                                                    </a></li>\n' +
                            '                                                        <li><a href="person_delete/' + aData.id + '"\n' +
                            '                                                               class="tooltip-error red" data-rel="tooltip"\n' +
                            '                                                               title="删除"> <span> <i\n' +
                            '                                                                class="ace-icon fa fa-trash-o bigger-120"></i>\n' +
                            '\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</span>\n' +
                            '                                                        </a></li>\n' +
                            '                                                </ul>\n' +
                            '                                            </div>\n' +
                            '                                        </div>'
                        );

                    } else {
                        $('td:eq(5)', nRow).html(
                            '<div class="hidden-sm hidden-xs action-buttons">\n' +
                            '                                            <a class="blue" href="person_detail?id=' + aData.id + '">\n' +
                            '                                                <i class="ace-icon fa fa-search-plus bigger-130"></i>\n' +
                            '                                            </a>\n' +
                            '                                            <a class="green" href="person_setting?id=' + aData.id + '"> <i\n' +
                            '                                                class="ace-icon fa fa-pencil bigger-130"></i>\n' +
                            '                                            </a>\n' +
                            '                                        </div>\n' +
                            '<div class="hidden-md hidden-lg">\n' +
                            '                                            <div class="inline position-relative">\n' +
                            '                                                <button class="btn btn-minier btn-yellow dropdown-toggle"\n' +
                            '                                                        data-toggle="dropdown" data-position="auto">\n' +
                            '                                                    <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>\n' +
                            '                                                </button>\n' +
                            '\n' +
                            '                                                <ul\n' +
                            '                                                        class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">\n' +
                            '                                                    <li><a href="person_detail?id=' + aData.id + '" data-toggle="modal"\n' +
                            '                                                           class="tooltip-info detail" data-rel="tooltip"\n' +
                            '                                                           title="查看"><span class="blue"> <i\n' +
                            '                                                            class="ace-icon fa fa-search-plus bigger-120"></i>\n' +
                            '\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</span> </a></li>\n' +
                            '\n' +
                            '                                                    <li><a href="person_setting?id=' + aData.id + '" class="tooltip-success"\n' +
                            '                                                           data-rel="tooltip" title="编辑"> <span class="green">\n' +
                            '\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>\n' +
                            '\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</span>\n' +
                            '                                                    </a></li>\n' +
                            '                                                </ul>\n' +
                            '                                            </div>\n' +
                            '                                        </div>'
                        );

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
            var $parent = $source.closest('table');
            var off1 = $parent.offset();
            var w1 = $parent.width();

            var off2 = $source.offset();
            //var w2 = $source.width();

            if (parseInt(off2.left) < parseInt(off1.left)
                + parseInt(w1 / 2))
                return 'right';
            return 'left';
        }

        function retrieveData(sSource, aoData, fnCallback) {
            //console.log(JSON.stringify(aoData))


            //将客户名称加入参数数组
            //aoData.push( { "name": "customerName", "value": $("#customerName").val() } );

            $.ajax({
                "type": "GET",
                "contentType": "application/json",
                "dataType": "json",
                "url": sSource + JSON.stringify(aoData),
                //"data": JSON.stringify(aoData), //以json格式传递
                "success": function (resp) {
                    console.log(resp);
                    fnCallback(resp); //服务器端返回的对象的returnObject部分是要求的格式
                }
            });
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
<script src="assets/js/atits-js/person.js"></script>
</body>
</html>
