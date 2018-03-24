<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>安徽省现代农业产业技术体系平台</title>

    <meta name="description" content="User login page"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="assets/css/font-awesome.min.css"/>
    <!-- text fonts -->
    <link rel="stylesheet" href="assets/css/ace-fonts.css"/>
    <!-- ace styles -->
    <link rel="stylesheet" href="assets/css/ace.min.css"/>
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="assets/css/ace-part2.min.css"/>
    <![endif]-->
    <link rel="stylesheet" href="assets/css/ace-rtl.min.css"/>
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="assets/css/ace-ie.min.css"/>
    <![endif]-->
    <link rel="stylesheet" href="assets/css/ace.onpage-help.css"/>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <link rel="stylesheet" href="assets/css/atits-css/login.css"/>
    <!--[if lt IE 9]>
    <script src="assets/js/html5shiv.js"></script>
    <script src="assets/js/respond.min.js"></script>
    <![endif]-->
    <style>
        .row {
            padding-top: 18%;

        }
    </style>


</head>

<body onload="loadTopWindow()">

<div style="position:absolute; width:100%; height:100%; z-index:-1; left:0; top:0;">
    <img src="${pageContext.request.contextPath}/assets/images/log_background.jpg" height="100%" width="100%"
         style="position:absolute;left:0; top:0;">
