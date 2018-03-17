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
        <%--<div class="breadcrumbs" id="breadcrumbs">--%>
        <%--<script type="text/javascript">--%>
        <%--try {--%>
        <%--ace.settings.check('breadcrumbs', 'fixed')--%>
        <%--} catch (e) {--%>
        <%--}--%>
        <%--</script>--%>

        <%--<ul class="breadcrumb">--%>
        <%--<li><i class="ace-icon fa fa-home home-icon"></i>--%>
        <%--<a href="#">首页</a>--%>
        <%--</li>--%>
        <%--<li class="active">考评管理</li>--%>
        <%--</ul>--%>
        <%--<!-- /.breadcrumb -->--%>

        <%--</div>--%>
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
                    <div class="col-sm-12 col-lg-12 ">
                        <br/>
                        <div class="action-buttons">
                            <button class="btn btn-sm btn-primary" id="add_test_weight"><i
                                    class="ace-icon fa  bigger-130">+添加</i>
                            </button>
                            <a class="btn btn-sm btn-danger" href="#"> <i class="ace-icon fa  bigger-130">×删除</i>
                            </a>

                            <a class="btn btn-yellow  pull-right" href="test_manage"><i
                                    class="ace-icon fa fa-arrow-left bigger-130">返回考评管理</i>
                            </a>
                        </div>

                        <!-- PAGE CONTENT BEGINS -->

                        <div class="row">
                            <div class="col-xs-12">

                                <!-- <div class="dataTables_borderWrap"> -->

                                <table id="sample-table-2" class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th class="center">
                                                <label class="position-relative">
                                                    <input type="checkbox" class="ace"/>
                                                    <span class="lbl"></span>
                                                </label>
                                            </th>
                                            <th>年度</th>
                                            <th>评分对象</th>
                                            <th>省体系办</th>
                                            <th>行业主管部门</th>
                                            <th>副首席专家、岗位专家和综合试验站站长</th>
                                            <th>岗位专家和综合试验站站长</th>
                                            <th>首席专家</th>
                                            <th>省体系办和行业主管部门</th>
                                            <th>首席专家和副首席专家</th>
                                        </tr>

                                    </thead>

                                    <tbody>

                                    </tbody>
                                </table>

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

                                            <form id="form_table">
                                                <tbody>
                                                <tr>
                                                    <td class="align-right">年度：</td>
                                                    <td>
                                                        <select class="form-control " name="year"
                                                                id="form-field-select-1">
                                                            <option value="2018">2018</option>
                                                            <option value="2017">2017</option>
                                                            <option value="2016">2016</option>
                                                        </select>
                                                    </td>
                                                </tr>


                                                <tr>
                                                    <td class="align-right">考评对象：</td>
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input name="testObject" type="radio" class="ace"
                                                                       value="首席专家"
                                                                       id="id-disable-check1" autocomplete="off"/>
                                                                <span class="lbl">首席专家</span>
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input name="testObject" type="radio" class="ace"
                                                                       value="副首席专家"
                                                                       id="id-disable-check2" autocomplete="off"/>
                                                                <span class="lbl">副首席专家</span>
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input name="testObject" type="radio" class="ace"
                                                                       value="岗位专家和综合试验站站长"
                                                                       id="id-disable-check3" autocomplete="off"/>
                                                                <span class="lbl">岗位专家和综合试验站站长</span>
                                                            </label>
                                                        </div>

                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td class="align-right ">省体系办：</td>
                                                    <td><input type="number" placeholder="" id="form-1" name="nongWei"
                                                               class="col-xs-10 col-sm-8"
                                                               autocomplete="off"/>％
                                                    </td>
                                                </tr>
                                                <tr>

                                                    <td class="align-right">行业主管部门：</td>
                                                    <td>
                                                        <input type="number" id="form-2" name="expert" value="0"
                                                               placeholder="" class="col-xs-10 col-sm-8"
                                                               autocomplete="off"/>％
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="align-right">副首席专家、岗位专家和综合试验站站长：</td>
                                                    <td><input type="number" id="form-3" placeholder=""
                                                               name="subChief_sta_lib"
                                                               class="col-xs-10 col-sm-8" autocomplete="off"/>％
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="align-right">岗位专家和综合试验站站长：</td>
                                                    <td><input type="number" placeholder="" id="form-4" name="sta_lib"
                                                               class="col-xs-10 col-sm-8" autocomplete="off"/>％
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="align-right">首席专家：</td>
                                                    <td><input type="number" placeholder="" id="form-5" name="chief"
                                                               class="col-xs-10 col-sm-8" autocomplete="off"/>％
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="align-right">省体系办和行业主管部门：</td>
                                                    <td><input type="number" placeholder="" id="form-6"
                                                               name="nongwei_expert"
                                                               class="col-xs-10 col-sm-8" autocomplete="off"/>％
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="align-right">首席专家和副首席专家：</td>
                                                    <td><input type="number" placeholder="" id="form-7"
                                                               name="chief_subChief"
                                                               class="col-xs-10 col-sm-8" autocomplete="off"/>％
                                                    </td>
                                                </tr>

                                                </tbody>
                                            </form>
                                        </table>
                                    </div>

                                    <div class="modal-footer no-margin-top">
                                        <button class="btn btn-sm btn-default pull-left" data-dismiss="modal">
                                            <i class="ace-icon fa fa-times"></i>关闭
                                        </button>
                                        <button class="btn btn-sm btn-success pull-left" data-dismiss="modal"
                                                id="btn_submit">
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
<script src="assets/js/jquery.session.js"></script>


