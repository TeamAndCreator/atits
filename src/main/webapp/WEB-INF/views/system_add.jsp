<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>体系添加</title>
		<meta name="description" content="" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />

		<!-- page specific plugin styles -->
		<link rel="stylesheet" href="assets/css/jquery-ui.custom.min.css" />

		<!-- text fonts -->
		<link rel="stylesheet" href="assets/css/ace-fonts.css" />
		<!-- ace styles -->
		<link rel="stylesheet" href="assets/css/ace.min.css" id="main-ace-style" />
		<!--[if lte IE 9]>
	<link rel="stylesheet" href="assets/css/ace-part2.min.css"/>
	<![endif]-->
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
		<!--bootstrap-fileinput  -->
		<link rel="stylesheet" href="assets/bootstrap-fileinput/css/fileinput.css" />
		<!--[if lte IE 9]>
	<link rel="stylesheet" href="assets/css/ace-ie.min.css"/><![endif]-->

		<!-- inline styles related to this page -->
		<!-- ace settings handler -->
		<script src="assets/js/ace-extra.min.js"></script>
		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->
		<!--[if lte IE 8]>
	<script src="assets/js/html5shiv.min.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
		<script type="text/javascript">
			function aler() {
				alert("等待管理员审核！")
			};
		</script>
	</head>

	<body class="no-skin">
		<!-- #section:basics/navbar.layout -->

		<!-- /section:basics/navbar.layout -->
		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try {
					ace.settings.check('main-container', 'fixed')
				} catch(e) {}
			</script>

			<!-- #section:basics/sidebar -->

			<!-- /section:basics/sidebar -->
			<div class="main-content">
				<!-- #section:basics/content.breadcrumbs -->
				<div class="breadcrumbs" id="breadcrumbs">
					<script type="text/javascript">
						try {
							ace.settings.check('breadcrumbs', 'fixed')
						} catch(e) {}
					</script>

					<ul class="breadcrumb">
						<li><i class="ace-icon fa fa-home home-icon"></i>
							<a href="index">首页</a>
						</li>

						<li>
							<a href="system">体系管理</a>
						</li>
						<li class="active">修改&amp;添加</li>
					</ul>
					<!-- /.breadcrumb -->
				</div>

				<!-- /section:basics/content.breadcrumbs -->
				<div class="page-content">
					<div class="page-content-area">

						<div class="page-header">
							<h1>修改 &amp;添加</h1>
						</div>
						<!-- /.page-header -->
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<form:form action="${pageContext.request.contextPath}/system_save" method="POST" class="form-horizontal" id="sample-form" modelAttribute="system">
									<c:if test="${system.id != 0}">
										<form:hidden path="id" id="id" />
										<input type="hidden" name="_method" value="PUT">
									</c:if>

									<!-- #section:elements.form.input-state -->
									<div class="form-group has-warning">
										<label for="inputWarning" class="col-xs-12 col-sm-3 control-label no-padding-right bigger-130">体系名称</label>

										<div class="col-xs-12 col-sm-5">
											<span class="block input-icon input-icon-right"> <form:input
												type="text" id="inputWarning" class="width-100" path="sysName"/>
											<i class="ace-icon fa fa-leaf"></i>
										</span>
										</div>
									</div>
									<div class="form-group has-info">
										<label for="inputWarning" class="col-xs-12 col-sm-3 control-label no-padding-right bigger-130">首席专家</label>

										<div class="col-xs-12 col-sm-5">
											<span class="block input-icon input-icon-right"> <form:input
												type="text" id="inputWarning" class="width-100" path="chief"/>
											<i class="ace-icon fa fa-leaf"></i>
										</span>
										</div>
									</div>
									<div class="form-group has-info">
										<label for="inputWarning" class="col-xs-12 col-sm-3 control-label no-padding-right bigger-130">副首席专家</label>

										<div class="col-xs-12 col-sm-5">
											<span class="block input-icon input-icon-right"> <form:input
													type="text" id="inputWarning" class="width-100" path="subChief"/>
											<i class="ace-icon fa fa-leaf"></i>
										</span>
										</div>
									</div>
									<div class="form-group has-info">
										<label for="inputWarning" class="col-xs-12 col-sm-3 control-label no-padding-right bigger-130">产业概况</label>

										<div class="col-xs-12 col-sm-5">
											<span class="block input-icon input-icon-right"> <form:textarea
													type="text" id="inputWarning" cols="10" rows="10" class="width-100" path="overview"/>

										</span>
										</div>
									</div>


									<%--<div class="form-group has-info">--%>
										<%--<label  class="col-xs-12 col-sm-3 control-label no-padding-right bigger-130">体系简介</label>--%>
										<%--<div class="col-lg-7 col-sm-8">--%>

											<%--<div class="wysiwyg-editor" id="editor" ></div>--%>
											<%--<form:input type='hidden' path='content' id='content' value=''/>--%>
										<%--</div>--%>
									<%--</div>--%>

									<div class="col-md-11 col-lg-10" style=" float: none;display: block;margin-left: auto;margin-right: auto;  ">

										<h4 class="header green clearfix">体系简介</h4>
										<%--<div class="wysiwyg-editor" id="editor"></div>--%>
										<%--<form:input type='hidden' path='content' id='content' value='' />--%>


										<%--<div id="editor" class="col-lg-12 " style="float: none;display: block;margin-left: auto;margin-right: auto;">--%>
										<%--</div>--%>
										<iframe ID="eWebEditor1" src="assets/ewebeditor/ewebeditor.htm?id=content&style=coolblue" class="col-lg-12"
												style="float: none;display: block;margin-left: auto;margin-right: auto;"
												frameborder="0" scrolling="no" width="550" height="700"></iframe>
										<form:input type='hidden' path='content' id='content' value='' />

										<%--<p>欢迎使用 <b>wangEditor</b> 富文本编辑器</p>--%>
									</div>

									<div class="clearfix form-actions ">
										<div class="col-md-offset-3 col-md-9 ">
											<button class="btn btn-info add">
												<i class="ace-icon fa fa-check bigger-110 "></i>
												提交
											</button> &nbsp; &nbsp; &nbsp;
											<button class="btn " type="reset ">
												<i class="ace-icon fa fa-undo bigger-110 "></i>
												重置
											</button>
										</div>
									</div>
						
								</form:form>

								<script type="text/javascript">
									var $path_assets = "assets"; //this will be used in loading jQuery UI if needed!
								</script>

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
						<span class="bigger-120"> <span class="blue bolder">安徽农业大学数字农业研究所</span> &copy; 2017-2018（测试版）
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
	window.jQuery || document.write("<script src='assets/js/jquery1x.min.js'>" + "<" + "/script>");
