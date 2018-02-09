<%@ page language="java" import="java.util.*,java.io.*" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="java.net.URLEncoder" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

</body>
</html>

<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>通知通告详情</title>

    <meta name="description" content="500 Error Page"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css"/>

    <!-- page specific plugin styles -->

    <!-- text fonts -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-fonts.css"/>

    <!-- ace styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.min.css" id="main-ace-style"/>

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-part2.min.css"/>
    <![endif]-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-skins.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-rtl.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/atits-css/notice_show.css"/>

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-ie.min.css"/>
    <![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->
    <script src="${pageContext.request.contextPath}/assets/js/ace-extra.min.js"></script>
    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

    <!--[if lte IE 8]>
    <script src="${pageContext.request.contextPath}/assets/js/html5shiv.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/respond.min.js"></script>
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
                <li><i class="ace-icon fa fa-home home-icon"></i> <a href="index">首页</a>
                </li>

                <li><a href="notice">通知公告</a></li>
                <li class="active">详情</li>
            </ul>
            <!-- /.breadcrumb -->
        </div>

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
                                <c:choose>
                                    <c:when test="${person.permission==1}">
                                        <ul class="pager">
                                            <li class="previous bigger-120">
                                                <a href="javascript:self.location=document.referrer;"><i
                                                        class="ace-icon fa fa-arrow-left"></i> 返回</a>
                                            </li>

                                            <li class="next bigger-120">
                                                <a href="notice_setting?id=${notice.id}"><i
                                                        class="ace-icon fa fa-pencil"></i> 修改</a>
                                            </li>
                                        </ul>
                                    </c:when>
                                    <c:when test="${person.permission==2}">
                                        <ul class="pager">
                                            <c:if test="${notice.system.id==person.system.id && notice.state!=0 && notice.editor.system.id==person.system.id}">
                                                <li class="next bigger-120">
                                                    <a href="notice_setting/${notice.id}"><i
                                                            class="ace-icon fa fa-pencil"></i> 修改</a>
                                                </li>
                                            </c:if>
                                            <li class="previous bigger-120">
                                                <a href="javascript:self.location=document.referrer;"><i
                                                        class="ace-icon fa fa-arrow-left"></i> 返回</a>
                                            </li>

                                        </ul>
                                    </c:when>
                                    <c:otherwise>
                                        <ul class="pager">
                                            <li class="previous bigger-120">
                                                <a href="javascript:self.location=document.referrer;"><i
                                                        class="ace-icon fa fa-arrow-left"></i> 返回</a>
                                            </li>
                                        </ul>
                                    </c:otherwise>
                                </c:choose>


                                <div class="col-md-10"
                                     style="float: none;display: block;margin-left: auto;margin-right: auto;">
                                    <h2 class="blue center">${notice.title}</h2>
                                </div>

                                <h5 class="publish">
                                    <span>来源&nbsp;:&nbsp;${notice.system.sysName}</span> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                    <span>编辑人&nbsp;:&nbsp;${notice.editor.name}</span> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;
                                    <span>时间&nbsp;:&nbsp;${notice.time}</span>&nbsp;<span>${notice.date}</span>
                                </h5>
                                <hr/>
                                <div class="col-md-11"
                                     style="float: none;display: block;margin-left: auto;margin-right: auto;">
                                    <div class="space"></div>
                                    <%--<div class="widget-main">${notice.content}</div>--%>
                                    <div class="widget-main">
                                        ${notice.content}


                                        <%--<iframe src="C:/Users/James/Desktop/work.pdf" width="800" height="600"></iframe>--%>
                                        <%--<div style="height: 50%; width:50%"><%--%>
                                        <%--String filePath="C:/Users/James/Desktop/work.pdf";--%>
                                        <%--File file = new File(filePath);--%>
                                        <%--response.setContentType("application/pdf");--%>
                                        <%--byte[] buffer = new byte[1024];--%>
                                        <%--FileInputStream fis = null;--%>
                                        <%--BufferedInputStream bis = null;--%>
                                        <%--fis = new FileInputStream(file);--%>
                                        <%--bis = new BufferedInputStream(fis);--%>
                                        <%--OutputStream os = response.getOutputStream();--%>
                                        <%--int i = bis.read(buffer);--%>
                                        <%--while (i != -1) {--%>
                                        <%--os.write(buffer, 0, i);--%>
                                        <%--i = bis.read(buffer);--%>
                                        <%--}--%>
                                        <%--os.flush();--%>
                                        <%--os.close();--%>
                                        <%--bis.close();--%>
                                        <%--fis.close();--%>
                                        <%--%>--%>
                                        <%--</div>--%>


                                    </div>

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
        </div>
        <!-- /.page-content -->
    </div>
    <!-- /.main-content -->

    <div class="footer">
        <div class="footer-inner">
            <!-- #section:basics/footer -->
            <div class="footer-content">
					<span class="bigger-120"> <span class="blue bolder">安徽农业大学数字农业研究所</span>
						&copy; 2017-2018（测试版）
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
    || document.write("<script src='${pageContext.request.contextPath}/assets/js/jquery.min.js'>"
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
            .write("<script src='${pageContext.request.contextPath}/assets/js/jquery.mobile.custom.min.js'>"
                + "<" + "/script>");
</script>
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>

<!-- page specific plugin scripts -->

<!-- ace scripts -->
<script src="${pageContext.request.contextPath}/assets/js/ace-elements.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->

<!-- the following scripts are used in demo only for onpage help and you don't need them -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.onpage-help.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/docs/assets/js/themes/sunburst.css"/>

<!-- <script type="text/javascript"> ace.vars['base'] = '..'; </script> -->
<script src="${pageContext.request.contextPath}/assets/js/ace/elements.onpage-help.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/ace/ace.onpage-help.js"></script>
<script src="${pageContext.request.contextPath}/docs/assets/js/rainbow.js"></script>
<script src="${pageContext.request.contextPath}/docs/assets/js/language/generic.js"></script>
<script src="${pageContext.request.contextPath}/docs/assets/js/language/html.js"></script>
<script src="${pageContext.request.contextPath}/docs/assets/js/language/css.js"></script>
<script src="${pageContext.request.contextPath}/docs/assets/js/language/javascript.js"></script>
</body>
</html>