<!-- ace scripts -->
<script src="assets/js/ace-elements.min.js"></script>
<script src="assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->
<script type="text/javascript">
    jQuery(function ($) {


        var inp1 = $('#form-1').get(0);
        var inp2 = $('#form-2').get(0);
        var inp3 = $('#form-3').get(0);
        var inp4 = $('#form-4').get(0);
        var inp5 = $('#form-5').get(0);
        var inp6 = $('#form-6').get(0);
        var inp7 = $('#form-7').get(0);
        $('#id-disable-check1').on('click', function () {
//            if (inp4.hasAttribute('disabled')) {
//						inp2.removeAttribute('disabled');
//						inp3.setAttribute('disabled' , 'disabled');
//						inp2.value="这里随便写！";
//						inp3.value="你变为只读";
//            }
//            else {
            inp4.setAttribute('disabled', 'disabled');
            inp5.setAttribute('disabled', 'disabled');
            inp6.setAttribute('disabled', 'disabled');
            inp7.setAttribute('disabled', 'disabled');
            inp1.removeAttribute('disabled');
            inp2.removeAttribute('disabled');
            inp3.removeAttribute('disabled');
            inp4.value = "不可输入";
            inp5.value = "不可输入";
            inp6.value = "不可输入";
            inp7.value = "不可输入";
            inp1.value = "";
            inp2.value = "";
            inp3.value = "";
//            }
        });

        $('#id-disable-check2').on('click', function () {
            inp1.setAttribute('disabled', 'disabled');
            inp2.setAttribute('disabled', 'disabled');
            inp3.setAttribute('disabled', 'disabled');
            inp7.setAttribute('disabled', 'disabled');
            inp4.removeAttribute('disabled');
            inp5.removeAttribute('disabled');
            inp6.removeAttribute('disabled');
            inp1.value = "不可输入";
            inp2.value = "不可输入";
            inp3.value = "不可输入";
            inp7.value = "不可输入";
            inp4.value = "";
            inp5.value = "";
            inp6.value = "";

        });

        $('#id-disable-check3').on('click', function () {
            inp1.setAttribute('disabled', 'disabled');
            inp2.setAttribute('disabled', 'disabled');
            inp3.setAttribute('disabled', 'disabled');
            inp5.setAttribute('disabled', 'disabled');
            inp6.setAttribute('disabled', 'disabled');
            inp4.removeAttribute('disabled');
            inp7.removeAttribute('disabled');
            inp1.value = "不可输入";
            inp2.value = "不可输入";
            inp3.value = "不可输入";
            inp5.value = "不可输入";
            inp6.value = "不可输入";
            inp4.value = "";
            inp7.value = "";

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
<script src="assets/js/atits-js/test_weight.js"></script>
</body>

</html>