</div>
<div class="main-container">
    <div class="main-content">
        <!-- /.row ------------------------------------全局框架：----------------------------------------------------->
        <div class="row">

            <%--添加响应式布局： <div class="col-sm-10 col-md-10 col-sm-offset-1">--%>
            <%--<div class="col-xs-6 col-md-10 col-lg-12">--%>
            <div class="col-md-3 col-sm-3 col-xs-3 col-xs-offset-8 col-sm-offset-8 col-md-offset-8">
                <%-----------------------------------------------页面+登录信息框架---------------------------------------------------%>
                <%--<div class="col-xs-6 col-md-10 col-lg-12">--%>

                <div id="login-box" class="login-box visible  border1 ">
                    <%-- 添加响应式布局：--%>
                    <%----------------------------------用户登录信息框架：--------------------------------------------------------%>

                    <div class="widget-body">
                        <div class="widget-main">
                            <h4 class="header blue lighter bigger">
                                <i class="ace-icon fa fa-coffee green"></i> 用户登录信息
                            </h4>

                            <div class="space-6"></div>
                            <!-- 显示页面：验证码错误 -->
                            <%--<div class='error_a' id="login_errMsg">${errMsg }</div>--%>


                            <div class=" clearfix ">
                                <span class="block input-icon input-icon-right">
                                    <select name="system.id" id="sysId" class="form-control">
                                        <option value="0">请选择体系名称</option>
                                        <option value="1">省体系办</option>
                                        <option value="2">水稻产业技术体系</option>
                                        <option value="3">小麦产业技术体系</option>
                                        <option value="4">玉米产业技术体系</option>
                                        <option value="5">油菜棉花产业技术体系</option>
                                        <option value="6">生猪产业技术体系</option>
                                        <option value="7">家禽产业技术体系</option>
                                        <option value="8">牛羊产业技术体系</option>
                                        <option value="9">水产产业技术体系</option>
                                        <option value="10">蔬菜产业技术体系</option>
                                        <option value="11">果树产业技术体系</option>
                                        <option value="12">茶叶产业技术体系</option>
                                        <option value="13">蚕桑中药材产业技术体系</option>
                                        <option value="14">农业信息化产业技术体系</option>
                                        <option value="15">农机装备应用产业技术体系</option>
                                        <option value="16">农业生态环保与质量安全产业技术体系</option>
                                    </select>
                            </span>
                            </div>
                            <div class="space-6"></div>
                            <div class="block clearfix">
                                <span class="block input-icon input-icon-right">
                                    <input type="text" class="form-control" placeholder="姓名或用户名"
                                           id="userName"/>
										<i class="ace-icon fa fa-user"></i>
                                </span>
                            </div>
                            <div class="space-6"></div>
                            <div class="block clearfix">
													<span class="block input-icon input-icon-right">
														<input type="password" class="form-control" placeholder="密码"
                                                               id="password"/>
														<i class="ace-icon fa fa-lock"></i>
												</span>
                            </div>
                            <div class="space-6"></div>
                            <div class="block clearfix">
                                <span class="block input-icon input-icon-right ">
                                    <div class="col-xs-7 pull-left">
                                        <input class="form-control " placeholder="验证码"
                                               type="text" value="${imageCode }"
                                               id="imageCode"/>
                                        </div>
                                    <div class=" col-xs-5 ">
                                        <img onclick="loadimage();" title="换一张试试" class="pull-right"
                                             id="randImage" src="image.jsp" width="72" height="35"
                                             border="1"
                                             align="absmiddle">
                                    </div>
                                </span>
                            </div>
                            <div class="space-6"></div>

                            <div class=" clearfix">
                                <label class="inline">
                                    <%--<input type="checkbox" class="ace"/>--%>
                                    <%--<span class="lbl"> 记住我</span>--%>
                                    <div class="btn btn-sm btn-danger no-border" id="tip">
                                        <i class="icon-bolt bigger-110"></i>
                                        首次登录提示
                                        <i class="icon-arrow-right icon-on-right"></i>
                                    </div>
                                    <%--<div class="action-buttons">--%>
                                    <%--<a class="btn btn-sm btn-primary" href="#modal-table" data-toggle="modal"> <i class="ace-icon fa  bigger-130">+添加</i>--%>
                                    <%--</a>--%>
                                    <%--</div>--%>
                                </label>



                               <button type="button" class="width-35 pull-right btn btn-sm btn-primary"
                                        id="login">
                                    <i class="ace-icon fa fa-key"></i>
                                    <span class="bigger-110">登录</span>
                                </button>
                            </div>

                            <div class="space-4"></div>
                        </
                        >


                    </div>
                    <!-- /.widget-main -->

                    <div class="toolbar clearfix">
                        <div></div>

                        <div>
                            <a href="to_register"
                               class="user-signup-link"> <span
                                    class="h4">立即注册</span> <i class="ace-icon fa fa-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                </div>


                <%--</div>&lt;%&ndash; ：响应式布局：&ndash;%&gt;--%>
                <!-- /.widget-body -->
            </div>
            <!-- /.login-box -->


        </div>
    </div>
    <%--模态框--%>
    <div id="modal_table" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header no-padding">
                    <div class="table-header">
                        <button type="button" class="close" data-dismiss="modal"
                                aria-hidden="true">
                            <span class="white">&times;</span>
                        </button>
                        登录提示
                    </div>
                </div>
                <div class="modal-body no-padding">
                    <table
                            class="table table-striped table-bordered table-hover no-margin-bottom no-border-top">
                        <ul class="list-unstyled spaced inline bigger-150 ">
                            <div id="demo-summernote-edit" style="display: block;padding-left: 1em;">
                                <br/>
                                <p>首次登录有两种登录方式供您选择：</p>
                                <p style="color: red;">①姓名登录</p>（例如：农业信息化产业技术体系，张三）
                                <p style="text-indent: 2em;">●选择体系：农业信息化产业技术体系</p>
                                <p style="text-indent: 2em;">●输入姓名：张三</p>
                                <p style="text-indent: 2em;">●默认密码：123456</p>
                                <p style="text-indent: 2em;">●输入验证码点击登录</p><br/><br/>

                                <p style="color: red;">②用户名登录</p>（例如：农业信息化产业技术体系，李四）
                                <p style="text-indent: 2em;">●选择体系：农业信息化产业技术体系</p>
                                <p style="text-indent: 2em;">●输入姓名首字母+0001(人名三个字的后跟001)：ls0001</p>
                                <p style="text-indent: 2em;">●默认密码：123456</p>
                                <p style="text-indent: 2em;">●输入验证码点击登录</p>
                            </div>
                        </ul>
                    </table>
                </div>

                <div class="modal-footer no-margin-top ">
                    <button class="btn btn-sm btn-success pull-right"
                            data-dismiss="modal">
                        <i class="ace-icon fa fa-check"></i>知道了
                    </button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>


    <!-- /.col -->
</div>

<!-- /.row -->
</div>

<!-- /.main-content -->
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

<!-- inline scripts related to this page -->
<script type="text/javascript">
    jQuery(function ($) {
        $(document).on('click', '.toolbar a[data-target]', function (e) {
            e.preventDefault();
            var target = $(this).data('target');
            $('.widget-box.visible').removeClass('visible');//hide others
            $(target).addClass('visible');//show target
        });
    });
</script>


<script>
    function loadimage() {
        //document.getElementById("randImage").src = "image.jsp?"+Math.random();
        //$("#randImage").attr("src","image.jsp?date="+new Date().getTime());
        $("#randImage").attr("src", "image.jsp?timestamp=" + new Date().getTime());
    }

</script>
<script src="assets/js/bootstrap.min.js"></script>

<script src="assets/js/atits-js/login.js"></script>
</body>
</html>
