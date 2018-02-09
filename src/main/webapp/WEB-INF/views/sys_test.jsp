<!--<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>-->
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>考评管理</title>

		<meta name="description" content="Static &amp; Dynamic Tables" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />

		<!-- page specific plugin styles -->
		<link rel="stylesheet" href="assets/css/jquery-ui.min.css" />
		<!-- text fonts -->
		<link rel="stylesheet" href="assets/css/ace-fonts.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="assets/css/ace.min.css" id="main-ace-style" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" />
		<![endif]-->
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->
		<script src="assets/js/ace-extra.min.js"></script>
	</head>

	<body class="no-skin">
		<!-- #section:basics/navbar.layout -->

		<!-- /section:basics/navbar.layout -->
		<div class="main-container" id="main-container">
			<!--<script type="text/javascript">
				try {
					ace.settings.check('main-container', 'fixed')
				} catch(e) {}
			</script>-->
			<div class="main-content">
				<div class="page-content">
					<!-- /section:settings.box -->
					<div class="page-content-area">
						<h1 class="header smaller lighter blue">考评管理</h1>
						<div class="col-sm-10">

							<div class="col-sm-12">
								<h3 class="header red lighter smaller">
											<i class="ace-icon fa fa-list smaller-90"></i>
											考评打分表
										</h3>

								<div id="accordion" class="accordion-style2 bigger-130">
									<div class="group">
											<h3 class="accordion-header">首席专家考评打分表（ 2017 年度）
												<span id="span1" class="red pull-right"></span>
											</h3>
										<!--问卷调查开始-->
										<div>
											<div class="clearfix">
												<h3 class="header smaller lighter blue ">
													<i class="ace-icon fa fa-graduation-cap"></i>
													<span  class="bigger-110">首席专家：</span>
													<span class="bigger-110 ">李绍稳</span>
												</h3>
											</div>
											<blockquote><!--第一个-->
												<p class="alert alert-success bigger-110 clearfix">
													<span>1、团队建设情况（满分：15分）
														<span class="pull-right">&nbsp;分</span>
														<input type="text" placeholder="请打分" class="col-xs-2 col-sm-2 col-md-1 pull-right" />
													</span>
												</p>
												
												<p class="alert alert-success bigger-110 clearfix">2、支撑产业发展情况（满分：50分）
													<span class="pull-right">&nbsp;分</span>
													<input type="text" placeholder="" class="col-xs-2 col-sm-2 col-md-1 pull-right" />
												</p>
												
												<p class="alert alert-success bigger-110">3．应急事件处置及参与重大活动情况（满分：10分）
													<span class="pull-right">&nbsp;分</span>
													<input type="text" placeholder="" class="col-xs-2 col-sm-2 col-md-1 pull-right" />
												</p>
												<p class="alert alert-success bigger-110">4．经费使用情况（满分：10分）
													<span class="pull-right">&nbsp;分</span>
													<input type="text" placeholder="" class="col-xs-2 col-sm-2 col-md-1 pull-right" />
													
												</p>
												<p class="alert alert-success bigger-110">5．宣传推动情况（满分：10分）
													<span class="pull-right">&nbsp;分</span>
													<input type="text" placeholder="" class="col-xs-2 col-sm-2 col-md-1 pull-right" />
												</p>
												<p class="alert alert-success bigger-110">6．对接协作情况（满分：15分）
													<span class="pull-right">&nbsp;分</span>
													<input type="text" placeholder="" class="col-xs-2 col-sm-2 col-md-1 pull-right" />
												</p>
												<a href="#" id="id-btn-dialog1" class="id-btn-dialog1 btn btn-purple btn-sm pull-right bigger-110" > 提交 </a>
													<div id="dialog-message" class="hide">
														<p class="bigger-150">
															确认提交吗？
														</p>
													</div><!-- #dialog-message -->
											</blockquote>
										</div>
									</div>

									<div class="group">
										<h3 class="accordion-header">副首席专家考评打分表（ 2017 年度）</h3>

										<div>
											<div class="clearfix">
												<h3 class="header smaller lighter blue ">
													<i class="ace-icon fa fa-graduation-cap"></i>
													<span  class="bigger-110">首席专家：</span>
													<span class="bigger-110 ">李绍稳</span>
												</h3>
											</div>
											<blockquote><!--第二个-->
												<p class="alert alert-success bigger-110 clearfix">
													<span>1．协助首席带领团队建设情况 （满分：15分）
														<span class="pull-right">&nbsp;分</span>
														<input type="text" placeholder="请打分" class="col-xs-2 col-sm-2 col-md-1 pull-right" />
													</span>
												</p>
												
												<p class="alert alert-success bigger-110 clearfix">2、支撑产业发展情况（满分：50分）
													<span class="pull-right">&nbsp;分</span>
													<input type="text" placeholder="" class="col-xs-2 col-sm-2 col-md-1 pull-right" />
												</p>
												
												<p class="alert alert-success bigger-110">3．应急事件处置及参与重大活动情况（满分：10分）
													<span class="pull-right">&nbsp;分</span>
													<input type="text" placeholder="" class="col-xs-2 col-sm-2 col-md-1 pull-right" />
												</p>
												<p class="alert alert-success bigger-110">4．经费使用情况（满分：10分）
													<span class="pull-right">&nbsp;分</span>
													<input type="text" placeholder="" class="col-xs-2 col-sm-2 col-md-1 pull-right" />
													
												</p>
												<p class="alert alert-success bigger-110">5．宣传推动情况（满分：10分）
													<span class="pull-right">&nbsp;分</span>
													<input type="text" placeholder="" class="col-xs-2 col-sm-2 col-md-1 pull-right" />
												</p>
												<p class="alert alert-success bigger-110">6．对接协作情况（满分：15分）
													<span class="pull-right">&nbsp;分</span>
													<input type="text" placeholder="" class="col-xs-2 col-sm-2 col-md-1 pull-right" />
												</p>
												<a href="#" id="id-btn-dialog1" class="id-btn-dialog1 btn btn-purple btn-sm pull-right bigger-110" > 提交 </a>
													<div id="dialog-message" class="hide">
														<p class="bigger-150">
															确认提交吗？
														</p>
													</div><!-- #dialog-message -->
											</blockquote>
										</div>
									</div>

									<div class="group">
										<h3 class="accordion-header">功能研究室主任考评打分表（ 2017 年度）</h3>

										<div>
											<div class="clearfix">
												<h3 class="header smaller lighter blue ">
													<i class="ace-icon fa fa-graduation-cap"></i>
													<span  class="bigger-110">首席专家：</span>
													<span class="bigger-110 ">李绍稳</span> 
												</h3>
											</div>
											<blockquote><!--第三个-->
												<p class="alert alert-success bigger-110 clearfix">
													<span>1．本室建设情况（满分：5分）
														<span class="pull-right">&nbsp;分</span>
														<input type="text" placeholder="请打分" class="col-xs-2 col-sm-2 col-md-1 pull-right" />
													</span>
												</p>
												
												<p class="alert alert-success bigger-110 clearfix">2、任务完成情况（满分：50分）
													<span class="pull-right">&nbsp;分</span>
													<input type="text" placeholder="" class="col-xs-2 col-sm-2 col-md-1 pull-right" />
												</p>
												
												<p class="alert alert-success bigger-110">3．遵规守纪情况（满分：20分）
													<span class="pull-right">&nbsp;分</span>
													<input type="text" placeholder="" class="col-xs-2 col-sm-2 col-md-1 pull-right" />
												</p>
												<p class="alert alert-success bigger-110">4．经费使用情况（满分：10分）
													<span class="pull-right">&nbsp;分</span>
													<input type="text" placeholder="" class="col-xs-2 col-sm-2 col-md-1 pull-right" />
													
												</p>
												<p class="alert alert-success bigger-110">5．宣传推动情况（满分：10分）
													<span class="pull-right">&nbsp;分</span>
													<input type="text" placeholder="" class="col-xs-2 col-sm-2 col-md-1 pull-right" />
												</p>
												<p class="alert alert-success bigger-110">6．其他（满分：5分）
													<span class="pull-right">&nbsp;分</span>
													<input type="text" placeholder="" class="col-xs-2 col-sm-2 col-md-1 pull-right" />
												</p>
												<a href="#" id="id-btn-dialog1" class="id-btn-dialog1 btn btn-purple btn-sm pull-right bigger-110" > 提交 </a>
													<div id="dialog-message" class="hide">
														<p class="bigger-150">
															确认提交吗？
														</p>
													</div><!-- #dialog-message -->
											</blockquote>
										</div>
									</div>
									<div class="group">
										<h3 class="accordion-header">岗位专家考评打分表（ 2017 年度）</h3>
										<!--问卷调查开始-->
										<div>
											<div class="clearfix">
												<h3 class="header smaller lighter blue ">
													<i class="ace-icon fa fa-graduation-cap"></i>
													<span  class="bigger-110">首席专家：</span>
													<span class="bigger-110 ">李绍稳</span> 
												</h3>
											</div>
											<blockquote><!--第四个-->
												<p class="alert alert-success bigger-110 clearfix">
													<span>1、任务完成情况（满分：50分）
														<span class="pull-right">&nbsp;分</span>
														<input type="text" placeholder="请打分" class="col-xs-2 col-sm-2 col-md-1 pull-right" />
													</span>
												</p>
												
												<p class="alert alert-success bigger-110 clearfix">2、遵规守纪情况（满分：20分）
													<span class="pull-right">&nbsp;分</span>
													<input type="text" placeholder="" class="col-xs-2 col-sm-2 col-md-1 pull-right" />
												</p>
												
												<p class="alert alert-success bigger-110">3．经费使用情况（满分：10分）
													<span class="pull-right">&nbsp;分</span>
													<input type="text" placeholder="" class="col-xs-2 col-sm-2 col-md-1 pull-right" />
												</p>
												<p class="alert alert-success bigger-110">4．宣传推动情况（满分：10分）
													<span class="pull-right">&nbsp;分</span>
													<input type="text" placeholder="" class="col-xs-2 col-sm-2 col-md-1 pull-right" />
												</p>
												<p class="alert alert-success bigger-110">5．其他（满分：10分）
													<span class="pull-right">&nbsp;分</span>
													<input type="text" placeholder="" class="col-xs-2 col-sm-2 col-md-1 pull-right" />
												</p>
												<a href="#" id="id-btn-dialog1" class="id-btn-dialog1 btn btn-purple btn-sm pull-right bigger-110" > 提交 </a>
													<div id="dialog-message" class="hide">
														<p class="bigger-150">
															确认提交吗？
														</p>
													</div><!-- #dialog-message -->
											</blockquote>
										</div>
									</div>
									
									<div class="group">
										<h3 class="accordion-header">综合试验站站长考评打分表（ 2017 年度）</h3>
										<!--问卷调查开始-->
										<div>
											<div class="clearfix">
												<h3 class="header smaller lighter blue ">
													<i class="ace-icon fa fa-graduation-cap"></i>
													<span  class="bigger-110">首席专家：</span>
													<span class="bigger-110 ">李绍稳</span> 
												</h3>
											</div>
											<blockquote><!--第五个-->
												<p class="alert alert-success bigger-110 clearfix">
													<span>1、任务完成情况（满分：50分）
														<span class="pull-right">&nbsp;分</span>
														<input type="text" placeholder="请打分" class="col-xs-2 col-sm-2 col-md-1 pull-right" />
													</span>
												</p>
												
												<p class="alert alert-success bigger-110 clearfix">2、遵规守纪情况（满分：20分）
													<span class="pull-right">&nbsp;分</span>
													<input type="text" placeholder="" class="col-xs-2 col-sm-2 col-md-1 pull-right" />
												</p>
												
												<p class="alert alert-success bigger-110">3．经费使用情况（满分：10分）
													<span class="pull-right">&nbsp;分</span>
													<input type="text" placeholder="" class="col-xs-2 col-sm-2 col-md-1 pull-right" />
												</p>
												<p class="alert alert-success bigger-110">4．宣传推动情况（满分：10分）
													<span class="pull-right">&nbsp;分</span>
													<input type="text" placeholder="" class="col-xs-2 col-sm-2 col-md-1 pull-right" />
												</p>
												<p class="alert alert-success bigger-110">5．争取支持情况（满分：5分）
													<span class="pull-right">&nbsp;分</span>
													<input type="text" placeholder="" class="col-xs-2 col-sm-2 col-md-1 pull-right" />
												</p>
												<p class="alert alert-success bigger-110">6．其他（满分：5分）
													<span class="pull-right">&nbsp;分</span>
													<input type="text" placeholder="" class="col-xs-2 col-sm-2 col-md-1 pull-right" />
												</p>
												<a href="#" id="id-btn-dialog1" class="id-btn-dialog1 btn btn-purple btn-sm pull-right bigger-110" > 提交 </a>
													<div id="dialog-message" class="hide">
														<p class="bigger-150">
															确认提交吗？
														</p>
													</div><!-- #dialog-message -->
											</blockquote>
										</div>
									</div>
									
								</div>
								<!-- #accordion -->
							</div>

						</div>
						<!-- ./col -->
						<br />
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

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse"> <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
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
 window.jQuery || document.write("<script src='assets/js/jquery1x.min.js'>"+"<"+"/script>");
