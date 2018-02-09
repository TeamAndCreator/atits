<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title></title>

    <meta name="description"
          content="This is page-header (.page-header &gt; h1)"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="assets/css/font-awesome.min.css"/>

    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="assets/css/prettify.css"/>

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

    <!-- News -->
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


    <link href="assets/css/atits-css/tixi.css" rel="stylesheet"
          type="text/css"/>

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


    <div class="main-content">
        <!-- #section:basics/content.breadcrumbs -->


        <!-- /section:basics/content.breadcrumbs -->
        <div class="page-content">
            <!-- /section:settings.box -->
            <div class="page-content-area">

                <!-- /.page-header -->

                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->
                        <div class="row">
                            <div class="col-md-6 ">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <span class="glyphicon glyphicon-list-alt"></span><b>通知公告</b>
                                    </div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <ul class="demo2">
                                                    <c:forEach items="${notices}" var="notice">
                                                        <li class="news-item ">${notice.title}<a
                                                                href="notice_detail?id=${notice.id}" class="right">Read
                                                            more...</a>
                                                        </li>
                                                    </c:forEach>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel-footer"></div>
                                </div>
                            </div>
                            <div class="col-md-6 ">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <span class="glyphicon glyphicon-list-alt"></span><b>体系动态</b>
                                    </div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <ul class="demo2">
                                                    <c:forEach items="${dynamics}" var="dynamic">
                                                        <li class="news-item ">${dynamic.title}<a
                                                                href="dynamic_detail?id=${dynamic.id}" class="text-right">Read
                                                            more...</a>
                                                        </li>
                                                    </c:forEach>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel-footer"></div>
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
        </div>
        <!-- /.page-content -->
    </div>
    <!-- /.main-content -->

    <div class="space-320"></div>

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

    <a href="#" id="btn-scroll-up"
       class="btn-scroll-up btn btn-sm btn-inverse"> <i
            class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>
</div>
<!-- /.main-container -->

<!-- basic scripts -->

<!--[if !IE]> -->
<script type="text/javascript">
    window.jQuery || document.write("<script src='assets/js/jquery.min.js'>" + "<" + "/script>");
</script>

<!-- <![endif]-->

<!--[if IE]>
<script type="text/javascript">
    window.jQuery || document.write("<script src='assets/js/jquery1x.min.js'>" + "<" + "/script>");
</script>
<![endif]-->
<script type="text/javascript">
    if ('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
</script>
<script src="assets/js/bootstrap.min.js"></script>

<!-- page specific plugin scripts -->
<script src="assets/js/prettify.js"></script>

<!-- ace scripts -->
<script src="assets/js/ace-elements.min.js"></script>
<script src="assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->
<script type="text/javascript">
    jQuery(function ($) {

        window.prettyPrint && prettyPrint();
        $('#id-check-horizontal').removeAttr('checked').on('click', function () {
            $('#dt-list-1').toggleClass('dl-horizontal').prev().html(this.checked ? '&lt;dl class="dl-horizontal"&gt;' : '&lt;dl&gt;');
        });

    })
</script>

<!-- New Js -->
<script src="assets/js/jquery.min.js" type="text/javascript"></script>
<script src="assets/bootstrapnews/js/jquery.bootstrap.newsbox.min.js"
        type="text/javascript"></script>

<script type="text/javascript">
    $(function () {
        $(".demo2").bootstrapNews({
            newsPerPage: 16,
            autoplay: true,
            pauseOnHover: true,
            navigation: false,
            direction: 'up',
            newsTickerInterval: 2500,
            onToDo: function () {
                //console.log(this);
            }
        });
    });
</script>


<script type="text/javascript">
    //滚动插件
    (function ($) {
        $.fn.extend({
            Scroll: function (opt, callback) {
                //参数初始化
                if (!opt)
                    var opt = {};
                var _this = this.eq(0).find("ul:first");
                var lineH = _this.find("li:first").height(), //获取行高
                    line = opt.line ? parseInt(opt.line, 10) : parseInt(
                        this.height() / lineH, 10), //每次滚动的行数，默认为一屏，即父容器高度
                    speed = opt.speed ? parseInt(opt.speed, 10) : 500, //卷动速度，数值越大，速度越慢（毫秒）
                    timer = opt.timer ? parseInt(opt.timer, 10) : 3000; //滚动的时间间隔（毫秒）
                if (line == 0)
                    line = 1;
                var upHeight = 0 - line * lineH;
                //滚动函数
                scrollUp = function () {
                    _this.animate({
                        marginTop: upHeight
                    }, speed, function () {
                        for (i = 1; i <= line; i++) {
                            _this.find("li:first").appendTo(_this);
                        }
                        _this.css({
                            marginTop: 0
                        });
                    });
                }
                //鼠标事件绑定
                _this.hover(function () {
                    clearInterval(timerID);
                }, function () {
                    timerID = setInterval("scrollUp()", timer);
                }).mouseout();
            }
        });
    })(jQuery);

    $(document).ready(function () {
        $("#s2").Scroll({
            line: 4,
            speed: 500,
            timer: 4000
        });
    });
</script>


<!-- the following scripts are used in demo only for onpage help and you don't need them -->
<link rel="stylesheet" href="assets/css/ace.onpage-help.css"/>
<link rel="stylesheet" href="docs/assets/js/themes/sunburst.css"/>

<script type="text/javascript"> ace.vars['base'] = '..'; </script>
<script src="assets/js/ace/elements.onpage-help.js"></script>
<script src="assets/js/ace/ace.onpage-help.js"></script>
<script src="docs/assets/js/rainbow.js"></script>
<script src="docs/assets/js/language/generic.js"></script>
<script src="docs/assets/js/language/html.js"></script>
<script src="docs/assets/js/language/css.js"></script>
<script src="docs/assets/js/language/javascript.js"></script>
</body>
</html>
