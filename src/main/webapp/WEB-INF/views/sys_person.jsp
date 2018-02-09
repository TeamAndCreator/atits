<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title></title>

<meta name="description"
	content="This is page-header (.page-header &gt; h1)" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />

<!-- page specific plugin styles -->
<link rel="stylesheet" href="assets/css/prettify.css" />

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

<!-- News -->
<link rel="stylesheet" type="text/css"
	href="assets/bootstrapnews/css/normalize.css" />
<link rel="stylesheet" type="text/css"
	href="assets/bootstrapnews/css/default.css">
<link href="assets/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="assets/bootstrapnews/css/bootstrap-theme.min.css"
	rel="stylesheet" type="text/css" />
<link href="assets/bootstrapnews/css/site.css" rel="stylesheet"
	type="text/css" />


<link href="assets/css/atits-css/tixi.css" rel="stylesheet"
	type="text/css" />

<!-- inline styles related to this page -->

<!-- ace settings handler -->
<script src="assets/js/ace-extra.min.js"></script>

<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
<style type="text/css">
.page-header {
	margin: 6px 0 30px;
}
</style>

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
			<div class="page-content">

				<div class="page-content-area">
					<div class="row">
						<div class="col-xs-12">

							<h3 class="header smaller lighter red">
								<i class="ace-icon fa fa-graduation-cap"></i>首席专家
							</h3>
							<div class="row well">

								<c:forEach items="${system.chief}" var="name">
									<%--<div class="col-xs-1">--%>
									<div><h4 class="blue smaller lighter">${name}</h4>
									</div>
									<%--</div>--%>
								</c:forEach>

							</div>
						</div>
					</div>

					<c:if test="${!empty system.subChief}">
						<div class="row">
							<div class="col-xs-12">
								<h3 class="header smaller lighter orange">
									<i class="ace-icon fa fa-graduation-cap"></i> 副首席专家
								</h3>
								<div class="row well">
									<c:forEach items="${system.subChief}" var="name">
										<%--<div class="col-xs-1">--%>
										<div><h4 class="blue smaller lighter">${name}</h4>
										</div>
										<%--</div>--%>
									</c:forEach>
								</div>
							</div>
						</div>
					</c:if>
					<div class="row">
						<div class="col-xs-12">

							<h3 class="header smaller lighter green">
								<i class="ace-icon fa fa-users"></i> 岗位专家（共${num.labManagerNum}人）
							</h3>
							<div class="row well">
								<c:forEach items="${laboratories}" var="laboratory">
									<c:if test="${laboratory.state eq 1}">
										<c:forEach items="${laboratory.persons}" var="person">
											<%--<div class="col-xs-1">--%>
											<c:if test="${person.state eq 1}">
												<div>
													<h4 class="blue smaller lighter pull-left">
															${person.name}&nbsp;&nbsp;&nbsp;&nbsp;
													</h4>
												</div>
											</c:if>
											<%--</div>--%>
										</c:forEach>
									</c:if>
								</c:forEach>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-xs-12">

							<h3 class="header smaller lighter purple">
								<i class="ace-icon fa fa-flask"></i>综合试验站站长（共${num.staManagerNum}人）
							</h3>
							<div class="row well">
								<c:forEach items="${stations}" var="station">
									<c:if test="${station.state eq 1 and station.person.state eq 1}">
										<div>
											<h4 class="blue smaller lighter pull-left">
													${station.person.name}&nbsp;&nbsp;&nbsp;&nbsp;
											</h4>
										</div>
									</c:if>
									<%--</div>--%>
								</c:forEach>
							</div>
						</div>
					</div>

				</div>
				<!-- /.page-content-area -->
			</div>
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
				|| document.write("<script src='assets/js/jquery.min.js'>"
						+ "<"+"/script>");
	</script>

	<!-- <![endif]-->

	<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='assets/js/jquery1x.min.js'>"+"<"+"/script>");
</script>
<![endif]-->
	<script type="text/javascript">
		if ('ontouchstart' in document.documentElement)
			document
					.write("<script src='assets/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>
	<script src="assets/js/bootstrap.min.js"></script>

	<!-- page specific plugin scripts -->
	<script src="assets/js/prettify.js"></script>

	<!-- ace scripts -->
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>

	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		jQuery(function($) {

			window.prettyPrint && prettyPrint();
			$('#id-check-horizontal')
					.removeAttr('checked')
					.on(
							'click',
							function() {
								$('#dt-list-1')
										.toggleClass('dl-horizontal')
										.prev()
										.html(
												this.checked ? '&lt;dl class="dl-horizontal"&gt;'
														: '&lt;dl&gt;');
							});

		})
	</script>

	<!-- New Js -->
	<script src="assets/js/jquery.min.js" type="text/javascript"></script>
	<script src="assets/bootstrapnews/js/jquery.bootstrap.newsbox.min.js"
		type="text/javascript"></script>

	<script type="text/javascript">
		$(function() {
			$(".demo2").bootstrapNews({
				newsPerPage : 8,
				autoplay : true,
				pauseOnHover : true,
				navigation : false,
				direction : 'up',
				newsTickerInterval : 2500,
				onToDo : function() {
					//console.log(this);
				}
			});
		});
	</script>



	<script type="text/javascript">
		//滚动插件
		(function($) {
			$.fn.extend({
				Scroll : function(opt, callback) {
					//参数初始化
					if (!opt)
						var opt = {};
					var _this = this.eq(0).find("ul:first");
					var lineH = _this.find("li:first").height(), //获取行高
					line = opt.line ? parseInt(opt.line, 10) : parseInt(this
							.height()
							/ lineH, 10), //每次滚动的行数，默认为一屏，即父容器高度
					speed = opt.speed ? parseInt(opt.speed, 10) : 500, //卷动速度，数值越大，速度越慢（毫秒）
					timer = opt.timer ? parseInt(opt.timer, 10) : 3000; //滚动的时间间隔（毫秒）
					if (line == 0)
						line = 1;
					var upHeight = 0 - line * lineH;
					//滚动函数
					scrollUp = function() {
						_this.animate({
							marginTop : upHeight
						}, speed, function() {
							for (i = 1; i <= line; i++) {
								_this.find("li:first").appendTo(_this);
							}
							_this.css({
								marginTop : 0
							});
						});
					}
					//鼠标事件绑定
					_this.hover(function() {
						clearInterval(timerID);
					}, function() {
						timerID = setInterval("scrollUp()", timer);
					}).mouseout();
				}
			});
		})(jQuery);

		$(document).ready(function() {
			$("#s2").Scroll({
				line : 4,
				speed : 500,
				timer : 4000
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