</script>
<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
		</script>
		<!-- page specific plugin scripts -->
		<script src="assets/js/jquery-ui.min.js"></script>
		<script src="assets/js/jquery.ui.touch-punch.min.js"></script>

		<script type="text/javascript">
			if('ontouchstart' in document.documentElement)
				document
				.write("<script src='assets/js/jquery.mobile.custom.min.js'>" +
					"<" + "/script>");
		</script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>

		<script type="text/javascript">
			jQuery(function($) {
				$("#accordion").accordion({
					collapsible: true,
					heightStyle: "content",
					animate: 250,
					header: ".accordion-header"
				}).sortable({
					axis: "y",
					handle: ".accordion-header",
					stop: function(event, ui) {
						// IE doesn't register the blur when sorting
						// so trigger focusout handlers to remove .ui-state-focus
						ui.item.children(".accordion-header").triggerHandler("focusout");
					}
				});

				$("#tabs").tabs();
				$( ".id-btn-dialog1" ).on('click', function(e) {
					e.preventDefault();
			
					var dialog = $( "#dialog-message" ).removeClass('hide').dialog({
						modal: true,
						title: "提示",
						title_html: true,
						buttons: [ 
							{
								text: "取消",
								"class" : "btn btn-xs bigger-130",
								click: function() {
									$( this ).dialog( "close" ); 
								} 
							},
							{
								text: "确认",
								"class" : "btn btn-primary btn-xs bigger-130",
								click: function() {
									$( this ).dialog( "close" ); 
									 document.getElementById("span1").innerHTML = "*已评价";
								} 
							}
						]
					});
			
				});
			});
		</script>
		<!-- the following scripts are used in demo only for onpage help and you don't need them -->
		<link rel="stylesheet" href="assets/css/ace.onpage-help.css" />
		<link rel="stylesheet" href="docs/assets/js/themes/sunburst.css" />

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
		
	</body>

</html>