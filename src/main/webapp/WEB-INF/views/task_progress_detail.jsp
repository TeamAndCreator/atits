<%--<%@ page language="java" contentType="text/html; charset=UTF-8"--%>
         <%--pageEncoding="UTF-8" %>--%>
<%--<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>工作进展详情</title>

    <meta name="description" content="500 Error Page"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="assets/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>

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
    <link rel="stylesheet" href="assets/css/atits-css/notice_show.css"/>

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


            <!-- /section:settings.box -->
            <div class="page-content-area">
                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->

                        <!-- #section:pages/error -->
                        <div class="error-container">
                            <div class="well">
                                    <ul class="pager">
                                        <c:if test="${person.permission != 1}">
                                            <li class="next  bigger-120 hidden">
                                                <a href="#"><i class="ace-icon fa fa-pencil"></i> 修改</a>
                                            </li>
                                        </c:if>

                                            <li class="previous  bigger-120">
                                                <a href="javascript:history.back()"><i class="ace-icon fa fa-arrow-left"></i> 返回</a>
                                            </li>
                                     </ul>
                                <div class="col-md-10"  style="float: none;display: block;margin-left: auto;margin-right: auto;">
                                    <h3 class="blue center">${taskProgress.title}</h3>
                                </div>
                                <h5 class="publish">
                                    <span>编辑人:${taskProgress.subTask.bearer.name}</span> &nbsp;
                                    &nbsp;&nbsp;&nbsp;<span>时间:${taskProgress.time}</span>
                                </h5><hr/>
                                <div class="col-md-11"  style="float: none;display: block;margin-left: auto;margin-right: auto;">
                                    <div class="space"></div>
                                    <div class="widget-main">${taskProgress.content}</div>
                                </div>
                                <br/> <br/>


                                <c:if test="${files!=null}">
                                    <div class="row ">
                                        <div class=" col-xs-2 text-right bigger-120">下载附件：</div>
                                        <div class="col-xs-9 bigger-120">
                                            <c:forEach items="${files}" var="file">
                                                <div class="row">
                                                    <a href="files_download/${file.id}">${file.title}</a>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </c:if>


                                <br/> <br/>

                            </div>
                        </div>

                        <!-- /section:pages/error -->

                        <!-- PAGE CONTENT ENDS -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.page-content-area -->
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
                                        <td><textarea name="title" id="form-field-1" cols="50" rows="1"></textarea>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="align-right">任务安排：</td>
                                        <td><select class="form-control" id="subTasks" name="subTask.id">
                                            <option value="0">--请选择--</option>
                                        </select>
                                        </td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="align-right">进展描述：</td>
                                        <td><textarea class="form-control" type="text" name="content" id="form-field-2"
                                                      placeholder="请输入详细工作进展"
                                                      style="height: 150px"></textarea>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="align-right">上传附件：</td>
                                        <td>
                                            <!-- #section:custom/file-input -->
                                            <input type="file" id="id-input-file-2" name="fileId"/>
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
                                        id="task_progress_save" >
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
        <!-- /.page-content -->
    </div>
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

<!-- ace scripts -->
<script src="assets/js/ace-elements.min.js"></script>
<script src="assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->

<!-- the following scripts are used in demo only for onpage help and you don't need them -->
<link rel="stylesheet" href="assets/css/ace.onpage-help.css"/>
<link rel="stylesheet" href="docs/assets/js/themes/sunburst.css"/>

<!-- <script type="text/javascript"> ace.vars['base'] = '..'; </script> -->
<script src="assets/js/ace/elements.onpage-help.js"></script>
<script src="assets/js/ace/ace.onpage-help.js"></script>
<script src="docs/assets/js/rainbow.js"></script>
<script src="docs/assets/js/language/generic.js"></script>
<script src="docs/assets/js/language/html.js"></script>
<script src="docs/assets/js/language/css.js"></script>
<script src="docs/assets/js/language/javascript.js"></script>
<script src="assets/js/atits-js/task_progress.js"></script>
</body>
</html>
