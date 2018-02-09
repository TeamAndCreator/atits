<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>实验经费添加管理</title>
    <meta name="description" content=""/>
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
    <!--bootstrap-fileinput  -->
    <link rel="stylesheet" href="assets/bootstrap-fileinput/css/fileinput.css"/>
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="assets/css/ace-ie.min.css"/><![endif]-->
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
        <div class="breadcrumbs" id="breadcrumbs">
            <script type="text/javascript">
                try {
                    ace.settings.check('breadcrumbs', 'fixed')
                } catch (e) {
                }
            </script>

            <ul class="breadcrumb">
                <li><i class="ace-icon fa fa-home home-icon"></i>
                    <a href="index">首页</a>
                </li>

                <li>
                    <a href="dynamic">实验经费管理</a>
                </li>
                <li class="active">修改&amp;添加</li>
            </ul>
            <!-- /.breadcrumb -->
        </div>

        <!-- /section:basics/content.breadcrumbs -->
        <div class="page-content">
            <div class="page-content-area">

                <div class="page-header">
                    <h1>修改 &amp;添加</h1>
                </div>
                <!-- /.page-header -->
                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->
                        <form:form action="${pageContext.request.contextPath}/funds_save" method="POST"
                                   class="form-horizontal" id="sample-form" modelAttribute="funds">
                            <c:if test="${funds.id != 0}">
                                <hidden path="id"/>
                                <input type="hidden" name="_method" value="PUT">
                            </c:if>

                            <!-- #section:elements.form.input-state -->
                            <div class="form-group has-info">
                                <label class="col-xs-12 col-sm-3 control-label no-padding-right">所属体系</label>
                                <div class="col-xs-12 col-sm-4">
                                    <form:select class="form-control" path="system.id" id="sysId">
                                        <c:choose>
                                            <c:when test="${person.permission==1}">
                                                <form:options items="${system}" itemLabel="sysName"
                                                              itemValue="id"/>
                                            </c:when>
                                            <c:otherwise>
                                                <form:option
                                                        value="${person.system.id}">${person.system.sysName}</form:option>
                                            </c:otherwise>
                                        </c:choose>
                                    </form:select>
                                </div>
                            </div>
                            <div class="form-group has-warning">
                                <label for="bearer"
                                       class="col-xs-12 col-sm-3 control-label no-padding-right">承担人</label>

                                <div class="col-xs-12 col-sm-4">
                                    <form:select class="form-control" path="bearer" id="bearer">

                                    </form:select>

                                </div>

                            </div>
                            <div class="form-group has-success">
                                <label for="spinner2"
                                       class="col-xs-12 col-sm-3 control-label no-padding-right">年份</label>
                                <div class="col-xs-12 col-sm-4">

                                    <form:input id="spinner2" class="input-large spinner-input form-control"
                                                maxlength="5" type="text" path="year"/>

                                </div>
                            </div>

                            <div class="form-group has-success">
                                <label for="inputSuccess" class="col-xs-12 col-sm-3 control-label no-padding-right">经费总额(元)</label>
                                <div class="col-xs-12 col-sm-4">
											<span class="block input-icon input-icon-right">
												<!--<input type="text" id="inputSuccess" class="width-100" path="editor" /> -->
												<from:input type="number" id="inputSuccess"
                                                            class="width-100" path="money"/>
												<i class="ace-icon fa fa-credit-card"></i>
										</span>
                                </div>
                            </div>


                            <div class="form-group has-success">
                                <label for="inputSuccess"
                                       class="col-xs-12 col-sm-3 control-label no-padding-right">上传文件</label>
                                <div class="col-xs-12 col-sm-4 container ">
                                    <input id="input-id" type="file" class="file" multiple name="files"
                                           data-show-caption="true"/>
                                    <!-- <i class="ace-icon fa fa-calendar"></i> -->

                                </div>
                            </div>


                            <div class="clearfix form-actions">

                                <div class="col-md-offset-3 col-md-9">
                                    <button class="btn btn-info " type="submit"><i
                                            class="ace-icon fa fa-check bigger-110"></i>提交
                                    </button>
                                    &nbsp; &nbsp; &nbsp;
                                    <button class="btn" type="reset">
                                        <i class="ace-icon fa fa-undo bigger-110"></i>
                                        重置
                                    </button>
                                </div>
                            </div>
                        </form:form>

                        <script type="text/javascript">
                            var $path_assets = "assets"; //this will be used in loading jQuery UI if needed!
                        </script>

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
						<span class="bigger-120"> <span class="blue bolder">农业部农业物联网技术集成与应用重点实验室</span> &copy; 2017-2018（测试版）
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

