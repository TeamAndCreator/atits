<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>现代农业产业技术体系展示</title>

    <meta name="description" content="overview &amp; stats"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>

    <!-- bootstrap & fontawesome -->

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

    <link rel="stylesheet" href="assets/css/atits-css/index.css"/>
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="assets/css/ace-ie.min.css"/>
    <![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->
    <script src="assets/js/ace-extra.min.js"></script>

    <!--bxslider  -->
    <link rel="stylesheet" type="text/css"
          href="assets/jquery.bxslider/jquery.bxslider.css">

    <!-- news -->
    <link rel="stylesheet" type="text/css"
          href="assets/bootstrapnews/css/normalize.css"/>
    <link rel="stylesheet" type="text/css"
          href="assets/bootstrapnews/css/default.css">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet"
          type="text/css"/>
    <link href="assets/bootstrapnews/css/bootstrap-theme.min.css"
          rel="stylesheet" type="text/css"/>
    <link href="assets/bootstrapnews/css/site.css" rel="stylesheet"
          type="text/css"/>

    <link rel="stylesheet" href="assets/css/atits-css/index.css"/>

    <script>
        onload = function () {
            content.onmouseover = function () {
                this.title = this.innerHTML;
            }
        }
    </script>

    <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="assets/css/font-awesome.min.css"/>

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
                    <i class="fa fa-leaf"></i>
                    <span class="biaoti">安徽省现代农业产业技术体系平台</span>
                </h1>
            </a>
        </div>

        <!-- #section:basics/navbar.dropdown -->
        <div class="navbar-buttons navbar-header pull-right"
             role="navigation">
            <ul class="nav ace-nav log_backg">
                <!-- #section:basics/navbar.user_menu -->

                <%--<li class="light-blue">--%>
                <%--<a data-toggle="dropdown"  class="dropdown-toggle">--%>
                <%--<p id="time" class="bigger-110"></p>--%>
                <%--</a>--%>
                <%--</li>--%>


                <li class="light-blue">
                    <a href='system_detail?id=1'>
                        &nbsp;&nbsp;&nbsp;<span style="font-size: large;color: white">注册</span>&nbsp;&nbsp;&nbsp;
                    </a>
                </li>
                <li class="light-blue">
                    <a href='system_detail?id=1'>
                        &nbsp;&nbsp;&nbsp;<span style="font-size: large">登录</span>&nbsp;&nbsp;&nbsp;
                    </a>
                </li>


                <!-- /section:basics/navbar.user_menu -->

                <!-- /section:basics/navbar.user_menu -->
            </ul>
        </div>

        <!-- /section:basics/navbar.dropdown -->
    </div>
    <!-- /.navbar-container -->
</div>

<div class="main-container" id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.check('main-container', 'fixed')
        } catch (e) {
        }
    </script>

    <div class="main-content">

        <!-- /section:basics/content.breadcrumbs -->
        <div class="page-content">
            <!-- /section:settings.box -->
            <div class="page-content-area" style="margin-left: 20px;margin-right: 20px">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="col-md-12">
                            <div class="panel panel-default">
                                <div class="panel-heading ">
                                    <i class="ace-icon fa fa-share "></i><b style="font-size:larger">安徽省现代农业产业技术体系综述</b>
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <article >
                                                <div id="article"></div>
                                            <%--${systems[0].content}--%>
                                            <%--&lt;%&ndash;系统平台是指在电脑里让软件运行的系统环境，包括硬件环境和软件环境。&ndash;%&gt;--%>
                                            <%--&lt;%&ndash;典型的系统平台包括一台电脑的架构（computer architecture）、操作系统、编程语言等。&ndash;%&gt;--%>
                                            </article>
                                            <%--<div id="article"></div>--%>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-footer"></div>
                            </div>
                        </div>
                    </div>

                    <br>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="my-widget-header" style="height: 32px">
                                <h4 class="widget-title lighter fon-til tixishow white">体系展示</h4>
                            </div>

                            <div class="widget-box widget-color-blue2">
                                <div class="widget-body">
                                    <div class="widget-main">
                                        <div class="row">

                                            <div id="demo">
                                                <table border=0 align=center cellpadding=1 cellspacing=1 cellspace=0>
                                                    <tr>
                                                        <td valign=top bgcolor=ffffff id=marquePic1>
                                                            <table width='100%' border='0' cellspacing='0'>
                                                                <tr>
                                                                    <td align="center"><a href='system_detail?id=2'>
                                                                        <img src="assets/images/rice.jpg"
                                                                             class="pic"><br><br>水稻产业技术体系</a>
                                                                    </td>
                                                                    <td align=center><a href='system_detail?id=3'>
                                                                        <img src="assets/images/wheat.jpg"
                                                                             class="pic"><br><br>小麦产业技术体系</a>
                                                                    </td>
                                                                    <td align=center><a href='system_detail?id=4'>
                                                                        <img src="assets/images/corn.jpg"
                                                                             class="pic"><br><br>玉米产业技术体系</a>
                                                                    </td>
                                                                    <td align="center"><a href='system_detail?id=5'>
                                                                        <img src="assets/images/rape_cotton.jpg"
                                                                             class="pic"><br><br>油菜棉花产业技术体系</a>
                                                                    </td>
                                                                    <td align=center><a href='system_detail?id=6'>
                                                                        <img src="assets/images/pig.jpg"
                                                                             class="pic"><br><br>生猪产业技术体系</a>
                                                                    </td>
                                                                    <td align=center><a href='system_detail?id=7'>
                                                                        <img src="assets/images/poultry.jpg"
                                                                             class="pic"><br><br>家禽产业技术体系</a>
                                                                    </td>
                                                                    <td align=center><a href='system_detail?id=8'>
                                                                        <img src="assets/images/cattle_sheep.jpg"
                                                                             class="pic"><br><br>牛羊产业技术体系</a>
                                                                    </td>
                                                                    <td align=center><a href='system_detail?id=9'>
                                                                        <img src="assets/images/aquatic.jpg"
                                                                             class="pic"><br><br>水产产业技术体系</a>
                                                                    </td>
                                                                    <td align=center><a href='system_detail?id=10'>
                                                                        <img src="assets/images/vegetables.jpg" class="pic"><br><br>蔬菜产业技术体系</a>
                                                                    </td>
                                                                    <td align=center><a href='system_detail?id=11'>
                                                                        <img src="assets/images/fruit_trees.jpg"
                                                                             class="pic"><br><br>果树产业技术体系</a>
                                                                    </td>
                                                                    <td align=center><a href='system_detail?id=12'>
                                                                        <img src="assets/images/tea.jpg"
                                                                             class="pic"><br><br>茶叶产业技术体系</a>
                                                                    </td>
                                                                    <td align=center><a href='system_detail?id=13'>
                                                                        <img src="assets/images/sericulture.jpg"
                                                                             class="pic"><br><br>蚕桑中药材产业技术体系</a>
                                                                    </td>
                                                                    <td align=center><a href='system_detail?id=14'>
                                                                        <img src="assets/images/information.jpg"
                                                                             class="pic"><br><br>农业信息化产业技术体系</a>
                                                                    </td>
                                                                    <td align=center><a href='system_detail?id=15'>
                                                                        <img src="assets/images/equipment.jpg"
                                                                             class="pic"><br>农机装备应用产业技术<br>体系</a>
                                                                    </td>
                                                                    <td align=center><a href='system_detail?id=16'>
                                                                        <img src="assets/images/ecology.jpg"
                                                                             class="pic"><br>农业生态环保与质量安全<br>产业技术体系</a>
                                                                    </td>

                                                                </tr>
                                                            </table>
                                                        </td>
                                                        <td id=marquePic2 valign=top></td>
                                                    </tr>
                                                </table>
                                            </div>


                                        </div>


                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- /.col -->
                    </div><br><br>
                    <!-- /.row -->

                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->
                        <div class="col-md-6">
                            <div class="panel panel-default">
                                <div class="panel-heading ">
                                    <span class="glyphicon glyphicon-list-alt"></span><b
                                        style="font-size:larger">通知公告</b>
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <ul class="demo2">
                                                <c:forEach items="${notices}" var="notice">
                                                    <c:choose>
                                                        <c:when test="${person.permission == 1 || person.permission == 2}">
                                                            <c:if test="${notice.state==1}">
                                                                <c:choose>
                                                                    <c:when test="${notice.title.length()>22}">
                                                                        <li class="news-item">
                                                                            <div style='text-overflow:ellipsis;overflow:hidden;'
                                                                                 title=${notice.title}>${notice.title.substring(0,22)}...

                                                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                                                <span class="pull-right">${notice.time}</span>
                                                                                <a href="notice_detail?id=${notice.id}"
                                                                                   class="pull-right">详情</a>

                                                                            </div>
                                                                        </li>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <li class="news-item "
                                                                            id="content">${notice.title}&nbsp;&nbsp;&nbsp;&nbsp;
                                                                            <span class="pull-right">${notice.time}</span>
                                                                            <a href="notice_detail?id=${notice.id}"
                                                                               class="pull-right">详情</a>
                                                                        </li>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </c:if>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <c:if test="${notice.state==1&&notice.system.id==1 || notice.state==1&&notice.system.id==person.system.id}">
                                                                <c:choose>
                                                                    <c:when test="${notice.title.length()>22}">
                                                                        <li class="news-item">
                                                                            <div style='text-overflow:ellipsis;overflow:hidden;'
                                                                                 title=${notice.title}>${notice.title.substring(0,22)}...

                                                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                                                <span class="pull-right">${notice.time}</span>
                                                                                <a href="notice_detail?id=${notice.id}"
                                                                                   class="pull-right">详情</a>
                                                                            </div>
                                                                        </li>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <li class="news-item "
                                                                            id="content">${notice.title}&nbsp;&nbsp;&nbsp;&nbsp;
                                                                            <span class="pull-right">${notice.time}</span>
                                                                            <a href="notice_detail?id=${notice.id}"
                                                                               class="pull-right">详情</a>
                                                                        </li>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </c:if>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </c:forEach>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-footer"></div>
                            </div>
                        </div>


                        <div class="col-md-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <span class="glyphicon glyphicon-list-alt"></span><b
                                        style="font-size:larger">体系动态</b>
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <ul class="demo2">
                                                <c:forEach items="${dynamics}" var="dynamic">
                                                    <c:choose>
                                                        <c:when test="${person.permission==1}">
                                                            <c:if test="${dynamic.state==1 || dynamic.state==3}">

                                                                <c:choose>
                                                                    <c:when test="${dynamic.title.length()>22}">
                                                                        <li class="news-item">
                                                                            <div style='text-overflow:ellipsis;overflow:hidden;'
                                                                                 title=${dynamic.title}>${dynamic.title.substring(0,22)}...

                                                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                                                <span class="pull-right">${dynamic.time}</span>
                                                                                <a href="dynamic_detail?id=${dynamic.id}"
                                                                                   class="pull-right">详情</a>
                                                                            </div>
                                                                        </li>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <li class="news-item "
                                                                            id="content">${dynamic.title}&nbsp;&nbsp;&nbsp;&nbsp;
                                                                            <span class="pull-right">${dynamic.time}</span>
                                                                            <a href="dynamic_detail?id=${dynamic.id}"
                                                                               class="pull-right">详情</a>
                                                                        </li>
                                                                    </c:otherwise>
                                                                </c:choose>

                                                                <%--<li class="news-item ">${dynamic.title}&nbsp;&nbsp;&nbsp;&nbsp;<a--%>
                                                                <%--href="dynamic_detail?id=${dynamic.id}" class="right">详情</a>--%>
                                                                <%--<span class="pull-right">${dynamic.time}</span>--%>
                                                                <%--</li>--%>
                                                            </c:if>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <c:if test="${dynamic.state==1 && dynamic.system.id == person.system.id || dynamic.state==3}">
                                                                <%--<li class="news-item ">${dynamic.title}&nbsp;&nbsp;&nbsp;&nbsp;<a--%>
                                                                <%--href="dynamic_detail?id=${dynamic.id}" class="right">详情</a>--%>
                                                                <%--<span class="pull-right">${dynamic.time}</span>--%>
                                                                <%--</li>--%>
                                                                <c:choose>
                                                                    <c:when test="${dynamic.title.length()>22}">
                                                                        <li class="news-item">
                                                                            <div style='text-overflow:ellipsis;overflow:hidden;'
                                                                                 title=${dynamic.title}>${dynamic.title.substring(0,22)}...

                                                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                                                <span class="pull-right">${dynamic.time}</span>
                                                                                <a href="dynamic_detail?id=${dynamic.id}"
                                                                                   class="pull-right">详情</a>
                                                                            </div>
                                                                        </li>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <li class="news-item "
                                                                            id="content">${dynamic.title}&nbsp;&nbsp;&nbsp;&nbsp;
                                                                            <span class="pull-right">${dynamic.time}</span>
                                                                            <a href="dynamic_detail?id=${dynamic.id}"
                                                                               class="pull-right">详情</a>
                                                                        </li>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </c:if>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </c:forEach>

                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-footer"></div>
                            </div>
                        </div>
                        <!-- PAGE CONTENT ENDS -->
                    </div><br>
                    <!-- /.col -->

                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->
                        <div class="col-md-6">
                            <div class="panel panel-default">
                                <div class="panel-heading ">
                                    <span class="glyphicon glyphicon-list-alt"></span><b
                                        style="font-size:larger">重大成果</b>
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <ul class="demo2">
                                                <c:forEach items="${notices}" var="notice">
                                                    <c:if test="${notice.state==1}">
                                                        <c:choose>
                                                            <c:when test="${notice.title.length()>22}">
                                                                <li class="news-item">
                                                                    <div style='text-overflow:ellipsis;overflow:hidden;'
                                                                         title=${notice.title}>${notice.title.substring(0,22)}...

                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <span class="pull-right">${notice.time}</span>
                                                                        <a href="notice_detail?id=${notice.id}"
                                                                           class="pull-right">详情</a>
                                                                    </div>
                                                                </li>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <li class="news-item "
                                                                    id="content">${notice.title}&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    <span class="pull-right">${notice.time}</span>
                                                                    <a href="notice_detail?id=${notice.id}"
                                                                       class="pull-right">详情</a>
                                                                </li>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </c:if>
                                                </c:forEach>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-footer"></div>
                            </div>
                        </div>


                        <div class="col-md-6">
                            <div class="panel panel-default">
                                <div class="panel-heading ">
                                    <span class="glyphicon glyphicon-list-alt"></span><b
                                        style="font-size:larger">重大活动</b>
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <ul class="demo2">
                                                <c:forEach items="${notices}" var="notice">
                                                    <c:if test="${notice.state==1}">
                                                        <c:choose>
                                                            <c:when test="${notice.title.length()>22}">
                                                                <li class="news-item">
                                                                    <div style='text-overflow:ellipsis;overflow:hidden;'
                                                                         title=${notice.title}>${notice.title.substring(0,22)}...

                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <span class="pull-right">${notice.time}</span>
                                                                        <a href="notice_detail?id=${notice.id}"
                                                                           class="pull-right">详情</a>
                                                                    </div>
                                                                </li>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <li class="news-item "
                                                                    id="content">${notice.title}&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    <span class="pull-right">${notice.time}</span>
                                                                    <a href="notice_detail?id=${notice.id}"
                                                                       class="pull-right">详情</a>
                                                                </li>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </c:if>
                                                </c:forEach>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-footer"></div>
                            </div>
                        </div>
                        <!-- PAGE CONTENT ENDS -->
                    </div>

                </div>


                <!--尾部一行--><br>
                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->
                        <div class="col-md-6">
                            <div class="panel panel-default">
                                <div class="panel-heading ">
                                    <span class="glyphicon glyphicon-list-alt"></span><b
                                        style="font-size:larger">重要文件</b>
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <ul class="demo2 notices" id="lll">
                                                <%--<c:forEach items="${notices}" var="notice">--%>
                                                    <%--<c:if test="${notice.state==1}">--%>
                                                        <%--<c:choose>--%>
                                                            <%--<c:when test="${notice.title.length()>22}">--%>
                                                                <%--<li class="news-item">--%>
                                                                    <%--<div style="text-overflow:ellipsis;overflow:hidden;"--%>
                                                                         <%--title=${notice.title}>${notice.title.substring(0,22)}...--%>

                                                                        <%--&nbsp;&nbsp;&nbsp;&nbsp;--%>
                                                                        <%--<span class="pull-right">${notice.time}</span>--%>
                                                                        <%--<a href="notice_detail?id=${notice.id}"--%>
                                                                           <%--class="pull-right">详情</a>--%>
                                                                    <%--</div>--%>
                                                                <%--</li>--%>
                                                            <%--</c:when>--%>
                                                            <%--<c:otherwise>--%>
                                                                <%--<li class="news-item "--%>
                                                                    <%--id="content">${notice.title}&nbsp;&nbsp;&nbsp;&nbsp;--%>
                                                                    <%--<span class="pull-right">${notice.time}</span>--%>
                                                                    <%--<a href="notice_detail?id=${notice.id}"--%>
                                                                       <%--class="pull-right">详情</a>--%>
                                                                <%--</li>--%>
                                                            <%--</c:otherwise>--%>
                                                        <%--</c:choose>--%>
                                                    <%--</c:if>--%>
                                                <%--</c:forEach>--%>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-footer"></div>
                            </div>
                        </div>


                        <div class="col-md-6">
                            <div class="panel panel-default">
                                <div class="panel-heading ">
                                    <span class="glyphicon glyphicon-list-alt"></span><b
                                        style="font-size:larger">规章制度</b>
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <ul class="demo2">
                                                <c:forEach items="${notices}" var="notice">
                                                    <c:if test="${notice.state==1}">
                                                        <c:choose>
                                                            <c:when test="${notice.title.length()>22}">
                                                                <li class="news-item">
                                                                    <div style='text-overflow:ellipsis;overflow:hidden;'
                                                                         title=${notice.title}>${notice.title.substring(0,22)}...

                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <span class="pull-right">${notice.time}</span>
                                                                        <a href="notice_detail?id=${notice.id}"
                                                                           class="pull-right">详情</a>
                                                                    </div>
                                                                </li>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <li class="news-item "
                                                                    id="content">${notice.title}&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    <span class="pull-right">${notice.time}</span>
                                                                    <a href="notice_detail?id=${notice.id}"
                                                                       class="pull-right">详情</a>
                                                                </li>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </c:if>
                                                </c:forEach>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-footer"></div>
                            </div>
                        </div>
                        <!-- PAGE CONTENT ENDS -->
                    </div>
                </div>
                <!--尾结束-->

            </div>
            <!-- /.page-content-area -->
        </div>
        <!-- /.page-content -->
    </div>
    <!-- /.main-content -->
    <div id="aaa"></div>

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
<!-- 引入js -->
<script src="${pageContext.request.contextPath}/assets/js/atits-js/main.js"></script>
<!-- page specific plugin scripts -->


