<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta charset="utf-8">
<title>User Profile Page - Ace Admin</title>

<meta name="description" content="3 styles with inline editable feature">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">

<!-- page specific plugin styles -->
<link rel="stylesheet" href="assets/css/jquery-ui.custom.min.css">
<link rel="stylesheet" href="assets/css/jquery.gritter.css">
<link rel="stylesheet" href="assets/css/select2.css">
<link rel="stylesheet" href="assets/css/datepicker.css">
<link rel="stylesheet" href="assets/css/bootstrap-editable.css">

<!-- text fonts -->
<link rel="stylesheet" href="assets/css/ace-fonts.css">

<!-- ace styles -->
<link rel="stylesheet" href="assets/css/ace.min.css" id="main-ace-style">

<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" />
		<![endif]-->
<link rel="stylesheet" href="assets/css/ace-skins.min.css">
<link rel="stylesheet" href="assets/css/ace-rtl.min.css">

<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

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


			<!-- /section:basics/content.breadcrumbs -->
			<div class="page-content">
				<!-- #section:settings.box -->
				<!-- /.ace-settings-container -->

				<!-- /section:settings.box -->
				<div class="page-content-area">
					<!-- /.page-header -->

					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->




							<div class="">
								<div id="user-profile-2" class="user-profile">
									<div class="tabbable">


										<div class="tab-content no-border padding-24">
											<div id="home" class="tab-pane in active">
												<div class="row">
													<h3 class="header smaller lighter green">
														<i class="ace-icon fa fa-user-md"></i> 个人信息
													</h3>
													<div class="col-xs-12 col-sm-3 center">
														<span class="profile-picture"> <img
															class="editable img-responsive" alt="Alex's Avatar"
															id="avatar2" src="assets/avatars/profile-pic.jpg">
														</span>

														<div class="space space-4"></div>

														<a href="#" class="btn btn-sm btn-block btn-success">
															<i class="ace-icon fa fa-plus-circle bigger-120"></i> <span
															class="bigger-110">${person.name}</span>
														</a>


													</div>
													<!-- /.col -->

													<div class="col-xs-12 col-sm-9">
														<h4 class="blue">
															<span class="middle"></span> <span
																class="label label-purple arrowed-in-right"> <i
																class="ace-icon fa fa-circle smaller-80 align-middle"></i>
																online
															</span>
														</h4>

														<div class="profile-user-info">
															<div class="profile-info-row">
																<div class="profile-info-name">姓名</div>

																<div class="profile-info-value">
																	<span>${person.name}</span>
																</div>
															</div>

															<div class="profile-info-row">
																<div class="profile-info-name">性别</div>

																<div class="profile-info-value">
																	<span>男</span>
																</div>
															</div>

															<div class="profile-info-row">
																<div class="profile-info-name">职称</div>

																<div class="profile-info-value">
																	<span>${person.job}</span>
																</div>
															</div>

															<div class="profile-info-row">
																<div class="profile-info-name">手机号码</div>

																<div class="profile-info-value">
																	<span>${person.phoneNumber}</span>
																</div>
															</div>

															<div class="profile-info-row">
																<div class="profile-info-name">办公室电话号码</div>

																<div class="profile-info-value">
																	<span>${person.offcePhone}</span>
																</div>
															</div>

															<div class="profile-info-row">
																<div class="profile-info-name">电子邮箱</div>

																<div class="profile-info-value">
																	<span>${person.email}</span>
																</div>
															</div>

															<div class="profile-info-row">
																<div class="profile-info-name">通讯地址</div>

																<div class="profile-info-value">
																	<i class="fa fa-map-marker light-orange bigger-110"></i>
																	<span>${person.profile.address}</span>
																</div>
															</div>



														</div>

														<div class="hr hr-8 dotted"></div>


													</div>
													<!-- /.col -->
												</div>
												<!-- /.row -->
											</div>
											<!-- /#home -->

											<div id="feed" class="tab-pane">
												<div class="profile-feed row">
													<div class="col-sm-6">
														<div class="profile-activity clearfix">
															<div>
																<img class="pull-left" alt="Alex Doe's avatar"
																	src="assets/avatars/avatar5.png"> <a class="user"
																	href="#"> Alex Doe </a> changed his profile photo. <a
																	href="#">Take a look</a>

																<div class="time">
																	<i class="ace-icon fa fa-clock-o bigger-110"></i> an
																	hour ago
																</div>
															</div>

															<div class="tools action-buttons">
																<a href="#" class="blue"> <i
																	class="ace-icon fa fa-pencil bigger-125"></i>
																</a> <a href="#" class="red"> <i
																	class="ace-icon fa fa-times bigger-125"></i>
																</a>
															</div>
														</div>

														<div class="profile-activity clearfix">
															<div>
																<img class="pull-left" alt="Susan Smith's avatar"
																	src="assets/avatars/avatar1.png"> <a class="user"
																	href="#"> Susan Smith </a> is now friends with Alex
																Doe.
																<div class="time">
																	<i class="ace-icon fa fa-clock-o bigger-110"></i> 2
																	hours ago
																</div>
															</div>

															<div class="tools action-buttons">
																<a href="#" class="blue"> <i
																	class="ace-icon fa fa-pencil bigger-125"></i>
																</a> <a href="#" class="red"> <i
																	class="ace-icon fa fa-times bigger-125"></i>
																</a>
															</div>
														</div>

														<div class="profile-activity clearfix">
															<div>
																<i
																	class="pull-left thumbicon fa fa-check btn-success no-hover"></i>
																<a class="user" href="#"> Alex Doe </a> joined <a
																	href="#">Country Music</a> group.
																<div class="time">
																	<i class="ace-icon fa fa-clock-o bigger-110"></i> 5
																	hours ago
																</div>
															</div>

															<div class="tools action-buttons">
																<a href="#" class="blue"> <i
																	class="ace-icon fa fa-pencil bigger-125"></i>
																</a> <a href="#" class="red"> <i
																	class="ace-icon fa fa-times bigger-125"></i>
																</a>
															</div>
														</div>

														<div class="profile-activity clearfix">
															<div>
																<i
																	class="pull-left thumbicon fa fa-picture-o btn-info no-hover"></i>
																<a class="user" href="#"> Alex Doe </a> uploaded a new
																photo. <a href="#">Take a look</a>

																<div class="time">
																	<i class="ace-icon fa fa-clock-o bigger-110"></i> 5
																	hours ago
																</div>
															</div>

															<div class="tools action-buttons">
																<a href="#" class="blue"> <i
																	class="ace-icon fa fa-pencil bigger-125"></i>
																</a> <a href="#" class="red"> <i
																	class="ace-icon fa fa-times bigger-125"></i>
																</a>
															</div>
														</div>

														<div class="profile-activity clearfix">
															<div>
																<img class="pull-left" alt="David Palms's avatar"
																	src="assets/avatars/avatar4.png"> <a class="user"
																	href="#"> David Palms </a> left a comment on Alex's
																wall.
																<div class="time">
																	<i class="ace-icon fa fa-clock-o bigger-110"></i> 8
																	hours ago
																</div>
															</div>

															<div class="tools action-buttons">
																<a href="#" class="blue"> <i
																	class="ace-icon fa fa-pencil bigger-125"></i>
																</a> <a href="#" class="red"> <i
																	class="ace-icon fa fa-times bigger-125"></i>
																</a>
															</div>
														</div>
													</div>
													<!-- /.col -->

													<div class="col-sm-6">
														<div class="profile-activity clearfix">
															<div>
																<i
																	class="pull-left thumbicon fa fa-pencil-square-o btn-pink no-hover"></i>
																<a class="user" href="#"> Alex Doe </a> published a new
																blog post. <a href="#">Read now</a>

																<div class="time">
																	<i class="ace-icon fa fa-clock-o bigger-110"></i> 11
																	hours ago
																</div>
															</div>

															<div class="tools action-buttons">
																<a href="#" class="blue"> <i
																	class="ace-icon fa fa-pencil bigger-125"></i>
																</a> <a href="#" class="red"> <i
																	class="ace-icon fa fa-times bigger-125"></i>
																</a>
															</div>
														</div>

														<div class="profile-activity clearfix">
															<div>
																<img class="pull-left" alt="Alex Doe's avatar"
																	src="assets/avatars/avatar5.png"> <a class="user"
																	href="#"> Alex Doe </a> upgraded his skills.
																<div class="time">
																	<i class="ace-icon fa fa-clock-o bigger-110"></i> 12
																	hours ago
																</div>
															</div>

															<div class="tools action-buttons">
																<a href="#" class="blue"> <i
																	class="ace-icon fa fa-pencil bigger-125"></i>
																</a> <a href="#" class="red"> <i
																	class="ace-icon fa fa-times bigger-125"></i>
																</a>
															</div>
														</div>

														<div class="profile-activity clearfix">
															<div>
																<i
																	class="pull-left thumbicon fa fa-key btn-info no-hover"></i>
																<a class="user" href="#"> Alex Doe </a> logged in.
																<div class="time">
																	<i class="ace-icon fa fa-clock-o bigger-110"></i> 12
																	hours ago
																</div>
															</div>

															<div class="tools action-buttons">
																<a href="#" class="blue"> <i
																	class="ace-icon fa fa-pencil bigger-125"></i>
																</a> <a href="#" class="red"> <i
																	class="ace-icon fa fa-times bigger-125"></i>
																</a>
															</div>
														</div>

														<div class="profile-activity clearfix">
															<div>
																<i
																	class="pull-left thumbicon fa fa-power-off btn-inverse no-hover"></i>
																<a class="user" href="#"> Alex Doe </a> logged out.
																<div class="time">
																	<i class="ace-icon fa fa-clock-o bigger-110"></i> 16
																	hours ago
																</div>
															</div>

															<div class="tools action-buttons">
																<a href="#" class="blue"> <i
																	class="ace-icon fa fa-pencil bigger-125"></i>
																</a> <a href="#" class="red"> <i
																	class="ace-icon fa fa-times bigger-125"></i>
																</a>
															</div>
														</div>

														<div class="profile-activity clearfix">
															<div>
																<i
																	class="pull-left thumbicon fa fa-key btn-info no-hover"></i>
																<a class="user" href="#"> Alex Doe </a> logged in.
																<div class="time">
																	<i class="ace-icon fa fa-clock-o bigger-110"></i> 16
																	hours ago
																</div>
															</div>

															<div class="tools action-buttons">
																<a href="#" class="blue"> <i
																	class="ace-icon fa fa-pencil bigger-125"></i>
																</a> <a href="#" class="red"> <i
																	class="ace-icon fa fa-times bigger-125"></i>
																</a>
															</div>
														</div>
													</div>
													<!-- /.col -->
												</div>
												<!-- /.row -->

												<div class="space-12"></div>

												<div class="center">
													<button type="button"
														class="btn btn-sm btn-primary btn-white btn-round">
														<i class="ace-icon fa fa-rss bigger-150 middle orange2"></i>
														<span class="bigger-110">View more activities</span> <i
															class="icon-on-right ace-icon fa fa-arrow-right"></i>
													</button>
												</div>
											</div>
											<!-- /#feed -->

											<div id="friends" class="tab-pane">
												<!-- #section:pages/profile.friends -->
												<div class="profile-users clearfix">
													<div class="itemdiv memberdiv">
														<div class="inline pos-rel">
															<div class="user">
																<a href="#"> <img src="assets/avatars/avatar4.png"
																	alt="Bob Doe's avatar">
																</a>
															</div>

															<div class="body">
																<div class="name">
																	<a href="#"> <span
																		class="user-status status-online"></span> Bob Doe
																	</a>
																</div>
															</div>

															<div class="popover">
																<div class="arrow"></div>

																<div class="popover-content">
																	<div class="bolder">Content Editor</div>

																	<div class="time">
																		<i
																			class="ace-icon fa fa-clock-o middle bigger-120 orange"></i>
																		<span class="green"> 20 mins ago </span>
																	</div>

																	<div class="hr dotted hr-8"></div>

																	<div class="tools action-buttons">
																		<a href="#"> <i
																			class="ace-icon fa fa-facebook-square blue bigger-150"></i>
																		</a> <a href="#"> <i
																			class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
																		</a> <a href="#"> <i
																			class="ace-icon fa fa-google-plus-square red bigger-150"></i>
																		</a>
																	</div>
																</div>
															</div>
														</div>
													</div>

													<div class="itemdiv memberdiv">
														<div class="inline pos-rel">
															<div class="user">
																<a href="#"> <img src="assets/avatars/avatar1.png"
																	alt="Rose Doe's avatar">
																</a>
															</div>

															<div class="body">
																<div class="name">
																	<a href="#"> <span
																		class="user-status status-offline"></span> Rose Doe
																	</a>
																</div>
															</div>

															<div class="popover">
																<div class="arrow"></div>

																<div class="popover-content">
																	<div class="bolder">Graphic Designer</div>

																	<div class="time">
																		<i
																			class="ace-icon fa fa-clock-o middle bigger-120 grey"></i>
																		<span class="grey"> 30 min ago </span>
																	</div>

																	<div class="hr dotted hr-8"></div>

																	<div class="tools action-buttons">
																		<a href="#"> <i
																			class="ace-icon fa fa-facebook-square blue bigger-150"></i>
																		</a> <a href="#"> <i
																			class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
																		</a> <a href="#"> <i
																			class="ace-icon fa fa-google-plus-square red bigger-150"></i>
																		</a>
																	</div>
																</div>
															</div>
														</div>
													</div>

													<div class="itemdiv memberdiv">
														<div class="inline pos-rel">
															<div class="user">
																<a href="#"> <img src="assets/avatars/avatar.png"
																	alt="Jim Doe's avatar">
																</a>
															</div>

															<div class="body">
																<div class="name">
																	<a href="#"> <span class="user-status status-busy"></span>
																		Jim Doe
																	</a>
																</div>
															</div>

															<div class="popover">
																<div class="arrow"></div>

																<div class="popover-content">
																	<div class="bolder">SEO &amp; Advertising</div>

																	<div class="time">
																		<i
																			class="ace-icon fa fa-clock-o middle bigger-120 red"></i>
																		<span class="grey"> 1 hour ago </span>
																	</div>

																	<div class="hr dotted hr-8"></div>

																	<div class="tools action-buttons">
																		<a href="#"> <i
																			class="ace-icon fa fa-facebook-square blue bigger-150"></i>
																		</a> <a href="#"> <i
																			class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
																		</a> <a href="#"> <i
																			class="ace-icon fa fa-google-plus-square red bigger-150"></i>
																		</a>
																	</div>
																</div>
															</div>
														</div>
													</div>

													<div class="itemdiv memberdiv">
														<div class="inline pos-rel">
															<div class="user">
																<a href="#"> <img src="assets/avatars/avatar5.png"
																	alt="Alex Doe's avatar">
																</a>
															</div>

															<div class="body">
																<div class="name">
																	<a href="#"> <span class="user-status status-idle"></span>
																		Alex Doe
																	</a>
																</div>
															</div>

															<div class="popover">
																<div class="arrow"></div>

																<div class="popover-content">
																	<div class="bolder">Marketing</div>

																	<div class="time">
																		<i
																			class="ace-icon fa fa-clock-o middle bigger-120 orange"></i>
																		<span class=""> 40 minutes idle </span>
																	</div>

																	<div class="hr dotted hr-8"></div>

																	<div class="tools action-buttons">
																		<a href="#"> <i
																			class="ace-icon fa fa-facebook-square blue bigger-150"></i>
																		</a> <a href="#"> <i
																			class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
																		</a> <a href="#"> <i
																			class="ace-icon fa fa-google-plus-square red bigger-150"></i>
																		</a>
																	</div>
																</div>
															</div>
														</div>
													</div>

													<div class="itemdiv memberdiv">
														<div class="inline pos-rel">
															<div class="user">
																<a href="#"> <img src="assets/avatars/avatar2.png"
																	alt="Phil Doe's avatar">
																</a>
															</div>

															<div class="body">
																<div class="name">
																	<a href="#"> <span
																		class="user-status status-online"></span> Phil Doe
																	</a>
																</div>
															</div>

															<div class="popover">
																<div class="arrow"></div>

																<div class="popover-content">
																	<div class="bolder">Public Relations</div>

																	<div class="time">
																		<i
																			class="ace-icon fa fa-clock-o middle bigger-120 orange"></i>
																		<span class="green"> 2 hours ago </span>
																	</div>

																	<div class="hr dotted hr-8"></div>

																	<div class="tools action-buttons">
																		<a href="#"> <i
																			class="ace-icon fa fa-facebook-square blue bigger-150"></i>
																		</a> <a href="#"> <i
																			class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
																		</a> <a href="#"> <i
																			class="ace-icon fa fa-google-plus-square red bigger-150"></i>
																		</a>
																	</div>
																</div>
															</div>
														</div>
													</div>

													<div class="itemdiv memberdiv">
														<div class="inline pos-rel">
															<div class="user">
																<a href="#"> <img src="assets/avatars/avatar3.png"
																	alt="Susan Doe's avatar">
																</a>
															</div>

															<div class="body">
																<div class="name">
																	<a href="#"> <span
																		class="user-status status-online"></span> Susan Doe
																	</a>
																</div>
															</div>

															<div class="popover">
																<div class="arrow"></div>

																<div class="popover-content">
																	<div class="bolder">HR Management</div>

																	<div class="time">
																		<i
																			class="ace-icon fa fa-clock-o middle bigger-120 orange"></i>
																		<span class="green"> 20 mins ago </span>
																	</div>

																	<div class="hr dotted hr-8"></div>

																	<div class="tools action-buttons">
																		<a href="#"> <i
																			class="ace-icon fa fa-facebook-square blue bigger-150"></i>
																		</a> <a href="#"> <i
																			class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
																		</a> <a href="#"> <i
																			class="ace-icon fa fa-google-plus-square red bigger-150"></i>
																		</a>
																	</div>
																</div>
															</div>
														</div>
													</div>

													<div class="itemdiv memberdiv">
														<div class="inline pos-rel">
															<div class="user">
																<a href="#"> <img src="assets/avatars/avatar1.png"
																	alt="Jennifer Doe's avatar">
																</a>
															</div>

															<div class="body">
																<div class="name">
																	<a href="#"> <span
																		class="user-status status-offline"></span> Jennifer
																		Doe
																	</a>
																</div>
															</div>

															<div class="popover">
																<div class="arrow"></div>

																<div class="popover-content">
																	<div class="bolder">Graphic Designer</div>

																	<div class="time">
																		<i
																			class="ace-icon fa fa-clock-o middle bigger-120 grey"></i>
																		<span class="grey"> 2 hours ago </span>
																	</div>

																	<div class="hr dotted hr-8"></div>

																	<div class="tools action-buttons">
																		<a href="#"> <i
																			class="ace-icon fa fa-facebook-square blue bigger-150"></i>
																		</a> <a href="#"> <i
																			class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
																		</a> <a href="#"> <i
																			class="ace-icon fa fa-google-plus-square red bigger-150"></i>
																		</a>
																	</div>
																</div>
															</div>
														</div>
													</div>

													<div class="itemdiv memberdiv">
														<div class="inline pos-rel">
															<div class="user">
																<a href="#"> <img src="assets/avatars/avatar3.png"
																	alt="Alexa Doe's avatar">
																</a>
															</div>

															<div class="body">
																<div class="name">
																	<a href="#"> <span
																		class="user-status status-offline"></span> Alexa Doe
																	</a>
																</div>
															</div>

															<div class="popover">
																<div class="arrow"></div>

																<div class="popover-content">
																	<div class="bolder">Accounting</div>

																	<div class="time">
																		<i
																			class="ace-icon fa fa-clock-o middle bigger-120 grey"></i>
																		<span class="grey"> 4 hours ago </span>
																	</div>

																	<div class="hr dotted hr-8"></div>

																	<div class="tools action-buttons">
																		<a href="#"> <i
																			class="ace-icon fa fa-facebook-square blue bigger-150"></i>
																		</a> <a href="#"> <i
																			class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
																		</a> <a href="#"> <i
																			class="ace-icon fa fa-google-plus-square red bigger-150"></i>
																		</a>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>

												<!-- /section:pages/profile.friends -->
												<div class="hr hr10 hr-double"></div>

												<ul class="pager pull-right">
													<li class="previous disabled"><a href="#">← Prev</a></li>

													<li class="next"><a href="#">Next →</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="hide">
								<div id="user-profile-3" class="user-profile row">
									<div class="col-sm-offset-1 col-sm-10">
										<div class="well well-sm">
											<button type="button" class="close" data-dismiss="alert">×</button>
											&nbsp;
											<div class="inline middle blue bigger-110">Your profile
												is 70% complete</div>

											&nbsp; &nbsp; &nbsp;
											<div style="width: 200px;" data-percent="70%"
												class="inline middle no-margin progress progress-striped active">
												<div class="progress-bar progress-bar-success"
													style="width: 70%"></div>
											</div>
										</div>
										<!-- /.well -->

										<div class="space"></div>

										<form class="form-horizontal">
											<div class="tabbable">
												<ul class="nav nav-tabs padding-16">
													<li class="active"><a data-toggle="tab"
														href="#edit-basic"> <i
															class="green ace-icon fa fa-pencil-square-o bigger-125"></i>
															Basic Info
													</a></li>

													<li><a data-toggle="tab" href="#edit-settings"> <i
															class="purple ace-icon fa fa-cog bigger-125"></i>
															Settings
													</a></li>

													<li><a data-toggle="tab" href="#edit-password"> <i
															class="blue ace-icon fa fa-key bigger-125"></i> Password
													</a></li>
												</ul>

												<div class="tab-content profile-edit-tab-content">
													<div id="edit-basic" class="tab-pane in active">
														<h4 class="header blue bolder smaller">General</h4>

														<div class="row">
															<div class="col-xs-12 col-sm-4">
																<label class="ace-file-input ace-file-multiple"><input
																	type="file"><span class="ace-file-container"
																	data-title="Change avatar"><span
																		class="ace-file-name" data-title="No File ..."><i
																			class=" ace-icon ace-icon fa fa-picture-o"></i></span></span><a
																	class="remove" href="#"><i
																		class=" ace-icon fa fa-times"></i></a></label>
															</div>

															<div class="vspace-12-sm"></div>

															<div class="col-xs-12 col-sm-8">
																<div class="form-group">
																	<label class="col-sm-4 control-label no-padding-right"
																		for="form-field-username">Username</label>

																	<div class="col-sm-8">
																		<input class="col-xs-12 col-sm-10" type="text"
																			id="form-field-username" placeholder="Username"
																			value="alexdoe">
																	</div>
																</div>

																<div class="space-4"></div>

																<div class="form-group">
																	<label class="col-sm-4 control-label no-padding-right"
																		for="form-field-first">Name</label>

																	<div class="col-sm-8">
																		<input class="input-small" type="text"
																			id="form-field-first" placeholder="First Name"
																			value="Alex"> <input class="input-small"
																			type="text" id="form-field-last"
																			placeholder="Last Name" value="Doe">
																	</div>
																</div>
															</div>
														</div>

														<hr>
														<div class="form-group">
															<label class="col-sm-3 control-label no-padding-right"
																for="form-field-date">Birth Date</label>

															<div class="col-sm-9">
																<div class="input-medium">
																	<div class="input-group">
																		<input class="input-medium date-picker"
																			id="form-field-date" type="text"
																			data-date-format="dd-mm-yyyy"
																			placeholder="dd-mm-yyyy"> <span
																			class="input-group-addon"> <i
																			class="ace-icon fa fa-calendar"></i>
																		</span>
																	</div>
																</div>
															</div>
														</div>

														<div class="space-4"></div>

														<div class="form-group">
															<label class="col-sm-3 control-label no-padding-right">Gender</label>

															<div class="col-sm-9">
																<label class="inline"> <input
																	name="form-field-radio" type="radio" class="ace">
																	<span class="lbl middle"> Male</span>
																</label> &nbsp; &nbsp; &nbsp; <label class="inline"> <input
																	name="form-field-radio" type="radio" class="ace">
																	<span class="lbl middle"> Female</span>
																</label>
															</div>
														</div>

														<div class="space-4"></div>

														<div class="form-group">
															<label class="col-sm-3 control-label no-padding-right"
																for="form-field-comment">Comment</label>

															<div class="col-sm-9">
																<textarea id="form-field-comment"></textarea>
															</div>
														</div>

														<div class="space"></div>
														<h4 class="header blue bolder smaller">Contact</h4>

														<div class="form-group">
															<label class="col-sm-3 control-label no-padding-right"
																for="form-field-email">Email</label>

															<div class="col-sm-9">
																<span class="input-icon input-icon-right"> <input
																	type="email" id="form-field-email"
																	value="alexdoe@gmail.com"> <i
																	class="ace-icon fa fa-envelope"></i>
																</span>
															</div>
														</div>

														<div class="space-4"></div>

														<div class="form-group">
															<label class="col-sm-3 control-label no-padding-right"
																for="form-field-website">Website</label>

															<div class="col-sm-9">
																<span class="input-icon input-icon-right"> <input
																	type="url" id="form-field-website"
																	value="http://www.alexdoe.com/"> <i
																	class="ace-icon fa fa-globe"></i>
																</span>
															</div>
														</div>

														<div class="space-4"></div>

														<div class="form-group">
															<label class="col-sm-3 control-label no-padding-right"
																for="form-field-phone">Phone</label>

															<div class="col-sm-9">
																<span class="input-icon input-icon-right"> <input
																	class="input-medium input-mask-phone" type="text"
																	id="form-field-phone"> <i
																	class="ace-icon fa fa-phone fa-flip-horizontal"></i>
																</span>
															</div>
														</div>

														<div class="space"></div>
														<h4 class="header blue bolder smaller">Social</h4>

														<div class="form-group">
															<label class="col-sm-3 control-label no-padding-right"
																for="form-field-facebook">Facebook</label>

															<div class="col-sm-9">
																<span class="input-icon"> <input type="text"
																	value="facebook_alexdoe" id="form-field-facebook">
																	<i class="ace-icon fa fa-facebook blue"></i>
																</span>
															</div>
														</div>

														<div class="space-4"></div>

														<div class="form-group">
															<label class="col-sm-3 control-label no-padding-right"
																for="form-field-twitter">Twitter</label>

															<div class="col-sm-9">
																<span class="input-icon"> <input type="text"
																	value="twitter_alexdoe" id="form-field-twitter">
																	<i class="ace-icon fa fa-twitter light-blue"></i>
																</span>
															</div>
														</div>

														<div class="space-4"></div>

														<div class="form-group">
															<label class="col-sm-3 control-label no-padding-right"
																for="form-field-gplus">Google+</label>

															<div class="col-sm-9">
																<span class="input-icon"> <input type="text"
																	value="google_alexdoe" id="form-field-gplus"> <i
																	class="ace-icon fa fa-google-plus red"></i>
																</span>
															</div>
														</div>
													</div>

													<div id="edit-settings" class="tab-pane">
														<div class="space-10"></div>

														<div>
															<label class="inline"> <input type="checkbox"
																name="form-field-checkbox" class="ace"> <span
																class="lbl"> Make my profile public</span>
															</label>
														</div>

														<div class="space-8"></div>

														<div>
															<label class="inline"> <input type="checkbox"
																name="form-field-checkbox" class="ace"> <span
																class="lbl"> Email me new updates</span>
															</label>
														</div>

														<div class="space-8"></div>

														<div>
															<label class="inline"> <input type="checkbox"
																name="form-field-checkbox" class="ace"> <span
																class="lbl"> Keep a history of my conversations</span>
															</label> <label class="inline"> <span
																class="space-2 block"></span> for <input type="text"
																class="input-mini" maxlength="3"> days
															</label>
														</div>
													</div>

													<div id="edit-password" class="tab-pane">
														<div class="space-10"></div>

														<div class="form-group">
															<label class="col-sm-3 control-label no-padding-right"
																for="form-field-pass1">New Password</label>

															<div class="col-sm-9">
																<input type="password" id="form-field-pass1">
															</div>
														</div>

														<div class="space-4"></div>

														<div class="form-group">
															<label class="col-sm-3 control-label no-padding-right"
																for="form-field-pass2">Confirm Password</label>

															<div class="col-sm-9">
																<input type="password" id="form-field-pass2">
															</div>
														</div>
													</div>
												</div>
											</div>

											<div class="clearfix form-actions">
												<div class="col-md-offset-3 col-md-9">
													<button class="btn btn-info" type="button">
														<i class="ace-icon fa fa-check bigger-110"></i> Save
													</button>

													&nbsp; &nbsp;
													<button class="btn" type="reset">
														<i class="ace-icon fa fa-undo bigger-110"></i> Reset
													</button>
												</div>
											</div>
										</form>
									</div>
									<!-- /.span -->
								</div>
								<!-- /.user-profile -->
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

		<div class="footer">
			<div class="footer-inner">
				<!-- #section:basics/footer -->
				<div class="footer-content">
					<span class="bigger-120"> <span class="blue bolder">安徽农业大学数字农业研究所</span>
						© 2013-2014
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
	</div>
	<!-- /.main-container -->

	<!-- basic scripts -->

	<!--[if !IE]> -->
	<script type="text/javascript">
		window.jQuery
				|| document.write("<script src='assets/js/jquery.min.js'>"
						+ "<"+"/script>");
	</script>
	<script src="assets/js/jquery.min.js"></script>

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

	<!--[if lte IE 8]>
		  <script src="assets/js/excanvas.min.js"></script>
		<![endif]-->
	<script src="assets/js/jquery-ui.custom.min.js"></script>
	<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
	<script src="assets/js/jquery.gritter.min.js"></script>
	<script src="assets/js/bootbox.min.js"></script>
	<script src="assets/js/jquery.easypiechart.min.js"></script>
	<script src="assets/js/date-time/bootstrap-datepicker.min.js"></script>
	<script src="assets/js/jquery.hotkeys.min.js"></script>
	<script src="assets/js/bootstrap-wysiwyg.min.js"></script>
	<script src="assets/js/select2.min.js"></script>
	<script src="assets/js/fuelux/fuelux.spinner.min.js"></script>
	<script src="assets/js/x-editable/bootstrap-editable.min.js"></script>
	<script src="assets/js/x-editable/ace-editable.min.js"></script>
	<script src="assets/js/jquery.maskedinput.min.js"></script>

	<!-- ace scripts -->
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>

	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		jQuery(function($) {

			//editables on first profile page
			$.fn.editable.defaults.mode = 'inline';
			$.fn.editableform.loading = "<div class='editableform-loading'><i class='ace-icon fa fa-spinner fa-spin fa-2x light-blue'></i></div>";
			$.fn.editableform.buttons = '<button type="submit" class="btn btn-info editable-submit"><i class="ace-icon fa fa-check"></i></button>'
					+ '<button type="button" class="btn editable-cancel"><i class="ace-icon fa fa-times"></i></button>';

			//editables 

			//text editable
			$('#username').editable({
				type : 'text',
				name : 'username'
			});

			//select2 editable
			var countries = [];
			$.each({
				"CA" : "Canada",
				"IN" : "India",
				"NL" : "Netherlands",
				"TR" : "Turkey",
				"US" : "United States"
			}, function(k, v) {
				countries.push({
					id : k,
					text : v
				});
			});

			var cities = [];
			cities["CA"] = [];
			$.each([ "Toronto", "Ottawa", "Calgary", "Vancouver" ], function(k,
					v) {
				cities["CA"].push({
					id : v,
					text : v
				});
			});
			cities["IN"] = [];
			$.each([ "Delhi", "Mumbai", "Bangalore" ], function(k, v) {
				cities["IN"].push({
					id : v,
					text : v
				});
			});
			cities["NL"] = [];
			$.each([ "Amsterdam", "Rotterdam", "The Hague" ], function(k, v) {
				cities["NL"].push({
					id : v,
					text : v
				});
			});
			cities["TR"] = [];
			$.each([ "Ankara", "Istanbul", "Izmir" ], function(k, v) {
				cities["TR"].push({
					id : v,
					text : v
				});
			});
			cities["US"] = [];
			$.each(
					[ "New York", "Miami", "Los Angeles", "Chicago",
							"Wysconsin" ], function(k, v) {
						cities["US"].push({
							id : v,
							text : v
						});
					});

			var currentValue = "NL";
			$('#country').editable(
					{
						type : 'select2',
						value : 'NL',
						//onblur:'ignore',
						source : countries,
						select2 : {
							'width' : 140
						},
						success : function(response, newValue) {
							if (currentValue == newValue)
								return;
							currentValue = newValue;

							var new_source = (!newValue || newValue == "") ? []
									: cities[newValue];

							//the destroy method is causing errors in x-editable v1.4.6+
							//it worked fine in v1.4.5
							/**			
							$('#city').editable('destroy').editable({
								type: 'select2',
								source: new_source
							}).editable('setValue', null);
							 */

							//so we remove it altogether and create a new element
							var city = $('#city').removeAttr('id').get(0);
							$(city).clone().attr('id', 'city').text(
									'Select City').editable({
								type : 'select2',
								value : null,
								//onblur:'ignore',
								source : new_source,
								select2 : {
									'width' : 140
								}
							}).insertAfter(city);//insert it after previous instance
							$(city).remove();//remove previous instance

						}
					});

			$('#city').editable({
				type : 'select2',
				value : 'Amsterdam',
				//onblur:'ignore',
				source : cities[currentValue],
				select2 : {
					'width' : 140
				}
			});

			//custom date editable
			$('#signup').editable({
				type : 'adate',
				date : {
					//datepicker plugin options
					format : 'yyyy/mm/dd',
					viewformat : 'yyyy/mm/dd',
					weekStart : 1

				//,nativeUI: true//if true and browser support input[type=date], native browser control will be used
				//,format: 'yyyy-mm-dd',
				//viewformat: 'yyyy-mm-dd'
				}
			})

			$('#age').editable({
				type : 'spinner',
				name : 'age',
				spinner : {
					min : 16,
					max : 99,
					step : 1,
					on_sides : true
				//,nativeUI: true//if true and browser support input[type=number], native browser control will be used
				}
			});

			$('#login').editable({
				type : 'slider',
				name : 'login',

				slider : {
					min : 1,
					max : 50,
					width : 100
				//,nativeUI: true//if true and browser support input[type=range], native browser control will be used
				},
				success : function(response, newValue) {
					if (parseInt(newValue) == 1)
						$(this).html(newValue + " hour ago");
					else
						$(this).html(newValue + " hours ago");
				}
			});

			$('#about').editable({
				mode : 'inline',
				type : 'wysiwyg',
				name : 'about',

				wysiwyg : {
				//css : {'max-width':'300px'}
				},
				success : function(response, newValue) {
				}
			});

			// *** editable avatar *** //
			try {//ie8 throws some harmless exceptions, so let's catch'em

				//first let's add a fake appendChild method for Image element for browsers that have a problem with this
				//because editable plugin calls appendChild, and it causes errors on IE at unpredicted points
				try {
					document.createElement('IMG').appendChild(
							document.createElement('B'));
				} catch (e) {
					Image.prototype.appendChild = function(el) {
					}
				}

				var last_gritter
				$('#avatar')
						.editable(
								{
									type : 'image',
									name : 'avatar',
									value : null,
									image : {
										//specify ace file input plugin's options here
										btn_choose : 'Change Avatar',
										droppable : true,
										maxSize : 110000,//~100Kb

										//and a few extra ones here
										name : 'avatar',//put the field name here as well, will be used inside the custom plugin
										on_error : function(error_type) {//on_error function will be called when the selected file has a problem
											if (last_gritter)
												$.gritter.remove(last_gritter);
											if (error_type == 1) {//file format error
												last_gritter = $.gritter
														.add({
															title : 'File is not an image!',
															text : 'Please choose a jpg|gif|png image!',
															class_name : 'gritter-error gritter-center'
														});
											} else if (error_type == 2) {//file size rror
												last_gritter = $.gritter
														.add({
															title : 'File too big!',
															text : 'Image size should not exceed 100Kb!',
															class_name : 'gritter-error gritter-center'
														});
											} else {//other error
											}
										},
										on_success : function() {
											$.gritter.removeAll();
										}
									},
									url : function(params) {
										// ***UPDATE AVATAR HERE*** //
										//for a working upload example you can replace the contents of this function with 
										//examples/profile-avatar-update.js

										var deferred = new $.Deferred

										var value = $('#avatar').next().find(
												'input[type=hidden]:eq(0)')
												.val();
										if (!value || value.length == 0) {
											deferred.resolve();
											return deferred.promise();
										}

										//dummy upload
										setTimeout(
												function() {
													if ("FileReader" in window) {
														//for browsers that have a thumbnail of selected image
														var thumb = $('#avatar')
																.next().find(
																		'img')
																.data('thumb');
														if (thumb)
															$('#avatar').get(0).src = thumb;
													}

													deferred.resolve({
														'status' : 'OK'
													});

													if (last_gritter)
														$.gritter
																.remove(last_gritter);
													last_gritter = $.gritter
															.add({
																title : 'Avatar Updated!',
																text : 'Uploading to server can be easily implemented. A working example is included with the template.',
																class_name : 'gritter-info gritter-center'
															});

												},
												parseInt(Math.random() * 800 + 800))

										return deferred.promise();

										// ***END OF UPDATE AVATAR HERE*** //
									},

									success : function(response, newValue) {
									}
								})
			} catch (e) {
			}

			//another option is using modals
			$('#avatar2')
					.on(
							'click',
							function() {
								var modal = '<div class="modal fade">\
					  <div class="modal-dialog">\
					   <div class="modal-content">\
						<div class="modal-header">\
							<button type="button" class="close" data-dismiss="modal">&times;</button>\
							<h4 class="blue">Change Avatar</h4>\
						</div>\
						\
						<form class="no-margin">\
						 <div class="modal-body">\
							<div class="space-4"></div>\
							<div style="width:75%;margin-left:12%;"><input type="file" name="file-input" /></div>\
						 </div>\
						\
						 <div class="modal-footer center">\
							<button type="submit" class="btn btn-sm btn-success"><i class="ace-icon fa fa-check"></i> Submit</button>\
							<button type="button" class="btn btn-sm" data-dismiss="modal"><i class="ace-icon fa fa-times"></i> Cancel</button>\
						 </div>\
						</form>\
					  </div>\
					 </div>\
					</div>';

								var modal = $(modal);
								modal.modal("show").on("hidden", function() {
									modal.remove();
								});

								var working = false;

								var form = modal.find('form:eq(0)');
								var file = form.find('input[type=file]').eq(0);
								file.ace_file_input({
									style : 'well',
									btn_choose : 'Click to choose new avatar',
									btn_change : null,
									no_icon : 'ace-icon fa fa-picture-o',
									thumbnail : 'small',
									before_remove : function() {
										//don't remove/reset files while being uploaded
										return !working;
									},
									allowExt : [ 'jpg', 'jpeg', 'png', 'gif' ],
									allowMime : [ 'image/jpg', 'image/jpeg',
											'image/png', 'image/gif' ]
								});

								form
										.on(
												'submit',
												function() {
													if (!file
															.data('ace_input_files'))
														return false;

													file
															.ace_file_input('disable');
													form.find('button').attr(
															'disabled',
															'disabled');
													form
															.find('.modal-body')
															.append(
																	"<div class='center'><i class='ace-icon fa fa-spinner fa-spin bigger-150 orange'></i></div>");

													var deferred = new $.Deferred;
													working = true;
													deferred
															.done(function() {
																form
																		.find(
																				'button')
																		.removeAttr(
																				'disabled');
																form
																		.find(
																				'input[type=file]')
																		.ace_file_input(
																				'enable');
																form
																		.find(
																				'.modal-body > :last-child')
																		.remove();

																modal
																		.modal("hide");

																var thumb = file
																		.next()
																		.find(
																				'img')
																		.data(
																				'thumb');
																if (thumb)
																	$(
																			'#avatar2')
																			.get(
																					0).src = thumb;

																working = false;
															});

													setTimeout(
															function() {
																deferred
																		.resolve();
															},
															parseInt(Math
																	.random() * 800 + 800));

													return false;
												});

							});

			//////////////////////////////
			$('#profile-feed-1').ace_scroll({
				height : '250px',
				mouseWheelLock : true,
				alwaysVisible : true
			});

			$('a[ data-original-title]').tooltip();

			$('.easy-pie-chart.percentage').each(function() {
				var barColor = $(this).data('color') || '#555';
				var trackColor = '#E2E2E2';
				var size = parseInt($(this).data('size')) || 72;
				$(this).easyPieChart({
					barColor : barColor,
					trackColor : trackColor,
					scaleColor : false,
					lineCap : 'butt',
					lineWidth : parseInt(size / 10),
					animate : false,
					size : size
				}).css('color', barColor);
			});

			///////////////////////////////////////////

			//right & left position
			//show the user info on right or left depending on its position
			$('#user-profile-2 .memberdiv').on(
					'mouseenter touchstart',
					function() {
						var $this = $(this);
						var $parent = $this.closest('.tab-pane');

						var off1 = $parent.offset();
						var w1 = $parent.width();

						var off2 = $this.offset();
						var w2 = $this.width();

						var place = 'left';
						if (parseInt(off2.left) < parseInt(off1.left)
								+ parseInt(w1 / 2))
							place = 'right';

						$this.find('.popover').removeClass('right left')
								.addClass(place);
					}).on('click', function(e) {
				e.preventDefault();
			});

			///////////////////////////////////////////
			$('#user-profile-3').find('input[type=file]').ace_file_input(
					{
						style : 'well',
						btn_choose : 'Change avatar',
						btn_change : null,
						no_icon : 'ace-icon fa fa-picture-o',
						thumbnail : 'large',
						droppable : true,

						allowExt : [ 'jpg', 'jpeg', 'png', 'gif' ],
						allowMime : [ 'image/jpg', 'image/jpeg', 'image/png',
								'image/gif' ]
					}).end().find('button[type=reset]').on(
					ace.click_event,
					function() {
						$('#user-profile-3 input[type=file]').ace_file_input(
								'reset_input');
					}).end().find('.date-picker').datepicker().next().on(
					ace.click_event, function() {
						$(this).prev().focus();
					})
			$('.input-mask-phone').mask('(999) 999-9999');

			////////////////////
			//change profile
			$('[data-toggle="buttons"] .btn').on('click', function(e) {
				var target = $(this).find('input[type=radio]');
				var which = parseInt(target.val());
				$('.user-profile').parent().addClass('hide');
				$('#user-profile-' + which).parent().removeClass('hide');
			});
		});
	</script>

	<!-- the following scripts are used in demo only for onpage help and you don't need them -->
	<link rel="stylesheet" href="assets/css/ace.onpage-help.css">
	<link rel="stylesheet" href="docs/assets/js/themes/sunburst.css">

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