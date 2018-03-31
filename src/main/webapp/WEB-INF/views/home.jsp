<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>主页</title>

    <meta name="description" content="overview &amp; stats"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="assets/css/font-awesome.min.css"/>
    <link>

    <!-- page specific plugin styles -->

    <!-- text fonts -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-fonts.css"/>

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

    <link rel="stylesheet" href="assets/css/atits-css/tixi_index.css"/>

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
<div id="navbar" class="navbar navbar-inverse" role="navigation">
    <script type="text/javascript">
        try {
            ace.settings.check('navbar', 'fixed')
        } catch (e) {
        }
    </script>

    <div class="navbar-container " id="navbar-container">
        <!-- #section:basics/sidebar.mobile.toggle -->
        <button type="button" class="navbar-toggle menu-toggler pull-left"
                id="menu-toggler">
            <span class="sr-only">Toggle sidebar</span> <span class="icon-bar"></span>

            <span class="icon-bar"></span> <span class="icon-bar"></span>
        </button>

        <!-- /section:basics/sidebar.mobile.toggle -->
        <div class="navbar-header pull-left">
            <!-- #section:basics/navbar.layout.brand -->
            <a href="#" class="navbar-brand">
                <h1 class="tit">
                    <c:choose>
                        <c:when
                                test="${person.permission!=1}">
                            <i class="fa fa-leaf"></i>
                            <span class="biaoti">${sessionScope.person.system.sysName}</span>
                        </c:when>
                        <c:otherwise>
                            <i class="fa fa-leaf"></i>
                            <span class="biaoti">安徽省现代农业产业技术体系平台</span>
                        </c:otherwise>
                    </c:choose>


                </h1>
            </a>

            <!-- /section:basics/navbar.layout.brand -->

            <!-- #section:basics/navbar.toggle -->

            <!-- /section:basics/navbar.toggle -->
        </div>

        <!-- #section:basics/navbar.dropdown -->
        <div class="navbar-buttons navbar-header pull-right"
             role="navigation">
            <ul class="nav ace-nav log_backg">

                <!-- #section:basics/navbar.user_menu -->
                <li class="light-blue">
                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                        <span class="time"><p id="time" class="bigger-110"></p></span>
                        &nbsp;&nbsp;&nbsp;
                        <img class="nav-user-photo" src="assets/avatars/user.jpg" alt="Jason's Photo"/>
                        <span class="user-info">
                            <small>欢迎,</small>
                            ${person.userName}</span>
                        <i class="ace-icon fa fa-caret-down"></i>
                    </a>

                    <ul
                            class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                        <li><a href="bank" target="iframe"> <i
                                class="ace-icon fa fa-user"></i> 个人中心
                        </a></li>

                        <li class="divider"></li>

                        <li><a href="login_out"> <i
                                class="ace-icon fa fa-power-off"></i> 退出
                        </a></li>
                    </ul>
                </li>

                <!-- /section:basics/navbar.user_menu -->

                <!-- /section:basics/navbar.user_menu -->
            </ul>
        </div>

        <!-- /section:basics/navbar.dropdown -->
    </div>
    <!-- /.navbar-container -->
</div>