<script type="text/javascript">
    $(function () {
        $(".demo2").bootstrapNews({
            newsPerPage: 5,
            autoplay: true,
            pauseOnHover: true,
            direction: 'up',
            newsTickerInterval: 3000,
            onToDo: function () {
                //console.log(this);
            }
        });
    });
</script>


<script type="text/javascript">
    $(function () {
        $('.bxslider').bxSlider({
            mode: 'fade',
            auto: true,
            pause: 2000,

        });
    });
</script>

<script type="text/javascript">
    var speed = 13
    marquePic2.innerHTML = marquePic1.innerHTML

    function Marquee() {
        if (demo.scrollLeft >= marquePic1.scrollWidth) {
            demo.scrollLeft = 0
        } else {
            demo.scrollLeft++
        }
    }

    var MyMar = setInterval(Marquee, speed)
    demo.onmouseover = function () {
        clearInterval(MyMar)
    }
    demo.onmouseout = function () {
        MyMar = setInterval(Marquee, speed)
    }
</script>

<script type="text/javascript">
    $(document).ready(function () {

    });
</script>
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

<script src="assets/js/jquery.min.js" type="text/javascript"></script>
<script src="assets/bootstrapnews/js/jquery.bootstrap.newsbox.min.js"
        type="text/javascript"></script>

<script src="assets/jquery.bxslider/jquery.bxslider.min.js"></script>

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

<script type="text/javascript" src="assets/js/readmore/readmore.min.js"></script>

<script type="text/javascript">
    /*********************点击事件*********************/
    $(document).ready(function () {

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
        }, 10);


        window.onresize = function () {
            changeFrameHeight();
        }
    });

    function iFrameHeight() {
        var ifm = document.getElementById("iframe");
        ifm.height = document.documentElement.clientHeight - 100;
    }


</script>

</body>
</html>
