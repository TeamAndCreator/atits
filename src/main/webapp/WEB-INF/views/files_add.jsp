<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title>Wysiwyg &amp; Markdown Editor - Ace Admin</title>
<meta name="description" content="" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

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
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" />
		<![endif]-->
<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
<!--bootstrap-fileinput  -->
<link rel="stylesheet"
	href="assets/bootstrap-fileinput/css/fileinput.css" />
<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" /><![endif]-->
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
					<li><i class="ace-icon fa fa-home home-icon"></i> <a
						href="index">首页</a></li>

					<li><a href="files_add">文件共享</a></li>
					<li class="active">添加</li>
				</ul>
				<!-- /.breadcrumb -->
			</div>

			<!-- /section:basics/content.breadcrumbs -->
			<div class="page-content">
				<div class="page-content-area">

					<div class="page-header">
						<h1>添加</h1>
					</div>
					<!-- /.page-header -->
					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->
							<form:form
								action="${pageContext.request.contextPath}/files_save"
								method="POST" class="form-horizontal" id="sample-form"
								modelAttribute="files">
								<c:if test="${files.id != 0}">
									<form:hidden id='fileId'  path="id"  />
									<div>${files.id}</div>
									<input type="hidden" name="_method" value="PUT">
								</c:if> 


								<!-- #section:elements.form.input-state -->
								<div class="form-group has-success">
									<label for="inputSuccess"
										class="col-xs-12 col-sm-3 control-label no-padding-right">上传文件</label>
									<div class="col-xs-12 col-sm-5 container ">
										<input id="input-1" type="file" class="file" multiple
											name="files" data-show-preview="true" />
										<!-- <i class="ace-icon fa fa-calendar"></i> -->

									</div>
								</div>
								
								<div class="form-group has-warning">
									<label for="inputWarning"
										class="col-xs-12 col-sm-3 control-label no-padding-right">标题</label>

									<div class="col-xs-12 col-sm-5">
										<span class="block input-icon input-icon-right"> <form:input
												type="text" id="inputWarning" class="width-100" path="title" />
											<i class="ace-icon fa fa-leaf"></i>
										</span>
									</div>

								</div>
								
								<div class="form-group has-success">
									<label for="inputSuccess"
										class="col-xs-12 col-sm-3 control-label no-padding-right">上传人员</label>
									<div class="col-xs-12 col-sm-5">
										<span class="block input-icon input-icon-right"> <form:input
												type="text" id="inputSuccess" class="width-100"
												path="editor" /> <i class="ace-icon fa fa-check-circle"></i>
										</span>
									</div>
								</div>
								
								<div class="form-group has-info">
									<label for="inputInfo"
										class="col-xs-12 col-sm-3 control-label no-padding-right">所在体系</label>
									<div class="col-xs-12 col-sm-5" id="inputInfo">
										<form:select class="form-control" path="system.id">
											<form:options items="${system}" itemLabel="sysName"
												itemValue="id" />
										</form:select>
									</div>
								</div>
								

								
								<form:input type='hidden'  path='state' value='0' />
								<form:input type='hidden'  path='content' value='' />
								
							
								<%-- <form:input class="wysiwyg-editor" id="editor1" path="content" /> --%>
								<div class="widget-toolbox padding-4 clearfix">

									<div class="btn-group pull-left">
										<a href="javascript:history.back()"
											class="btn btn-sm btn-danger btn-white btn-round "> <i
											class="ace-icon fa fa-times bigger-125"></i>取消
										</a>
									</div>
									<div class="btn-group pull-right">
										<button class="btn btn-sm btn-danger btn-white btn-round "
											id="add">
											<i class="ace-icon fa fa-floppy-o bigger-125"></i> 提交
										</button>
									</div>
								</div>
							</form:form>

							<script type="text/javascript">
								var $path_assets = "assets";//this will be used in loading jQuery UI if needed!
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
					<span class="bigger-120"> <span class="blue bolder">农业部农业物联网技术集成与应用重点实验室</span>
						&copy; 2017-2018（测试版）
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
	<script src="assets/js/jquery-ui.custom.min.js"></script>
	<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
	<script src="assets/js/markdown/markdown.min.js"></script>
	<script src="assets/js/markdown/bootstrap-markdown.min.js"></script>
	<script src="assets/js/jquery.hotkeys.min.js"></script>
	<script src="assets/js/bootstrap-wysiwyg.min.js"></script>
	<script src="assets/js/bootbox.min.js"></script>

	<!-- ace scripts -->
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>

	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		jQuery(function($) {

			function showErrorAlert(reason, detail) {
				var msg = '';
				if (reason === 'unsupported-file-type') {
					msg = "Unsupported format " + detail;
				} else {
					//console.log("error uploading file", reason, detail);
				}
				$(
						'<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>'
								+ '<strong>File upload error</strong> '
								+ msg
								+ ' </div>').prependTo('#alerts');
			}

			//$('#editor1').ace_wysiwyg();//this will create the default editor will all buttons

			//but we want to change a few buttons colors for the third style


			//RESIZE IMAGE

			//Add Image Resize Functionality to Chrome and Safari
			//webkit browsers don't have image resize functionality when content is editable
			//so let's add something using jQuery UI resizable
			//another option would be opening a dialog for user to enter dimensions.
			if (typeof jQuery.ui !== 'undefined' && ace.vars['webkit']) {

				var lastResizableImg = null;
				function destroyResizable() {
					if (lastResizableImg == null)
						return;
					lastResizableImg.resizable("destroy");
					lastResizableImg.removeData('resizable');
					lastResizableImg = null;
				}

				var enableImageResize = function() {
					$('.wysiwyg-editor')
							.on(
									'mousedown',
									function(e) {
										var target = $(e.target);
										if (e.target instanceof HTMLImageElement) {
											if (!target.data('resizable')) {
												target
														.resizable({
															aspectRatio : e.target.width
																	/ e.target.height,
														});
												target.data('resizable', true);

												if (lastResizableImg != null) {
													//disable previous resizable image
													lastResizableImg
															.resizable("destroy");
													lastResizableImg
															.removeData('resizable');
												}
												lastResizableImg = target;
											}
										}
									})
							.on(
									'click',
									function(e) {
										if (lastResizableImg != null
												&& !(e.target instanceof HTMLImageElement)) {
											destroyResizable();
										}
									}).on('keydown', function() {
								destroyResizable();
							});
				}

				enableImageResize();

				/**
				//or we can load the jQuery UI dynamically only if needed
				if (typeof jQuery.ui !== 'undefined') enableImageResize();
				else {//load jQuery UI if not loaded
					$.getScript($path_assets+"/js/jquery-ui.custom.min.js", function(data, textStatus, jqxhr) {
						enableImageResize()
					});
				}
				 */
			}

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

	<script src="assets/js/atits-js/files_add.js"></script>
</body>
</html>
