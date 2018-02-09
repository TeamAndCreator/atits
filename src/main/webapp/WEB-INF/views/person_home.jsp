<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>个人信息平台</title>

    <meta name="description" content="overview &amp; stats"/>
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

    <link rel="stylesheet" href="assets/css/atits-css/Person_model.css"/>

    <!-- inline styles related to this page -->
    <link rel="stylesheet" href="assets/css/atits-css/tixi_index.css"/>
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
<div id="navbar" class="navbar navbar-default">
    <script type="text/javascript">
        try {
            ace.settings.check('navbar', 'fixed')
        } catch (e) {
        }
    </script>

    <div class="navbar-container" id="navbar-container">
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
                    <i class="fa fa-leaf"></i> <span class="biaoti">个人管理平台</span>
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
                <li class="light-blue"><a data-toggle="dropdown" href="#"
                                          class="dropdown-toggle"> <img class="nav-user-photo"
                                                                        src="assets/avatars/user.jpg"
                                                                        alt="Jason's Photo"/> <span
                        class="user-info"> <small>欢迎,</small> ${person.userName}
						</span> <i class="ace-icon fa fa-caret-down"></i>
                </a>

                    <ul
                            class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                        <li><a href="bank" target="iframe"> <i
                                class="ace-icon fa fa-user"></i> 个人中心
                        </a></li>

                        <li class="divider"></li>

                        <li><a href="login_out"> <i
                                class="ace-icon fa fa-power-off"></i> 登出
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
    <div id="sidebar" class="sidebar                  responsive">
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


            <li class="active" onclick="show(this)"><a
                    href="person_detail?id=${person.id}" target="iframe"> <i
                    class="menu-icon fa fa-user"></i> <span class="menu-text">
							个人简介 </span>
            </a>
                <%--<b class="arrow"></b>--%>
            </li>

            <c:if test="${fn:contains(person.job,'首席专家')}">
                <li class="" onclick="show(this)"><a
                        href="system_detail1?id=${person.system.id}"
                        target="iframe"> <i class="menu-icon fa fa-info"></i> <span
                        class="menu-text"> 体系信息 </span>
                </a> <b class="arrow"></b></li>
            </c:if>

            <c:if test="${fn:contains(person.job,'研究室主任')}">
                <li class="" onclick="show(this)"><a
                        href="laboratory_detail?id=${person.laboratory.id}"
                        target="iframe"> <i class="menu-icon fa fa-info"></i> <span
                        class="menu-text"> 研究室信息 </span>
                </a> <b class="arrow"></b></li>
            </c:if>


            <c:if test="${fn:contains(person.job,'综合试验站站长')}">
                <li class="" onclick="show(this)"><a
                        href="station_detail?id=${person.station.id}"
                        target="iframe"> <i class="menu-icon fa fa-info"></i> <span
                        class="menu-text"> 试验站信息 </span>
                </a> <b class="arrow"></b></li>
            </c:if>




            <li class="hidden" onclick="show(this)"><a href="files_add"
                                                 target="iframe"> <i class="menu-icon fa fa-share-alt"></i> <span
                    class="menu-text"> 文件共享 </span>
            </a> <b class="arrow"></b></li>

            <li class="hidden" onclick="show(this)"><a href="sys_test" target="iframe"> <i
                    class="menu-icon fa fa-clipboard"></i> <span class="menu-text">
							考评管理 </span>
            </a> <b class="arrow"></b></li>

            <li class="hidden" onclick="show(this)"><a href="bank" target="iframe"> <i
                    class="menu-icon fa fa-paper-plane-o"></i> <span class="menu-text">
							年终总结上传 </span>
            </a> <b class="arrow"></b></li>

            <li class="" onclick="show(this)"><a href="home"> <i
                    class="menu-icon fa fa-paper-plane-o"></i> <span class="menu-text">
							返回 </span>
            </a> <b class="arrow"></b></li>

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
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->
                        <script type="text/javascript" language="javascript">
                            function iFrameHeight() {
                                var ifm = document.getElementById("iframe");
                                var subWeb = document.frames ? document.frames["iframe"].document
                                    : ifm.contentDocument;
                                if (ifm != null && subWeb != null) {
                                    ifm.height = subWeb.body.scrollHeight;
                                }
                            }
                        </script>

                        <iframe src="person_detail?id=${person.id}" marginheight="0" marginwidth="0"
                                frameborder="0" scrolling="yes" height=100%
                                onLoad="iFrameHeight()" id="iframe" width="100%" name="iframe"></iframe>
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
<script type="text/javascript">
    jQuery(function ($) {
        $('.easy-pie-chart.percentage')
            .each(
                function () {
                    var $box = $(this).closest('.infobox');
                    var barColor = $(this).data('color')
                        || (!$box.hasClass('infobox-dark') ? $box
                                .css('color')
                            : 'rgba(255,255,255,0.95)');
                    var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)'
                        : '#E2E2E2';
                    var size = parseInt($(this).data('size')) || 50;
                    $(this)
                        .easyPieChart(
                            {
                                barColor: barColor,
                                trackColor: trackColor,
                                scaleColor: false,
                                lineCap: 'butt',
                                lineWidth: parseInt(size / 10),
                                animate: /msie\s*(8|7|6)/
                                    .test(navigator.userAgent
                                        .toLowerCase()) ? false
                                    : 1000,
                                size: size
                            });
                })

        $('.sparkline').each(
            function () {
                var $box = $(this).closest('.infobox');
                var barColor = !$box.hasClass('infobox-dark') ? $box
                    .css('color') : '#FFF';
                $(this).sparkline('html', {
                    tagValuesAttribute: 'data-values',
                    type: 'bar',
                    barColor: barColor,
                    chartRangeMin: $(this).data('min') || 0
                });
            });

        //flot chart resize plugin, somehow manipulates default browser resize event to optimize it!
        //but sometimes it brings up errors with normal resize event handlers
        $.resize.throttleWindow = false;

        var placeholder = $('#piechart-placeholder').css({
            'width': '90%',
            'min-height': '150px'
        });
        var data = [{
            label: "social networks",
            data: 38.7,
            color: "#68BC31"
        }, {
            label: "search engines",
            data: 24.5,
            color: "#2091CF"
        }, {
            label: "ad campaigns",
            data: 8.2,
            color: "#AF4E96"
        }, {
            label: "direct traffic",
            data: 18.6,
            color: "#DA5430"
        }, {
            label: "other",
            data: 10,
            color: "#FEE074"
        }]

        function drawPieChart(placeholder, data, position) {
            $.plot(placeholder, data, {
                series: {
                    pie: {
                        show: true,
                        tilt: 0.8,
                        highlight: {
                            opacity: 0.25
                        },
                        stroke: {
                            color: '#fff',
                            width: 2
                        },
                        startAngle: 2
                    }
                },
                legend: {
                    show: true,
                    position: position || "ne",
                    labelBoxBorderColor: null,
                    margin: [-30, 15]
                },
                grid: {
                    hoverable: true,
                    clickable: true
                }
            })
        }

        drawPieChart(placeholder, data);

        /**
         we saved the drawing function and the data to redraw with different position later when switching to RTL mode dynamically
         so that's not needed actually.
         */
        placeholder.data('chart', data);
        placeholder.data('draw', drawPieChart);

        //pie chart tooltip example
        var $tooltip = $(
            "<div class='tooltip top in'><div class='tooltip-inner'></div></div>")
            .hide().appendTo('body');
        var previousPoint = null;

        placeholder.on('plothover', function (event, pos, item) {
            if (item) {
                if (previousPoint != item.seriesIndex) {
                    previousPoint = item.seriesIndex;
                    var tip = item.series['label'] + " : "
                        + item.series['percent'] + '%';
                    $tooltip.show().children(0).text(tip);
                }
                $tooltip.css({
                    top: pos.pageY + 10,
                    left: pos.pageX + 10
                });
            } else {
                $tooltip.hide();
                previousPoint = null;
            }

        });

        var d1 = [];
        for (var i = 0; i < Math.PI * 2; i += 0.5) {
            d1.push([i, Math.sin(i)]);
        }

        var d2 = [];
        for (var i = 0; i < Math.PI * 2; i += 0.5) {
            d2.push([i, Math.cos(i)]);
        }

        var d3 = [];
        for (var i = 0; i < Math.PI * 2; i += 0.2) {
            d3.push([i, Math.tan(i)]);
        }

        var sales_charts = $('#sales-charts').css({
            'width': '100%',
            'height': '220px'
        });
        $.plot("#sales-charts", [{
            label: "Domains",
            data: d1
        }, {
            label: "Hosting",
            data: d2
        }, {
            label: "Services",
            data: d3
        }], {
            hoverable: true,
            shadowSize: 0,
            series: {
                lines: {
                    show: true
                },
                points: {
                    show: true
                }
            },
            xaxis: {
                tickLength: 0
            },
            yaxis: {
                ticks: 10,
                min: -2,
                max: 2,
                tickDecimals: 3
            },
            grid: {
                backgroundColor: {
                    colors: ["#fff", "#fff"]
                },
                borderWidth: 1,
                borderColor: '#555'
            }
        });

        $('#recent-box [data-rel="tooltip"]').tooltip({
            placement: tooltip_placement
        });

        function tooltip_placement(context, source) {
            var $source = $(source);
            var $parent = $source.closest('.tab-content')
            var off1 = $parent.offset();
            var w1 = $parent.width();

            var off2 = $source.offset();
            //var w2 = $source.width();

            if (parseInt(off2.left) < parseInt(off1.left)
                + parseInt(w1 / 2))
                return 'right';
            return 'left';
        }

        $('.dialogs,.comments').ace_scroll({
            size: 300
        });

        //Android's default browser somehow is confused when tapping on label which will lead to dragging the task
        //so disable dragging when clicking on label
        var agent = navigator.userAgent.toLowerCase();
        if ("ontouchstart" in document && /applewebkit/.test(agent)
            && /android/.test(agent))
            $('#tasks').on('touchstart', function (e) {
                var li = $(e.target).closest('#tasks li');
                if (li.length == 0)
                    return;
                var label = li.find('label.inline').get(0);
                if (label == e.target || $.contains(label, e.target))
                    e.stopImmediatePropagation();
            });

        $('#tasks').sortable({
            opacity: 0.8,
            revert: true,
            forceHelperSize: true,
            placeholder: 'draggable-placeholder',
            forcePlaceholderSize: true,
            tolerance: 'pointer',
            stop: function (event, ui) {
                //just for Chrome!!!! so that dropdowns on items don't appear below other items after being moved
                $(ui.item).css('z-index', 'auto');
            }
        });
        $('#tasks').disableSelection();
        $('#tasks input:checkbox').removeAttr('checked').on('click',
            function () {
                if (this.checked)
                    $(this).closest('li').addClass('selected');
                else
                    $(this).closest('li').removeClass('selected');
            });

        //show the dropdowns on top or bottom depending on window height and menu position
        $('#task-tab .dropdown-hover').on('mouseenter', function (e) {
            var offset = $(this).offset();

            var $w = $(window)
            if (offset.top > $w.scrollTop() + $w.innerHeight() - 100)
                $(this).addClass('dropup');
            else
                $(this).removeClass('dropup');
        });

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
<script src="assets/js/atits-js/tixi_index.js"></script>
<script src="assets/js/atits-js/home.js"></script>
</body>
</html>