<!-- /section:basics/navbar.layout -->
<div class="main-container" id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.check('main-container', 'fixed')
        } catch (e) {
        }
    </script>

    <!-- #section:basics/sidebar -->
    <div id="sidebar" class="sidebar responsive">
        <script type="text/javascript">
            try {
                ace.settings.check('sidebar', 'fixed')
            } catch (e) {
            }
        </script>

        <div class="sidebar-shortcuts" id="sidebar-shortcuts">
            <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
                <button class="btn btn-success">
                    <i class="ace-icon fa fa-signal"></i>
                </button>

                <button class="btn btn-info">
                    <i class="ace-icon fa fa-pencil"></i>
                </button>

                <!-- #section:basics/sidebar.layout.shortcuts -->
                <button class="btn btn-warning">
                    <i class="ace-icon fa fa-users"></i>
                </button>

                <button class="btn btn-danger">
                    <i class="ace-icon fa fa-cogs"></i>
                </button>

                <!-- /section:basics/sidebar.layout.shortcuts -->
            </div>

            <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
                <span class="btn btn-success"></span> <span class="btn btn-info"></span>

                <span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
            </div>
        </div>
        <!-- /.sidebar-shortcuts -->

        <ul class="nav nav-list">
            <c:choose>

                <c:when test="${person.permission==1}">

                    <li class="" onclick="show(this)"><a href="index"
                                                         target="iframe"> <i class="menu-icon fa fa-home"></i> <span
                            class="menu-text"> 平台首页 </span>
                    </a> <b class="arrow"></b></li>

                    <li class="" onclick="show(this)"><a href="person"
                                                         target="iframe"> <i class="menu-icon fa fa-github-alt"></i>
                        <span
                                class="menu-text"> 人员管理 </span>
                    </a> <b class="arrow"></b></li>


                    <li class="hidden" onclick="show(this)"><a href="role"
                                                               target="iframe"> <i
                            class="menu-icon fa fa-github-alt"></i>
                        <span
                                class="menu-text"> 角色管理 </span>
                    </a> <b class="arrow"></b></li>


                    <li class="" onclick="show(this)"><a href="system"
                                                         target="iframe"> <i class="menu-icon fa fa-compass"></i> <span
                            class="menu-text"> 体系管理 </span>
                    </a> <b class="arrow"></b></li>

                    <li class="" onclick="show(this)"><a href="laboratory" target="iframe">
                        <i class="menu-icon fa fa-shield"></i>
                        <span class="menu-text"> 功能研究室</span>
                    </a> <b class="arrow"></b></li>

                    <li class="" onclick="show(this)"><a href="station" target="iframe">
                        <i class="menu-icon fa fa-arrows"></i>
                        <span class="menu-text"> 综合试验站 </span>
                    </a> <b class="arrow"></b></li>

                    <li class="" onclick="show(this)"><a href="notice"
                                                         target="iframe"> <i class="menu-icon fa fa-comments-o"></i>
                        <span
                                class="menu-text"> 通知公告 </span>
                    </a> <b class="arrow"></b></li>
                    <li class="" onclick="show(this)"><a href="dynamic"
                                                         target="iframe"> <i class="menu-icon fa fa-bookmark"></i> <span
                            class="menu-text"> 体系动态 </span>
                    </a> <b class="arrow"></b></li>

                    <li class="" onclick="show(this)"><a href="regulation"
                                                         target="iframe"> <i class="menu-icon fa fa-list"></i> <span
                            class="menu-text"> 规章制度 </span>
                    </a> <b class="arrow"></b></li>

                    <li class="hidden" onclick="show(this)"><a href="funds"
                                                               target="iframe"> <i class="menu-icon fa fa-list"></i>
                        <span
                                class="menu-text"> 经费分配</span>
                    </a> <b class="arrow"></b></li>


                    <li class="" onclick="show(this)"><a href="sys_task"
                                                         target="iframe"> <i class="menu-icon fa fa-list"></i> <span
                            class="menu-text"> 工作任务 </span>
                    </a> <b class="arrow"></b></li>


                    <li class="" onclick="show(this)"><a href="task_progress"
                                                         target="iframe"> <i class="menu-icon fa fa-list"></i> <span
                            class="menu-text"> 工作进展</span>
                    </a> <b class="arrow"></b></li>

                    <li class="" onclick="show(this)">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-list-alt"></i>
                            <span class="menu-text"> 考评管理 </span>
                            <b class="arrow fa fa-angle-down"></b>
                        </a> <b class="arrow"></b>


                        <ul class="submenu">
                            <li class="" onclick="show(this)"><a
                                    href="test_start" target="iframe">
                                <i class="menu-icon fa fa-caret-right"></i> 考评启动管理
                            </a> <b class="arrow"></b></li>

                            <li class="" onclick="show(this)"><a href="test_people" target="iframe">
                                <i class="menu-icon fa fa-shield"></i>
                                <span class="menu-text"> 外聘人员注册</span>
                            </a> <b class="arrow"></b></li>

                            <li class="" onclick="show(this)"><a href="test_manage" target="iframe">
                                <i class="menu-icon fa fa-arrows"></i>
                                <span class="menu-text"> 考评管理 </span>
                            </a> <b class="arrow"></b></li>
                        </ul>

                    </li>

                    <li class="" onclick="show(this)"><a href="files"
                                                         target="iframe"> <i
                            class="menu-icon fa fa-cloud-download"></i>
                        <span class="menu-text"> 下载中心 </span>
                    </a> <b class="arrow"></b></li>
                    <li class="" onclick="show(this)"><a href="activity"
                                                         target="iframe"> <i
                            class="menu-icon fa fa-cloud-download"></i>
                        <span class="menu-text"> 重大活动 </span>
                    </a> <b class="arrow"></b></li>
                    <li class="" onclick="show(this)"><a href="harvest"
                                                         target="iframe"> <i
                            class="menu-icon fa fa-cloud-download"></i>
                        <span class="menu-text"> 重大成果 </span>
                    </a> <b class="arrow"></b></li>
                    <li class="" onclick="show(this)"><a href="report"
                                                         target="iframe"> <i
                            class="menu-icon fa fa-cloud-download"></i>
                        <span class="menu-text"> 重大文件报告 </span>
                    </a> <b class="arrow"></b></li>


                    <li class="" onclick="show(this)"><a href="help"
                    > <i class="menu-icon fa fa-wrench"></i>
                        <span
                                class="menu-text"> 帮助</span>
                    </a> <b class="arrow"></b></li>
                </c:when>

                <c:when test="${person.permission==2}">


                    <li class="" onclick="show(this)"><a href="index"
                                                         target="iframe"> <i class="menu-icon fa fa-home home-icon"></i>
                        <span class="menu-text"> 体系首页 </span>
                    </a> <b class="arrow"></b></li>

                    <li class="" onclick="show(this)">
                        <a href="#" class="dropdown-toggle"> <i
                                class="menu-icon fa fa-list-alt"></i>
                            <span class="menu-text"> 体系概况 </span><b
                                    class="arrow fa fa-angle-down"></b>
                        </a> <b class="arrow"></b>
                        <ul class="submenu">
                            <li class="" onclick="show(this)"><a
                                    href="system_id?sysId=${person.system.id}" target="iframe">
                                <i class="menu-icon fa fa-caret-right"></i> 人员名单
                            </a> <b class="arrow"></b></li>

                            <li class="" onclick="show(this)"><a href="laboratory" target="iframe">
                                <i class="menu-icon fa fa-shield"></i>
                                <span class="menu-text"> 功能研究室</span>
                            </a> <b class="arrow"></b></li>

                            <li class="" onclick="show(this)"><a href="station" target="iframe">
                                <i class="menu-icon fa fa-arrows"></i>
                                <span class="menu-text"> 综合试验站 </span>
                            </a> <b class="arrow"></b></li>

                        </ul>
                    </li>

                    <li class="" onclick="show(this)"><a
                            href="notice" target="iframe"><i
                            class="menu-icon fa fa-comments-o"></i><span class="menu-text">
							通知公告</span>
                    </a> <b class="arrow"></b></li>

                    <li class="" onclick="show(this)"><a
                            href="dynamic" target="iframe"><i
                            class="menu-icon fa fa-bookmark"></i><span class="menu-text">
							体系动态</span>
                    </a> <b class="arrow"></b></li>

                    <li class="" onclick="show(this)"><a href="regulation"
                                                         target="iframe">
                        <i class="menu-icon fa fa-list"></i> <span
                            class="menu-text"> 规章制度 </span>
                    </a> <b class="arrow"></b></li>

                    <li class="" onclick="show(this)"><a
                            href="sys_task" target="iframe"><i
                            class="menu-icon fa fa-tasks"></i><span class="menu-text">
                        工作任务 </span>
                    </a> <b class="arrow"></b></li>


                    <li class="" onclick="show(this)"><a
                            href="task_progress_sys?sysId=${person.system.id}"
                            target="iframe"> <i class="menu-icon fa fa-spinner"></i> <span
                            class="menu-text">工作进展</span>
                    </a> <b class="arrow"></b></li>

                    <%--<li class="hidden" onclick="show(this)"><a href="bank"--%>
                    <%--target="iframe"> <i class="menu-icon fa fa-list"></i>--%>
                    <%--<span--%>
                    <%--class="menu-text"> 考评管理</span>--%>
                    <%--</a> <b class="arrow"></b></li>--%>
                    <li class="" onclick="show(this)">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-list-alt"></i>
                            <span class="menu-text"> 考评管理 </span>
                            <b class="arrow fa fa-angle-down"></b>
                        </a> <b class="arrow"></b>


                        <ul class="submenu">
                            <li class="" onclick="show(this)"><a
                                    href="test_start" target="iframe">
                                <i class="menu-icon fa fa-caret-right"></i> 考评启动管理
                            </a> <b class="arrow"></b></li>

                            <li class="" onclick="show(this)"><a href="test_people" target="iframe">
                                <i class="menu-icon fa fa-shield"></i>
                                <span class="menu-text"> 外聘人员注册</span>
                            </a> <b class="arrow"></b></li>

                            <li class="" onclick="show(this)"><a href="test_manage" target="iframe">
                                <i class="menu-icon fa fa-arrows"></i>
                                <span class="menu-text"> 考评管理 </span>
                            </a> <b class="arrow"></b></li>
                        </ul>

                    </li>

                    <li class="hidden" onclick="show(this)"><a
                            href="per_funds?sysId=${person.system.id}&bearer=${person.name}"
                            target="iframe"> <i class="menu-icon fa fa-joomla"></i> <span
                            class="menu-text"> 经费信息汇总 </span>
                    </a> <b class="arrow"></b></li>

                    <li class=" hidden" onclick="show(this)"><a href="bank"
                                                                target="iframe"> <i class="menu-icon fa fa-desktop"></i>
                        <span
                                class="menu-text"> 基础数据平台 </span>
                    </a> <b class="arrow"></b></li>

                    <li class="" onclick="show(this)"><a
                            href="files" target="iframe"><i
                            class="menu-icon fa fa-cloud-download"></i><span class="menu-text">
							下载中心</span>
                    </a> <b class="arrow"></b></li>

                    <li class="" onclick="show(this)"><a href="activity"
                                                         target="iframe"> <i
                            class="menu-icon fa fa-cloud-download"></i>
                        <span class="menu-text"> 重大活动 </span>
                    </a> <b class="arrow"></b></li>
                    <li class="" onclick="show(this)"><a href="harvest"
                                                         target="iframe"> <i
                            class="menu-icon fa fa-cloud-download"></i>
                        <span class="menu-text"> 重大成果 </span>
                    </a> <b class="arrow"></b></li>
                    <li class="" onclick="show(this)"><a href="report"
                                                         target="iframe"> <i
                            class="menu-icon fa fa-cloud-download"></i>
                        <span class="menu-text"> 重大文件报告 </span>
                    </a> <b class="arrow"></b></li>

                    <li class="" onclick="show(this)"><a href="person_home">
                        <i class="menu-icon fa fa-male"></i> <span class="menu-text">
									个人管理平台 </span>
                    </a> <b class="arrow"></b></li>

                    <li class="" onclick="show(this)"><a href="help"> <i class="menu-icon fa fa-wrench"></i>
                        <span
                                class="menu-text"> 帮助</span>
                    </a> <b class="arrow"></b></li>

                </c:when>
                <c:otherwise>
                    <li class="" onclick="show(this)"><a href="index"
                                                         target="iframe"> <i class="menu-icon fa fa-home home-icon"></i>
                        <span class="menu-text"> 体系首页 </span>
                    </a> <b class="arrow"></b></li>

                    <li class="" onclick="show(this)">
                            <%--class="active open"--%>
                        <a href="#" class="dropdown-toggle"> <i
                                class="menu-icon fa fa-list-alt"></i>
                            <span class="menu-text"> 体系概况 </span><b
                                    class="arrow fa fa-angle-down"></b>
                        </a> <b class="arrow"></b>
                        <ul class="submenu">
                            <li class="" onclick="show(this)"><a
                                    href="system_id?sysId=${person.system.id}" target="iframe">
                                <i class="menu-icon fa fa-caret-right"></i> 人员名单
                            </a> <b class="arrow"></b></li>
                            <li class="" onclick="show(this)">
                                <a
                                        href="sys_lab?sysId=${person.system.id}" target="iframe"> <i
                                        class="menu-icon fa fa-caret-right"></i> 功能研究室
                                </a> <b class="arrow"></b>
                            </li>
                            <li class="" onclick="show(this)">
                                <a href="sys_sta?sysId=${person.system.id}" target="iframe"> <i
                                        class="menu-icon fa fa-caret-right"></i> 综合试验站
                                </a> <b class="arrow"></b>
                            </li>
                        </ul>
                    </li>

                    <li class="" onclick="show(this)"><a
                            href="notice" target="iframe"><i
                            class="menu-icon fa fa-comments-o"></i><span class="menu-text">
							通知公告</span>
                    </a> <b class="arrow"></b></li>

                    <li class="" onclick="show(this)"><a
                            href="dynamic" target="iframe"><i
                            class="menu-icon fa fa-bookmark"></i><span class="menu-text">
							体系动态</span>
                    </a> <b class="arrow"></b></li>

                    <li class="" onclick="show(this)"><a
                            href="regulation" target="iframe"><i
                            class="menu-icon fa fa-list"></i><span class="menu-text">
							规章制度</span>
                    </a> <b class="arrow"></b></li>

                    <li class="" onclick="show(this)"><a
                            href="sub_three_task?bearerId=${person.id}" target="iframe"><i
                            class="menu-icon fa fa-tasks"></i><span class="menu-text">
                        体系任务 </span>
                    </a> <b class="arrow"></b></li>


                    <li class="" onclick="show(this)"><a
                            href="task_progress?sysId=${person.system.id}"
                            target="iframe"> <i class="menu-icon fa fa-spinner"></i> <span
                            class="menu-text">工作进展</span>
                    </a> <b class="arrow"></b></li>

                    <li class="hidden" onclick="show(this)"><a href="bank"
                                                               target="iframe"> <i class="menu-icon fa fa-list"></i>
                        <span
                                class="menu-text"> 考评管理</span>
                    </a> <b class="arrow"></b></li>


                    <li class="hidden" onclick="show(this)"><a
                            href="bank"
                        <%--href="per_funds?sysId=${person.system.id}&bearer=${person.name}"--%>
                            target="iframe"> <i class="menu-icon fa fa-joomla"></i> <span
                            class="menu-text"> 经费信息汇总 </span>
                    </a> <b class="arrow"></b></li>

                    <li class=" hidden" onclick="show(this)"><a href="bank"
                                                                target="iframe"> <i class="menu-icon fa fa-desktop"></i>
                        <span
                                class="menu-text"> 基础数据平台 </span>
                    </a> <b class="arrow"></b></li>

                    <li class="" onclick="show(this)"><a
                            href="sys_files?sysId=${person.system.id}" target="iframe"><i
                            class="menu-icon fa fa-cloud-download"></i><span class="menu-text">
							下载中心</span>
                    </a> <b class="arrow"></b></li>

                    <li class="" onclick="show(this)"><a href="activity"
                                                         target="iframe"> <i
                            class="menu-icon fa fa-cloud-download"></i>
                        <span class="menu-text"> 重大活动 </span>
                    </a> <b class="arrow"></b></li>
                    <li class="" onclick="show(this)"><a href="harvest"
                                                         target="iframe"> <i
                            class="menu-icon fa fa-cloud-download"></i>
                        <span class="menu-text"> 重大成果 </span>
                    </a> <b class="arrow"></b></li>
                    <li class="" onclick="show(this)"><a href="report"
                                                         target="iframe"> <i
                            class="menu-icon fa fa-cloud-download"></i>
                        <span class="menu-text"> 重大文件报告 </span>
                    </a> <b class="arrow"></b></li>


                    <li class="" onclick="show(this)"><a href="person_home">
                        <i class="menu-icon fa fa-male"></i> <span class="menu-text">
									个人管理平台 </span>
                    </a> <b class="arrow"></b></li>

                    <li class="" onclick="show(this)"><a href="help"> <i class="menu-icon fa fa-wrench"></i>
                        <span
                                class="menu-text"> 帮助</span>
                    </a> <b class="arrow"></b></li>

                </c:otherwise>

            </c:choose>


        </ul>
        <!-- /.nav-list -->

        <!-- #section:basics/sidebar.layout.minimize -->
        <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
            <i class="ace-icon fa fa-angle-double-left"
               data-icon1="ace-icon fa fa-angle-double-left"
               data-icon2="ace-icon fa fa-angle-double-right"></i>
        </div>

        <!-- /section:basics/sidebar.layout.minimize -->
        <script type="text/javascript">
            try {
                ace.settings.check('sidebar', 'collapsed')
            } catch (e) {
            }
        </script>
    </div>

    <!-- /section:basics/sidebar -->
    <div class="main-content">
        <div class="page-content">
            <!-- /section:settings.box -->
            <div class="page-content-area">

                <div class="row">
                    <div class="col-xs-12 ">
                        <!-- PAGE CONTENT BEGINS -->


                        <iframe src="index" marginheight="0" marginwidth="0"
                                frameborder="0" scrolling="yes" height=100%
                                onLoad="iFrameHeight()" id="iframe" width="100%" name="iframe"></iframe>
                        <%--<c:choose>--%>
                        <%--<c:when test="${person.permission ==1}">--%>
                        <%--</c:when>--%>
                        <%--<c:otherwise>--%>
                        <%--<iframe src="sys_index?sysId=${person.system.id}" marginheight="0" marginwidth="0"--%>
                        <%--frameborder="0" scrolling="yes" height=100%--%>
                        <%--onLoad="iFrameHeight()" id="iframe" width="100%" name="iframe"></iframe>--%>
                        <%--</c:otherwise>--%>
                        <%--</c:choose>--%>


                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.page-content-area -->
        </div>
        <!-- /.page-content -->
    </div>
    <!-- /.main-content -->
    <a href="#" id="btn-scroll-up"
       class="btn-scroll-up btn btn-sm btn-inverse s"> <i
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