<!--日期调整的js-->
<script src="assets/js/fuelux/fuelux.spinner.min.js"></script>

<!-- page specific plugin scripts -->
<script src="assets/js/jquery-ui.custom.min.js"></script>
<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
<script src="assets/js/markdown/markdown.min.js"></script>
<script src="assets/js/markdown/bootstrap-markdown.min.js"></script>
<script src="assets/js/jquery.hotkeys.min.js"></script>
<script src="assets/js/bootstrap-wysiwyg.min.js"></script>
<script src="assets/js/bootbox.min.js"></script>

<!-- ace scripts -->
<script src="assets/js/ace-elements.min.js"></script>
<script src="assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->
<script type="text/javascript">
    jQuery(function ($) {

        function showErrorAlert(reason, detail) {
            var msg = '';
            if (reason === 'unsupported-file-type') {
                msg = "Unsupported format " + detail;
            } else {
                //console.log("error uploading file", reason, detail);
            }
            $(
                '<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>' +
                '<strong>File upload error</strong> ' +
                msg +
                ' </div>').prependTo('#alerts');
        }

        //$('#editor1').ace_wysiwyg();//this will create the default editor will all buttons
        $('#spinner2').ace_spinner({
            value: 2016,
            min: 2000,
            max: 2025,
            step: 1,
            touch_spinner: true,
            icon_up: 'ace-icon fa fa-caret-up',
            icon_down: 'ace-icon fa fa-caret-down'
        });
        $('[data-rel=tooltip]').tooltip({
            container: 'body'
        });

        //"jQuery UI Slider"
        //range slider tooltip example
        $("#slider-range").css('height', '200px').slider({
            orientation: "vertical",
            range: true,
            min: 0,
            max: 100,
            values: [17, 67],
            slide: function (event, ui) {
                var val = ui.values[$(ui.handle).index() - 1] + "";

                if (!ui.handle.firstChild) {
                    $("<div class='tooltip right in' style='display:none;left:16px;top:-6px;'><div class='tooltip-arrow'></div><div class='tooltip-inner'></div></div>")
                        .prependTo(ui.handle);
                }
                $(ui.handle.firstChild).show().children().eq(1).text(val);
            }
        }).find('a').on('blur', function () {
            $(this.firstChild).hide();
        });


        //but we want to change a few buttons colors for the third style


    });
</script>
<script type="text/javascript">
    $(function () {
        $("#datepicker").datepicker();
    });
</script>
<script type="text/javascript">
    $.ajax({
        url: "person_name",
        dataType: 'json',
        type: "post",
        data: {
            sysId: $("#sysId").val()
        },
        success: function (result) {
            if (result.length == 0) {
                $("#bearer").empty();
            } else {
                $.each(result, function (index, item) {
                    $("#bearer").append("<option value='" + item + "'>" + item + "</option>");
                });
            }
        }
    });
    $("#sysId").click(function () {
        $.ajax({
            url: "person_name",
            dataType: 'json',
            type: "post",
            data: {
                sysId: $("#sysId").val()
            },
            success: function (result) {
                $("#bearer").empty();
                $.each(result, function (index, item) {
                    $("#bearer").append("<option value='" + item + "'>" + item + "</option>");
                });
                $("#taskId").empty();
            }
        });
    });
</script>


<!-- the following scripts are used in demo only for onpage help and you don't need them -->
<link rel="stylesheet" href="assets/css/ace.onpage-help.css"/>
<link rel="stylesheet" href="docs/assets/js/themes/sunburst.css"/>
<link rel="stylesheet" href="assets/css/jquery-ui.min.css"/>

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
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery-ui.min.js"></script>

<!-- bootstrap-fileinput -->

<script src="assets/bootstrap-fileinput/js/fileinput.min.js"></script>
<script src="assets/bootstrap-fileinput/js/locales/zh.js"></script>

<script src="assets/js/atits-js/funds_add.js">

</script>
</body>

</html>