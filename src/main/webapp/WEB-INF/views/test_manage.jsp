<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>考评管理</title>

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

    <!-- jquery  CustomDropDownListStyling -->
    <link rel="stylesheet" type="text/css" href="assets/js/CustomDropDownListStyling/css/style.css">
    <script type="text/javascript" src="assets/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
        function onSearch(obj) {//js函数开始
            setTimeout(function () {//因为是即时查询，需要用setTimeout进行延迟，让值写入到input内，再读取
                var storeId = document.getElementById('sample-table-2');//获取table的id标识
                var rowsLength = storeId.rows.length;//表格总共有多少行
                var key = obj.value;//获取输入框的值

                var searchCol = 1;//要搜索的哪一列，这里是第二列，从0开始数起
                var n = 0;
                for (var i = 1; i < rowsLength; i++) {//按表的行数进行循环，本例第一行是标题，所以i=1，从第二行开始筛选（从0数起）
                    var searchText = storeId.rows[i].cells[searchCol].innerHTML;//取得table行，列的值

                    if (searchText.match(key)) {//用match函数进行筛选，如果input的值，即变量 key的值为空，返回的是ture，
                        storeId.rows[i].style.display = '';//显示行操作，
                        n = n + 1;
                    } else {
                        storeId.rows[i].style.display = 'none';//隐藏行操作
                    }
                }
                if (n === 0)
                    alert("没有该年份的考评数据！");
            }, 200);//200为延时时间
        }
    </script>

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
        <div class="breadcrumbs" id="breadcrumbs">
            <script type="text/javascript">
                try {
                    ace.settings.check('breadcrumbs', 'fixed')
                } catch (e) {
                }
            </script>

            <ul class="breadcrumb">
                <li><i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">首页</a>
                </li>
                <li class="active">考评管理</li>
            </ul>
            <!-- /.breadcrumb -->

        </div>
        <div class="page-content">
            <h1 class="header smaller lighter blue">考评管理</h1>
            <!-- /section:settings.box -->
            <div class="page-content-area ">

                <!-- /.page-header -->

                <div class="row">
                    <div class="col-sm-12 col-lg-10 ">

                        <br/>
                        <div class="action-buttons">
                            <span class="bigger-150"><b>年度筛选:&nbsp;&nbsp;</b></span>
                            <%--<select class=""  id ="key" style="width: 100px;">--%>
                            <%--<option value="">全部</option>--%>
                            <%--<option value="">2018</option>--%>
                            <%--<option value="">2017</option>--%>
                            <%--<option value="">2016</option>--%>
                            <%--<option value="">2015</option>--%>
                            <%--</select>--%>
                            <input name="key" type="text" id="key" onkeydown="onSearch(this)" value=""
                                   style="width: 100px;"/>
                            <%--<a class="btn btn-sm btn-success" href="#"> <i--%>
                            <%--class="ace-icon fa fa-search  bigger-130">确定</i>--%>
                            <%--</a>--%>
                            <a class="btn btn-yellow  pull-right" href="test_all"><i
                                    class="ace-icon fa fa-arrow-right bigger-130">评分汇总</i>
                            </a>
                            <a class="btn btn-yellow pull-right" href="test_weight"><i
                                    class="ace-icon fa fa-wrench bigger-130">权重设置</i>
                            </a>

                        </div>
                        <!-- PAGE CONTENT BEGINS -->
                        <div class="row">
                            <div class="col-xs-12">
                                <div>
                                    <table id="sample-table-2" class="table table-striped  table-hover">
                                        <thead>
                                        <tr>
                                            <th class="center"><label class="position-relative">
                                                <span class="lbl"></span>
                                            <th>年度</th>
                                            <th>所属体系</th>
                                            <th>被评分人</th>
                                            <th class="hidden">职位</th>
                                            <th>评分人</th>
                                            <th>评分时间</th>
                                            <th>评分详情</th>
                                        </tr>
                                        </thead>
                                        <tbody>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!-- PAGE CONTENT ENDS -->

                        <!--试卷1模态框-首席专家-->
                        <div id="modal-table1" class="modal fade" tabindex="-1">
                            <div class="modal-dialog ">
                                <div class="modal-content">
                                    <div class="modal-header no-padding">
                                        <div class="table-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                <span class="white">&times;</span>
                                            </button>
                                            首席专家考评打分表（<span class="form-control-static" id="year1"
                                                            style="clear:both"></span>
                                            年度）
                                        </div>
                                    </div>
                                    <form id="form_table1">
                                        <div class="modal-body ">
                                            <div>
                                                <div class="clearfix" style="clear:both">
                                                    <h3 class="header blue smaller-10">
                                                        <i class="ace-icon fa fa-graduation-cap"></i>
                                                        <span>评分对象：<p class="form-control-static"
                                                                      id="examedner1"></p></span>
                                                    </h3>
                                                </div>

                                                <blockquote><!--第一个-->

                                                    <p class="alert alert-success  ">
															<span>1、团队建设情况（满分：15分）
																<span class="pull-right">&nbsp;分</span>
																<input type="number" placeholder="请打分" name="A1"
                                                                       value="0"
                                                                       class="col-xs-2 col-sm-2  pull-right"/>
															</span>
                                                    </p>

                                                    <p class="alert alert-success  ">2、支撑产业发展情况（满分：50分）
                                                        <span class="pull-right">&nbsp;分</span>
                                                        <input type="number" placeholder="" name="A2" value="0"
                                                               class="col-xs-2 col-sm-2  pull-right"/>
                                                    </p>

                                                    <p class="alert alert-success ">3．应急事件处置及参与重大活动情况（满分：10分）
                                                        <span class="pull-right">&nbsp;分</span>
                                                        <input type="number" placeholder="" name="A3" value="0"
                                                               class="col-xs-2 col-sm-2  pull-right"/>
                                                    </p>
                                                    <p class="alert alert-success ">4．经费使用情况（满分：10分）
                                                        <span class="pull-right">&nbsp;分</span>
                                                        <input type="number" placeholder="" name="A4" value="0"
                                                               class="col-xs-2 col-sm-2  pull-right"/>

                                                    </p>
                                                    <p class="alert alert-success ">5．宣传推动情况（满分：10分）
                                                        <span class="pull-right">&nbsp;分</span>
                                                        <input type="number" placeholder="" name="A5" value="0"
                                                               class="col-xs-2 col-sm-2  pull-right"/>
                                                    </p>
                                                    <p class="alert alert-success ">6．对接协作情况（满分：15分）
                                                        <span class="pull-right">&nbsp;分</span>
                                                        <input type="number" placeholder="" name="A6" value="0"
                                                               class="col-xs-2 col-sm-2  pull-right"/>
                                                    </p>

                                                </blockquote>
                                            </div>
                                        </div>
                                    </form>

                                    <div class="modal-footer no-margin-top">
                                        <button class="btn btn-sm btn-default pull-left " data-dismiss="modal">
                                            <i class="ace-icon fa fa-times"></i>关闭
                                        </button>
                                        <%--<c:if test="${}">--%>
                                        <button class="btn btn-sm btn-success pull-left" id="btn_submit1">
                                            <i class="ace-icon fa fa-check"></i>提交
                                        </button>
                                        <%--</c:if>--%>
                                        <!--<button class="id-btn-dialog1 btn btn-sm btn-success pull-left"  id="id-btn-dialog1">
                                                <i class="ace-icon fa fa-check"></i>提交
                                            </button>
                                            <div id="dialog-message" class="hide">
                                                <p class="bigger-150">
                                                    提交之后将无法更改，确认提交吗？
                                                </p>
                                            </div>-->
                                    </div>
                                </div>
                                <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                        </div>
                        <!--试卷1模态框结束-->
                        <!--试卷2模态框-副首席专家-->
                        <div id="modal-table2" class="modal fade" tabindex="-1">
                            <div class="modal-dialog ">
                                <div class="modal-content">
                                    <div class="modal-header no-padding">
                                        <div class="table-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                <span class="white">&times;</span>
                                            </button>
                                            副首席专家考评打分表（<span class="form-control-static" id="year2"></span>年度）
                                        </div>
                                    </div>
                                    <div class="modal-body ">
                                        <div>
                                            <div class="clearfix">
                                                <h3 class="header blue smaller-10">
                                                    <i class="ace-icon fa fa-graduation-cap"></i>
                                                    <span>评分对象：<p class="form-control-static"
                                                                  id="examedner2"></p></span>
                                                </h3>
                                            </div>
                                            <blockquote><!--第一个-->
                                                <p class="alert alert-success  ">
															<span>1．协助首席带领团队建设情况 （满分：15分）
																<span class="pull-right">&nbsp;分</span>
																<input type="text" placeholder="请打分" name="A1"
                                                                       class="col-xs-2 col-sm-2  pull-right"/>
															</span>
                                                </p>

                                                <p class="alert alert-success  ">2、支撑产业发展情况（满分：50分）
                                                    <span class="pull-right">&nbsp;分</span>
                                                    <input type="text" placeholder="" name="A2"
                                                           class="col-xs-2 col-sm-2  pull-right"/>
                                                </p>

                                                <p class="alert alert-success ">3．应急事件处置及参与重大活动情况（满分：10分）
                                                    <span class="pull-right">&nbsp;分</span>
                                                    <input type="text" placeholder="" name="A3"
                                                           class="col-xs-2 col-sm-2  pull-right"/>
                                                </p>
                                                <p class="alert alert-success ">4．经费使用情况（满分：10分）
                                                    <span class="pull-right">&nbsp;分</span>
                                                    <input type="text" placeholder="" name="A4"
                                                           class="col-xs-2 col-sm-2  pull-right"/>

                                                </p>
                                                <p class="alert alert-success ">5．宣传推动情况（满分：10分）
                                                    <span class="pull-right">&nbsp;分</span>
                                                    <input type="text" placeholder="" name="A5"
                                                           class="col-xs-2 col-sm-2  pull-right"/>
                                                </p>
                                                <p class="alert alert-success ">6．对接协作情况（满分：15分）
                                                    <span class="pull-right">&nbsp;分</span>
                                                    <input type="text" placeholder="" name="A6"
                                                           class="col-xs-2 col-sm-2  pull-right"/>
                                                </p>
                                            </blockquote>
                                        </div>
                                    </div>

                                    <div class="modal-footer no-margin-top">
                                        <button class="btn btn-sm btn-default pull-left" data-dismiss="modal">
                                            <i class="ace-icon fa fa-times"></i>关闭
                                        </button>
                                        <button class="btn btn-sm btn-success pull-left submit" data-dismiss="modal"
                                                id="btn_submit2" onclick="javasript:window.alert('提交成功！')">
                                            <i class="ace-icon fa fa-check"></i>提交
                                        </button>
                                    </div>
                                </div>
                                <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                        </div>
                        <!--试卷2模态框结束-->
                        <!--试卷3模态框-功能研究室主任-->
                        <div id="modal-table3" class="modal fade" tabindex="-1">
                            <div class="modal-dialog ">
                                <div class="modal-content">
                                    <div class="modal-header no-padding">
                                        <div class="table-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                <span class="white">&times;</span>
                                            </button>
                                            功能研究室主任考评打分表（<span class="form-control-static" id="year3"></span>年度）
                                        </div>
                                    </div>
                                    <div class="modal-body ">
                                        <div>
                                            <div class="clearfix">
                                                <h3 class="header blue smaller-10">
                                                    <i class="ace-icon fa fa-graduation-cap"></i>
                                                    <span>评分对象：<p class="form-control-static"
                                                                  id="examedner3"></p></span>

                                                </h3>
                                            </div>
                                            <blockquote><!--第一个-->
                                                <p class="alert alert-success  ">
															<span>1．本室建设情况（满分：5分）
																<span class="pull-right">&nbsp;分</span>
																<input type="text" placeholder="请打分" name="A1"
                                                                       class="col-xs-2 col-sm-2  pull-right"/>
															</span>
                                                </p>

                                                <p class="alert alert-success  ">2、任务完成情况（满分：50分）
                                                    <span class="pull-right">&nbsp;分</span>
                                                    <input type="text" placeholder="" name="A2"
                                                           class="col-xs-2 col-sm-2  pull-right"/>
                                                </p>

                                                <p class="alert alert-success ">3．遵规守纪情况（满分：20分）
                                                    <span class="pull-right">&nbsp;分</span>
                                                    <input type="text" placeholder="" name="A3"
                                                           class="col-xs-2 col-sm-2  pull-right"/>
                                                </p>
                                                <p class="alert alert-success ">4．经费使用情况（满分：10分）
                                                    <span class="pull-right">&nbsp;分</span>
                                                    <input type="text" placeholder="" name="A4"
                                                           class="col-xs-2 col-sm-2  pull-right"/>

                                                </p>
                                                <p class="alert alert-success ">5．宣传推动情况（满分：10分）
                                                    <span class="pull-right">&nbsp;分</span>
                                                    <input type="text" placeholder="" name="A5"
                                                           class="col-xs-2 col-sm-2  pull-right"/>
                                                </p>
                                                <p class="alert alert-success ">6．其他（满分：5分）
                                                    <span class="pull-right">&nbsp;分</span>
                                                    <input type="text" placeholder="" name="A6"
                                                           class="col-xs-2 col-sm-2  pull-right"/>
                                                </p>
                                            </blockquote>
                                        </div>
                                    </div>

                                    <div class="modal-footer no-margin-top">
                                        <button class="btn btn-sm btn-default pull-left" data-dismiss="modal">
                                            <i class="ace-icon fa fa-times"></i>关闭
                                        </button>
                                        <button class="btn btn-sm btn-success pull-left submit" data-dismiss="modal"
                                                id="btn_submit3" onclick="javasript:window.alert('提交成功！')">
                                            <i class="ace-icon fa fa-check"></i>提交
                                        </button>
                                    </div>
                                </div>
                                <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                        </div>
                        <!--试卷3模态框结束-->
                        <!--试卷4模态框-岗位专家-->
                        <div id="modal-table4" class="modal fade" tabindex="-1">
                            <div class="modal-dialog ">
                                <div class="modal-content">
                                    <div class="modal-header no-padding">
                                        <div class="table-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                <span class="white">&times;</span>
                                            </button>
                                            岗位专家考评打分表（<span class="form-control-static" id="year4"></span>年度）
                                        </div>
                                    </div>
                                    <div class="modal-body ">
                                        <div>
                                            <div class="clearfix">
                                                <h3 class="header blue smaller-10">
                                                    <i class="ace-icon fa fa-graduation-cap"></i>
                                                    <span>评分对象：<p class="form-control-static"
                                                                  id="examedner4"></p></span>
                                                </h3>
                                            </div>
                                            <blockquote><!--第一个-->
                                                <p class="alert alert-success  ">
															<span>1、任务完成情况（满分：50分）
																<span class="pull-right">&nbsp;分</span>
																<input type="text" placeholder="请打分" name="A1"
                                                                       class="col-xs-2 col-sm-2  pull-right"/>
															</span>
                                                </p>

                                                <p class="alert alert-success  ">2、遵规守纪情况（满分：20分）
                                                    <span class="pull-right">&nbsp;分</span>
                                                    <input type="text" placeholder="" name="A2"
                                                           class="col-xs-2 col-sm-2  pull-right"/>
                                                </p>

                                                <p class="alert alert-success ">3．经费使用情况（满分：10分）
                                                    <span class="pull-right">&nbsp;分</span>
                                                    <input type="text" placeholder="" name="A3"
                                                           class="col-xs-2 col-sm-2  pull-right"/>
                                                </p>
                                                <p class="alert alert-success ">4．宣传推动情况（满分：10分）
                                                    <span class="pull-right">&nbsp;分</span>
                                                    <input type="text" placeholder="" name="A4"
                                                           class="col-xs-2 col-sm-2  pull-right"/>

                                                </p>
                                                <p class="alert alert-success ">5．其他（满分：10分）
                                                    <span class="pull-right">&nbsp;分</span>
                                                    <input type="text" placeholder="" name="A5"
                                                           class="col-xs-2 col-sm-2  pull-right"/>
                                                </p>
                                            </blockquote>
                                        </div>
                                    </div>

                                    <div class="modal-footer no-margin-top">
                                        <button class="btn btn-sm btn-default pull-left" data-dismiss="modal">
                                            <i class="ace-icon fa fa-times"></i>关闭
                                        </button>
                                        <button class="btn btn-sm btn-success pull-left submit" data-dismiss="modal"
                                                id="btn_submit4" onclick="javasript:window.alert('提交成功！')">
                                            <i class="ace-icon fa fa-check"></i>提交
                                        </button>
                                    </div>
                                </div>
                                <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                        </div>
                        <!--试卷4模态框结束-->
                        <!--试卷5模态框-综合试验站站长-->
                        <div id="modal-table5" class="modal fade" tabindex="-1">
                            <div class="modal-dialog ">
                                <div class="modal-content">
                                    <div class="modal-header no-padding">
                                        <div class="table-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                <span class="white">&times;</span>
                                            </button>
                                            综合试验站站长考评打分表（<span class="form-control-static" id="year5"></span>年度）
                                        </div>
                                    </div>
                                    <div class="modal-body ">
                                        <div>
                                            <div class="clearfix">
                                                <h3 class="header blue smaller-10">
                                                    <i class="ace-icon fa fa-graduation-cap"></i>
                                                    <span>评分对象：<p class="form-control-static"
                                                                  id="examedner5"></p></span>
                                                </h3>
                                            </div>
                                            <blockquote><!--第一个-->
                                                <p class="alert alert-success  ">
															<span>1、任务完成情况（满分：50分）
																<span class="pull-right">&nbsp;分</span>
																<input type="text" placeholder="请打分" name="A1"
                                                                       class="col-xs-2 col-sm-2  pull-right"/>
															</span>
                                                </p>

                                                <p class="alert alert-success  ">2、遵规守纪情况（满分：20分）
                                                    <span class="pull-right">&nbsp;分</span>
                                                    <input type="text" placeholder="" name="A2"
                                                           class="col-xs-2 col-sm-2  pull-right"/>
                                                </p>

                                                <p class="alert alert-success ">3．经费使用情况（满分：10分）
                                                    <span class="pull-right">&nbsp;分</span>
                                                    <input type="text" placeholder="" name="A3"
                                                           class="col-xs-2 col-sm-2  pull-right"/>
                                                </p>
                                                <p class="alert alert-success ">4．宣传推动情况（满分：10分）
                                                    <span class="pull-right">&nbsp;分</span>
                                                    <input type="text" placeholder="" name="A4"
                                                           class="col-xs-2 col-sm-2  pull-right"/>

                                                </p>
                                                <p class="alert alert-success ">5．争取支持情况（满分：5分）
                                                    <span class="pull-right">&nbsp;分</span>
                                                    <input type="text" placeholder="" name="A5"
                                                           class="col-xs-2 col-sm-2  pull-right"/>
                                                </p>
                                                <p class="alert alert-success ">6．其他（满分：5分）
                                                    <span class="pull-right">&nbsp;分</span>
                                                    <input type="text" placeholder="" name="A6"
                                                           class="col-xs-2 col-sm-2  pull-right"/>
                                                </p>
                                            </blockquote>
                                        </div>
                                    </div>

                                    <div class="modal-footer no-margin-top">
                                        <button class="btn btn-sm btn-default pull-left" data-dismiss="modal">
                                            <i class="ace-icon fa fa-times"></i>关闭
                                        </button>
                                        <button class="btn btn-sm btn-success pull-left" data-dismiss="modal"
                                                id="btn_submit5" onclick="javasript:window.alert('提交成功！')">
                                            <i class="ace-icon fa fa-check"></i>提交
                                        </button>
                                    </div>
                                </div>
                                <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                        </div>
                        <!--试卷5模态框结束-->


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
    document.write("<script src='assets/js/jquery-3.3.1.min.js'>" +
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

<!-- ace scripts -->
<script src="assets/js/ace-elements.min.js"></script>
<script src="assets/js/ace.min.js"></script>


<!-- inline scripts related to this page -->


<script type="text/javascript">
    jQuery(function test($) {
        var oTable1 = $('#sample-table-2')
        //.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
            .dataTable({

                bAutoWidth: false,
                fnDraw: false,
                aoColumns: [
                    {
                        mData: "id", sClass: "center", sortable: false,
                        render: function (mData) {
                            return '<td class="center"><label class="position-relative"><input type="checkbox" class="ace center" value=' + mData + ' name="subcheck"/> <span class="lbl"></span></label></td>';}
                    },
                    {mData: "year"},
                    {mData: "system.sysName"},
                    {mData: "examedner.name"},
                    {mData: 'examedner.job', sClass:"hidden"},
                    {mData: {
                            perExaminer:'perExaminer',
                            eptExaminer:'eptExaminer'
                        },
                    render:function (mData) {
                        if (mData.perExaminer != null)
                            return mData.perExaminer.name;
                        else
                        if (mData.eptExaminer != null)
                            return mData.eptExaminer.name;
                        else
                            return null;
                    }
                      },
                    {mData: "date"},
                    {mData:{
                            mstate: 'mstate',
                            id: 'id'
                        },
                        render: function (mData) {
                        stateBt_0 = '<button class="btn btn-success btn-sm test" test-id=' + mData.id + '>考&nbsp;&nbsp;&nbsp;&nbsp;评</button>';
                        stateBt_1 = '<button class="btn btn-success btn-sm test" test-id=' + mData.id + '>已考评</button>';
                        <%--return  '<td><div class="hidden-sm hidden-xs action-buttons"><a class="blue" href="person_detail?id=${person.id}"> <i class="ace-icon fa fa-search-plus bigger-130"></i></a> <a class="green" href="person_setting?id=${person.id}"> <i class="ace-icon fa fa-pencil bigger-130"></i></a><c:if test="${person.role.id!=1}"><a class="red" href="person_delete/${person.id}"><i class="ace-icon fa fa-trash-o bigger-130"></i></a></c:if></div></td>';--%>
                        if (mData.mstate === 1) {
                            return stateBt_0;
                        }
                        else{
                            return stateBt_1;
                        }
                    }

                    }
                ],


                aaSorting: [],//指定按多列数据排序的依据
                bServerSide: true,//指定从服务器端获取数据
                sAjaxSource: "test_manage_find_all_ajax",//获取数据的url
                fnServerData: retrieveData,//获取数据的处理函数
                searching: true, // 搜索
                bPaginate: true, //显示（使用）分页器
                pagingType: "full_numbers", //分页样式的类型
                oLanguage: { //语言设置
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
                    console.log(aData);

                }
            });

        function retrieveData(sSource, aoData, fnCallback) {
            //console.log(JSON.stringify(aoData))


            //将客户名称加入参数数组
            //aoData.push( { "name": "customerName", "value": $("#customerName").val() } );

            $.ajax({
                "type": "GET",
                "contentType": "application/json",
                "dataType": "json",
                "url": sSource,
                "data": {
                    params: JSON.stringify(aoData)
                }, //以json格式传递
                "success": function (resp) {
                    console.log(resp);
                    fnCallback(resp); //服务器端返回的对象的returnObject部分是要求的格式
                }
            });
        }

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
<script src="assets/js/atits-js/test_manage.js"></script>

</body>

</html>