<!--[if lte IE 8]>
<script src="assets/js/excanvas.min.js"></script>
<![endif]-->
<script src="assets/js/jquery-ui.custom.min.js"></script>
<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
<script src="assets/js/jquery.easypiechart.min.js"></script>
<script src="assets/js/jquery.sparkline.min.js"></script>
<script src="assets/js/flot/jquery.flot.min.js"></script>
<script src="assets/js/flot/jquery.flot.pie.min.js"></script>
<script src="assets/js/flot/jquery.flot.resize.min.js"></script>

<!-- ace scripts -->
<script src="assets/js/ace-elements.min.js"></script>
<script src="assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->


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
<script src="assets/js/atits-js/home.js"></script>


<c:if test="${person.password eq '123456'}">
    <script type="text/javascript">
        alert("您的初始密码尚未修改，请及时修改密码！");
    </script>
</c:if>

<script type="text/javascript">
    /*********************点击事件*********************/
    $(document).ready(function () {
        if (sessionStorage.person==null){
            window.location.href = "home";
        }

//时间设置
        function currentTime() {
            var d = new Date(), str = '';
            str += d.getFullYear() + '年';
            str += d.getMonth() + 1 + '月';
            str += d.getDate() + '日';
            str += d.getHours() + '时';
            str += d.getMinutes() + '分';
            str += d.getSeconds() + '秒';
            return str;
        }

        setInterval(function () {
            $('#time').html(currentTime)
        }, 1000);


        // window.onresize = function () {
        //     changeFrameHeight();
        // }
    });

    function iFrameHeight() {
        var ifm = document.getElementById("iframe");
        ifm.height = document.documentElement.clientHeight - 100;
    }


</script>

</body>
</html>