</script>
<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement)
				document
				.write("<script src='assets/js/jquery.mobile.custom.min.js'>" +
					"<" + "/script>");
		</script>
		<script src="assets/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->
		<script src="assets/js/jquery-ui.custom.min.js"></script>
		<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="assets/js/markdown/markdown.min.js"></script>
		<script src="assets/js/markdown/bootstrap-markdown.min.js"></script>
		<script src="assets/js/jquery.hotkeys.min.js"></script>
		<!--<script src="assets/js/bootstrap-wysiwyg.min.js"></script>-->
		<script src="assets/js/bootbox.min.js"></script>

		<!-- ace scripts -->
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->


		<!--<script type="text/javascript" src="assets/js/wangEditor.min.js"></script>-->
		<script charset="utf-8" src="assets/js/kindedit/kindeditor-all.js"></script>
		<script charset="utf-8" src="assets/js/kindedit/lang/zh-CN.js"></script>
		<script charset="utf-8" src="assets/js/kindedit/plugins/autoheight/autoheight.js"></script>

		<script type="text/javascript">
			$(function() {
				$("#datepicker").datepicker();
			});
		</script>

		<!-- the following scripts are used in demo only for onpage help and you don't need them -->
		<link rel="stylesheet" href="assets/css/ace.onpage-help.css" />
		<link rel="stylesheet" href="docs/assets/js/themes/sunburst.css" />
		<link rel="stylesheet" href="assets/css/jquery-ui.min.css" />

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
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery-ui.min.js"></script>

		<!-- bootstrap-fileinput -->

		<script src="assets/bootstrap-fileinput/js/fileinput.min.js"></script>
		<script src="assets/bootstrap-fileinput/js/locales/zh.js"></script>

		<script src="assets/js/atits-js/system_add.js"></script>
	</body>

</html>