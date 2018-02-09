<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>考评启动管理添加</title>
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
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" />
		<![endif]-->
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
		<!--bootstrap-fileinput  -->
		<link rel="stylesheet" href="assets/bootstrap-fileinput/css/fileinput.css" />
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

		<!-- 日历控件 -->
		<script type="text/javascript" src="assets/js/My97DatePicker/WdatePicker.js"></script>
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
							<a href="test_start">考评启动管理</a>
						</li>
						<li class="active">添加</li>
					</ul>
					<!-- /.breadcrumb -->
				</div>

				<!-- /section:basics/content.breadcrumbs -->
				<div class="page-content">
					<div class="page-content-area">

						<div class="page-header">
							<h1>启动考评管理添加</h1>
						</div>
						<!-- /.page-header -->
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<form:form id="sample-form"
										   action="${pageContext.request.contextPath}/testStart_save"
										   method="post"
										   class="form-horizontal" modelAttribute="testStart">
									<!-- #section:elements.form.input-state -->
									<div class="form-group has-info">
										<label for="inputSuccess" class="col-xs-12 col-sm-3 control-label no-padding-right">年份</label>
										<div class="col-xs-12 col-sm-5 col-md-4">
											<input id="spinner2" class="input-large spinner-input form-control" maxlength="5" type="text" name="year">
										</div>
									</div>

									<div class="form-group has-info">
										<label class="col-xs-12 col-sm-3 control-label no-padding-right">所属体系</label>
										<div class="col-xs-12 col-sm-6 col-lg-4">
												<span class="block input-icon input-icon-right">
												<input type="text"  class="center form-control" disabled="true" value="${person.system.sysName}"/>
													<form:input type="hidden" id="inputSuccess" class="width-100"
																path="system.id" value="${person.system.id}"/>
												<i class="ace-icon fa fa-check-circle"></i>
												</span>
										</div>
									</div>

									<div class="form-group has-info">
										<label for="inputSuccess" class="col-xs-12 col-sm-3 control-label no-padding-right">考评时间</label>
										<div class="col-xs-12 col-sm-6 col-lg-4">
											<span class="block input-icon input-icon-right"> <form:input
													type="text" id="inputSuccess" name="HBegtime" style="width: 90%" class="width-100 "
													path = "date"
													onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',minDate:'%y-%M-%d'})"/>
												<i class="ace-icon fa fa-check-circle"></i>
											</span>
										</div>
									</div>

									<div class="form-group has-info">
										<label for="inputWarning" class="col-xs-12 col-sm-3 control-label no-padding-right">考评地点</label>
										<div class="col-xs-12 col-sm-6 col-lg-4">
											<span class="block input-icon input-icon-right"> <form:input placeholder="请输入详细地址..."
												type="text" id="inputWarning" class="width-100" path="address" />
											<i class="ace-icon fa  fa-user"></i>
										</span>
										</div>
									</div>

									<div class="form-group has-info">
										<label for="inputWarning" class="col-xs-12 col-sm-3 control-label no-padding-right">参与考评人员</label>
										<div class="col-xs-12 col-sm-6 col-lg-4">
											<div>
												<div class="tabbable">
													<ul class="nav nav-tabs" id="myTab">
														<li class="active">
															<a data-toggle="tab" href="#home">
																<i class="ace-icon fa fa-home"></i> 本体系人员
															</a>
														</li>
														<li class="">
															<a data-toggle="tab" href="#profile">
																<i class="ace-icon fa fa-comments"></i>
																外聘专家
																<span class="badge badge-danger"></span>
															</a>
														</li>
													</ul>

													<div class="tab-content">
														<div id="home" class="tab-pane active">
															<p>请您选择体系人员名单：</p>
															<label>
																<input name="allSel1" class="ace" type="checkbox">
																<span class="lbl">全选</span>
															</label><br />
														    <c:forEach var="sys_per" items="${sys_pers}">
																<label class="col-md-3">
																	<%--value="${sys_per.id}"--%>
																	<input name="sysperId" class="ace ace-checkbox-2" type="checkbox" value="${sys_per.id}">
																	<span class="lbl">
																			${sys_per.name}
																	</span>
																</label>
														    </c:forEach>
															<br /><br />
														</div>

														<div id="profile" class="tab-pane">
															<p>请您选择外聘专家名单：</p>
															<label>
																<input name="allSel2" class="ace" type="checkbox">
																<span class="lbl">全选</span>
															</label><br />
															<c:forEach var="expert" items="${experts}">
																<label class="col-md-3">
																	<input name="eptId" class="ace ace-checkbox-2"  type="checkbox" value="${expert.id}">
																	<span class="lbl">${expert.name}</span>
																</label>
															</c:forEach>
															<br /><br />
														</div>

														<!--<div id="dropdown1" class="tab-pane">
															<p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade.</p>
														</div>-->
													</div>
												</div>
											</div>
											</span>
										</div>
									</div>

									<div>
										<div class="col-md-offset-3 col-md-9">
										<button class="btn" type="reset">
											<i class="ace-icon fa fa-undo"></i> 重置
										</button>&nbsp; &nbsp; &nbsp;
										<button class="btn btn-info" type="submit" id="add">
											<i class="ace-icon fa fa-check"></i>提交
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
						<span class="bigger-120"> <span class="blue bolder">农业部农业物联网技术集成与应用重点实验室</span> &copy; 2017-2018
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
			if('ontouchstart' in document.documentElement)
				document
				.write("<script src='assets/js/jquery.mobile.custom.min.js'>" +
					"<" + "/script>");
		</script>
		<script src="assets/js/bootstrap.min.js"></script>

		<!--日期调整的js-->
		<script src="assets/js/fuelux/fuelux.spinner.min.js"></script>

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
					if(reason === 'unsupported-file-type') {
						msg = "Unsupported format " + detail;
					} else {
						//console.log("error uploading file", reason, detail);
					}
					$(
						'<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>' +
						'<strong>File upload error</strong> ' +
						msg +
						' </div>').prependTo('#alerts');
				}

				//$('#editor1').ace_wysiwyg();//this will create the default editor will all buttons
				$('#spinner2').ace_spinner({
					value: 2016,
					min: 2000,
					max: 2025,
					step: 1,
					touch_spinner: true,
					icon_up: 'ace-icon fa fa-caret-up',
					icon_down: 'ace-icon fa fa-caret-down'
				});
				$('[data-rel=tooltip]').tooltip({
					container: 'body'
				});

				//"jQuery UI Slider"
				//range slider tooltip example
				$("#slider-range").css('height', '200px').slider({
					orientation: "vertical",
					range: true,
					min: 0,
					max: 100,
					values: [17, 67],
					slide: function(event, ui) {
						var val = ui.values[$(ui.handle).index() - 1] + "";

						if(!ui.handle.firstChild) {
							$("<div class='tooltip right in' style='display:none;left:16px;top:-6px;'><div class='tooltip-arrow'></div><div class='tooltip-inner'></div></div>")
								.prependTo(ui.handle);
						}
						$(ui.handle.firstChild).show().children().eq(1).text(val);
					}
				}).find('a').on('blur', function() {
					$(this.firstChild).hide();
				});


			});
		</script>
		<script type="text/javascript">
			$(function() {
				$("#datepicker").datepicker();
			});
		</script>
		<script type="text/javascript">
			jQuery(function($) {
//				给全选添加点击事件
				$("[name='allSel1']").click(function(){
					if($(this).is(':checked')){
						$("[name='sysperId']").prop('checked',true);
					}else{
						$("[name='sysperId']").prop('checked',false);
					}
				});
				//给复选框添加点击事件
				$("[name='sysperId']").click(function(){
					var allSel1 = false;
					$("[name='sysperId']").each(function(){
						if(!$(this).is(':checked')){
							allSel1 = true;
						}
					})
					//如果有checkbox没有被选中
					if(allSel1){
						$("[name='allSel1']").prop('checked',false);
					}else{
						$("[name='allSel1']").prop('checked',true);
					}
				})

			});
		</script>
		
		<script type="text/javascript">
			jQuery(function($) {
				//给全选添加点击事件
				$("[name='allSel2']").click(function(){
					if($(this).is(':checked')){
						$("[name='eptId']").prop('checked',true);
					}else{
						$("[name='eptId']").prop('checked',false);
					}
				});
				//给复选框添加点击事件
				$("[name='eptId']").click(function(){
					var allSel2 = false;
					$("[name='eptId']").each(function(){
						if(!$(this).is(':checked')){
							allSel2 = true;
						}
					});
					//如果有checkbox没有被选中
					if(allSel2){
						$("[name='allSel2']").prop('checked',false);
					}else{
						$("[name='allSel2']").prop('checked',true);
					}
				})

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
		<script src="assets/js/atits-js/test_start_add.js"></script>

		
	</body>

</html>