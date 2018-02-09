<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>帮助页面</title>

		<meta name="description" content="Static &amp; Dynamic Tables" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />

		<!-- page specific plugin styles -->

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
		<style>
	        html,body,h3{ margin: 0; padding: 0;}
	        h2,h3{ height: 50px; margin-bottom: 10px; /*border: #ddd solid 1px;*/margin-right: 200px;}
	        li{ list-style: none; margin: 0; vertical-align: top;}
	        ul{ margin: 0; padding: 0;}
	
	        /*右侧导航代码的样式表*/
	        .directory-nav{position: fixed; right:50px; bottom:40px; padding: 12px 0 20px 32px; display: none;}
	        .directory-nav li{height: 40px;line-height: 40px;  position: relative;cursor:pointer;}
	        .directory-nav li a{}
	        .directory-nav .l1{ }
	        .directory-nav .l2{ text-indent:0.6em;}
	        .directory-nav .l1 a{font-size: 18px;}
	        .directory-nav .l2 a{font-size: 16px;}
	        .directory-nav,.directory-nav a{ color: #666;}
	        .directory-nav .cur a{ color: red;}
	
	        .directory-nav .line{ position: absolute; left:4px; top: 5px; bottom: 5px; z-index: 1; width: 2px; background: #ddd;}
	        .directory-nav .c-top,.directory-nav .c-bottom{ position: absolute; left: 0; z-index: 2;
	            display: block; width: 10px; height: 10px; font-size: 0; line-height: 0;
	            background: url(assets/img/directory-nav.png) no-repeat 0 -69px;
	        }
	        .directory-nav .c-dot{
	            position: absolute; left:-32px; top: 50%; z-index: 2; margin-top: -5px;
	            display: block; width: 10px; height: 10px; font-size: 0; line-height: 0;
	            background: url(assets/img/directory-nav.png) no-repeat -275px 0;
	        }
	
	        .directory-nav .c-top{ top: 0}
	        .directory-nav .c-bottom{ bottom: 0}
	        .directory-nav .cur-tag{
	            position: absolute; left: -1px; top:30px; z-index: 5; margin-top: -6px;
	            display: block; width: 19px; height: 13px; font-size: 0; line-height: 0;
	            background: url(assets/img/directory-nav.png) no-repeat -271px -37px;
	            -webkit-transition:top .3s ease 0s;
	            transition:top .3s ease 0s;
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
				} catch(e) {}
			</script>

			<!-- #section:basics/sidebar -->

			<!-- /section:basics/sidebar -->
			<div class="main-content">
				<div class="page-content">
					<h1 class="header smaller lighter blue">体系平台使用手册</h1>

					<!-- /section:settings.box -->
					<div class="page-content-area ">

						<!-- /.page-header -->
						
						<div class="row">
							<div class="col-sm-12 ">
								<!-- PAGE CONTENT BEGINS -->

								<div class="row">
									<div class="col-xs-12">

										<!-- <div class="dataTables_borderWrap"> -->
										<div class="col-xs-10">
											<div >
												<h2 class="blue lighter smaller">
													<i class="ace-icon fa fa-hand-o-right blue"></i>
													用户手册下载
												</h2>
												<div>
													<%--<img class="col-sm-10" style="float: none;display: block;margin-left: auto;margin-right: auto;" src="assets/img/help14.png"/>--%>
													<%--<p class="text-center bigger-120">图11&nbsp;&nbsp;个人管理平台页面</p>--%>
													<ul class="list-unstyled spaced inline bigger-150 margin-20">
														<div id="demo-summernote-edit" style="display: block;padding-left: 2em;">
															<p>用户详细操作说明文档：<a href="#">点击下载 ↓</a></p>
															<%--<p style="text-indent: 2em;">--%>
																<%--<a href="#">●点击下载 ↓--%>
																<%--</a>--%>
															<%--</p>--%>
														</div>
													</ul>
												</div>
											</div>
										</div>
										<hr class="col-xs-10" />

										<div class="col-xs-10">
											<div >
													<h2 class="blue lighter smaller">
													<!--<span class="blue bigger-110">登录</span>-->
														<i class="ace-icon fa fa-hand-o-right blue"></i>平台首页
													</h2>
													<div>
														<img class="col-sm-10" style="float: none;display: block;margin-left: auto;margin-right: auto;" src="assets/img/help1.png"/>
														<p class="text-center bigger-120">图1&nbsp;&nbsp;平台首页</p>
														<ul class="list-unstyled spaced inline bigger-150 margin-20">
															<div id="demo-summernote-edit" style="display: block;padding-left: 2em;">
																<p>平台整体分为三个区域，如图1所示：</p>
																<p style="text-indent: 2em;">●区域1为框架标题部分，这里给出当前用户名信息，点击右上角“欢迎”出选择“退出”即可返回登录界面重新登录； </p>
																<p style="text-indent: 2em;">●区域2为相关菜单，点击链接后，在区域3中打开对应链接的内容；</p>
																<p style="text-indent: 2em;">●区域3是主体显示区域，显示主界面。</p>
																
															</div>
		
														</ul>
													</div>
											</div>
										</div>
										
										<hr class="col-xs-10" />
										<div class="col-xs-10">
											<div >
													<h2 class="blue lighter smaller">
														<i class="ace-icon fa fa-hand-o-right blue"></i>
														体系简介
													</h2>
													<div>
														<img class="col-sm-10" style="float: none;display: block;margin-left: auto;margin-right: auto;" src="assets/img/help2.png"/>
														<p class="text-center bigger-120">图2&nbsp;&nbsp;各体系简介</p>
														<ul class="list-unstyled spaced inline bigger-150 margin-20">
															<div id="demo-summernote-edit" style="display: block;padding-left: 2em;">
																<p>体系简介页面：</p>
																<p style="text-indent: 2em;">●点击十五个体系展示轮播的链接，可进入相应体系的展示页面。
																	</p>

															</div>
														</ul>
													</div>
											</div>
										</div>
										
										<hr class="col-xs-10" />
										<div class="col-xs-10">
											<div >
													<h2 class="blue lighter smaller">
														<i class="ace-icon fa fa-hand-o-right blue"></i>
														体系概况
													</h2>
													<div>
														<ul class="list-unstyled spaced inline bigger-150 margin-20">
															<div id="demo-summernote-edit" style="display: block;padding-left: 2em;">
																<p style="text-indent: 2em;">●包括人员名单、功能研究室和综合试验站三个模块。</p>
															</div>
														</ul>
													</div>
											</div>
										</div>
										
										<hr class="col-xs-10" />
										<div class="col-xs-10">
											<div >
													<h3 class="blue lighter smaller">
														<i class="ace-icon fa fa-hand-o-right blue"></i>
														人员名单
													</h3>
													<div>
														<img class="col-sm-10" style="float: none;display: block;margin-left: auto;margin-right: auto;" src="assets/img/help3.png"/>
														<p class="text-center bigger-120">图3.1&nbsp;&nbsp;人员名单</p>
														<ul class="list-unstyled spaced inline bigger-150 margin-20">
															<div id="demo-summernote-edit" style="display: block;padding-left: 2em;">
																<p style="text-indent: 2em;">●点击“体系概况”中的“人员名单”，显示该体系的所有成员的人员名单。如图3.1所示。</p>
															</div>
														</ul>
													</div>
											</div>
										</div>
										
										<hr class="col-xs-10" />
										<div class="col-xs-10">
											<div >
													<h3 class="blue lighter smaller">
														<i class="ace-icon fa fa-hand-o-right blue"></i>
														功能研究室
													</h3>
													<div>
														<img class="col-sm-10" style="float: none;display: block;margin-left: auto;margin-right: auto;" src="assets/img/help4.png"/>
														<p class="text-center bigger-120">图3.2&nbsp;&nbsp;功能研究室</p>
														<ul class="list-unstyled spaced inline bigger-150 margin-20">
															<div id="demo-summernote-edit" style="display: block;padding-left: 2em;">
																<p>点击“体系概况”中的“功能研究室”菜单项，如图3.2所示。</p>
																<p style="text-indent: 2em;">●因为权限的不同，所显示的功能研究室的情况也不同，用户的功能权限也不同。
																	</p>
																<p style="text-indent: 2em;">●首席专家只能修改本体系功能研究室；</p>
																<p style="text-indent: 2em;">●研究室主任能够修改本研究室的基本信息。</p>
															</div>
														</ul>
													</div>
											</div>
										</div>
										
										<hr class="col-xs-10" />
										<div class="col-xs-10">
											<div >
													<h3 class="blue lighter smaller">
														<i class="ace-icon fa fa-hand-o-right blue"></i>
														综合试验站
													</h2>
													<div>
														<img class="col-sm-10" style="float: none;display: block;margin-left: auto;margin-right: auto;" src="assets/img/help5.png"/>
														<p class="text-center bigger-120">图3.3&nbsp;&nbsp;综合试验站</p>
														<ul class="list-unstyled spaced inline bigger-150 margin-20">
															<div id="demo-summernote-edit" style="display: block;padding-left: 2em;">
																<p>点击“体系概况”中的“综合试验站”菜单项，如图3.3所示。</p>
																<p style="text-indent: 2em;">●综合试验站因为权限的不同，所显示的功能研究室的情况也不同，用户的功能权限也不同。</p>
																<p style="text-indent: 2em;">●首席专家只能修改本体系综合试验站；</p>
																<p style="text-indent: 2em;">●综合试验站站长能够修改本试验站的基本信息。</p>
															</div>
														</ul>
													</div>
											</div>
										</div>
										
										<hr class="col-xs-10" />
										<div class="col-xs-10">
											<div >
													<h2 class="blue lighter smaller">
														<i class="ace-icon fa fa-hand-o-right blue"></i>
														通知公告
													</h2>
													<div>
														<img class="col-sm-10" style="float: none;display: block;margin-left: auto;margin-right: auto;" src="assets/img/help6.png"/>
														<p class="text-center bigger-120">图4&nbsp;&nbsp;首席专家发布通知公告页面</p>
														<ul class="list-unstyled spaced inline bigger-150 margin-20">
															<div id="demo-summernote-edit" style="display: block;padding-left: 2em;">
																<p>通知公告因为权限的不同，所能看到的通知公告也不同，且用户的功能权限也不同。</p>
																<p style="text-indent: 2em;">●通知公告由各个体系的首席专家发布，农委审核，审核通过之后才是发布成功；</p>
																<p style="text-indent: 2em;">●点击相应列出的标题即可查看对应详细信息。</p>

															</div>
														</ul>
													</div>
											</div>
										</div>
										
										<hr class="col-xs-10" />
										<div class="col-xs-10">
											<div >
													<h2 class="blue lighter smaller">
														<i class="ace-icon fa fa-hand-o-right blue"></i>
														体系动态
													</h2>
													<div>
														<img class="col-sm-10" style="float: none;display: block;margin-left: auto;margin-right: auto;" src="assets/img/help7.png"/>
														<p class="text-center bigger-120">图5&nbsp;&nbsp;首席专家审核体系动态页面</p>
														<ul class="list-unstyled spaced inline bigger-150 margin-20">
															<div id="demo-summernote-edit" style="display: block;padding-left: 2em;">
																<p>点击“体系动态”菜单项，展示的是省体系办以及各产业体系发布的一些重大研究进展、媒体宣传、会议活动、培训服务等。</p>
																<p style="text-indent: 2em;">●体系动态所有岗位专家及综合试验站站长均可发布，本体系中所有人员发布的动态都由该体系的首席专家审核（包括首席专家自己发布的），如图5所示。</p>
																<p style="text-indent: 2em;">●审核通过之后本体系的所有人员均可见；
																	但是若是农委“展示”之后，则所有体系的人员均可见，否则仅有发布的该体系人员可见。</p>
																<p style="text-indent: 2em;">●点击体系动态的标题，即可查看该体系动态的详细信息。因为权限的不同，用户所能看到的体系动态不同。</p>
															</div>
														</ul>
													</div>
											</div>
										</div>
										
										<hr class="col-xs-10" />
										<div class="col-xs-10">
											<div >
													<h2 class="blue lighter smaller">
														<i class="ace-icon fa fa-hand-o-right blue"></i>
														规章制度
													</h2>
													<div>
														<img class="col-sm-10" style="float: none;display: block;margin-left: auto;margin-right: auto;" src="assets/img/help8.png"/>
														<p class="text-center bigger-120">图6&nbsp;&nbsp;首席专家发布本体系规章制度后显示审核中</p>
														<ul class="list-unstyled spaced inline bigger-150 margin-20">
															<div id="demo-summernote-edit" style="display: block;padding-left: 2em;">
																<p>点击“规章制度”菜单项，展示的分别是体系办和各体系发布的各项制度办法，包括资金管理办法、信用管理办法、考评办法等。</p>
																<p style="text-indent: 2em;">●省体系发布规章制度由其自己审核“通过”即可，且所有体系人员均可见省体系规章制度，如图6所示。</p>
																<p style="text-indent: 2em;">●各体系规章制度由该体系的首席专家发布本体系的相关规章制度，农委“审核”。若是农委审核选择“通过”按钮，则只有发布的其体系内所有人员可见；若是选择“展示”按钮，则所有体系的所有人员均可见。</p>
																<p style="text-indent: 2em;">●点击相关规章制度的标题，即可查看该规章制度的详细信息。</p>
																
															</div>
														</ul>
													</div>
											</div>
										</div>
										
										<hr class="col-xs-10" />
										<div class="col-xs-10">
											<div >
													<h2 class="blue lighter smaller">
														<i class="ace-icon fa fa-hand-o-right blue"></i>
														工作任务
													</h2>
													<div>
														<img class="col-sm-10" style="float: none;display: block;margin-left: auto;margin-right: auto;" src="assets/img/help9.png"/>
														<img class="col-sm-10" style="float: none;display: block;margin-left: auto;margin-right: auto;" src="assets/img/help10.png"/>
														
														<p class="text-center bigger-120">图7&nbsp;&nbsp;首席专家在“细化安排”中发布子任务</p>
														<ul class="list-unstyled spaced inline bigger-150 margin-20">
															<div id="demo-summernote-edit" style="display: block;padding-left: 2em;">
																<p>点击“工作任务”菜单项，因为用户权限的不同，所显示的工作任务也有所不同。</p>
																<p style="text-indent: 2em;">●由农委发布各个体系的“任务合同”（即总任务），各体系首席专家对本体系的工作任务进行“细化安排”（分配到体系内各个人员的子任务）（如图7所示），
																	该体系的各个人员执行本体系首席专家所派遣的任务。</p>
															</div>
														</ul>
													</div>
											</div>
										</div>
										
										
										<hr class="col-xs-10" />
										<div class="col-xs-10">
											<div >
													<h2 class="blue lighter smaller">
														<i class="ace-icon fa fa-hand-o-right blue"></i>
														工作进展
													</h2>
													<div>
														<img class="col-sm-10" style="float: none;display: block;margin-left: auto;margin-right: auto;" src="assets/img/help11.png"/>
														<p class="text-center bigger-120">图8.1&nbsp;&nbsp;无子任务时的页面</p>
														<img class="col-sm-10" style="float: none;display: block;margin-left: auto;margin-right: auto;" src="assets/img/help12.png"/>
														<p class="text-center bigger-120">图8.2&nbsp;&nbsp;首席专家审核通过后的子任务</p>
														<ul class="list-unstyled spaced inline bigger-150 margin-20">
															<div id="demo-summernote-edit" style="display: block;padding-left: 2em;">
																<p>点击“工作进展”菜单项，由被安排子任务的人员发布自己的进展状况（点击“添加”按钮），没有子任务则其下拉列表为空</p>
																<p style="text-indent: 2em;">●本体系的首席专家有“审核”权利，审核“通过”之后，本体系人员以及农委可见。如图8.2所示。</p>
															</div>
														</ul>
													</div>
											</div>
										</div>

										<hr class="col-xs-10" />
										<div class="col-xs-10">
											<div >
												<h2 class="blue lighter smaller">
													<i class="ace-icon fa fa-hand-o-right blue"></i>
													考评管理
												</h2>
												<div>
													<img class="col-sm-10" style="float: none;display: block;margin-left: auto;margin-right: auto;" src="assets/img/help15kp.png"/>
													<p class="text-center bigger-120">图9&nbsp;&nbsp;考评管理页面</p>
													<ul class="list-unstyled spaced inline bigger-150 margin-20">
														<div id="demo-summernote-edit" style="display: block;padding-left: 2em;">
															<p>点击“考评管理”菜单项，考评管理，供各位专家进行考评活动所用，如图9所示。</p>
															<p style="text-indent: 2em;">●此模块正在完善中。</p>
														</div>
													</ul>
												</div>
											</div>
										</div>

										<hr class="col-xs-10" />
										<div class="col-xs-10">
											<div >
													<h2 class="blue lighter smaller">
														<i class="ace-icon fa fa-hand-o-right blue"></i>
														下载中心
													</h2>
													<div>
														<img class="col-sm-10" style="float: none;display: block;margin-left: auto;margin-right: auto;" src="assets/img/help13.png"/>
														<p class="text-center bigger-120">图10&nbsp;&nbsp;下载中心页面</p>
														<ul class="list-unstyled spaced inline bigger-150 margin-20">
															<div id="demo-summernote-edit" style="display: block;padding-left: 2em;">
																<p>点击“下载中心”菜单项，下载中心，供各位专家下载通知公告、体系动态以及规章制度等，如图10所示。</p>
																<p style="text-indent: 2em;">●点击文件名或是绿色下载按钮即可下载。</p>
															</div>
														</ul>
													</div>
											</div>
										</div>

										
										<hr class="col-xs-10" />
										<div class="col-xs-10">
											<div >
													<h2 class="blue lighter smaller">
														<i class="ace-icon fa fa-hand-o-right blue"></i>
														个人管理平台
													</h2>
													<div>
														<img class="col-sm-10" style="float: none;display: block;margin-left: auto;margin-right: auto;" src="assets/img/help14.png"/>
														<p class="text-center bigger-120">图11&nbsp;&nbsp;个人管理平台页面</p>
														<ul class="list-unstyled spaced inline bigger-150 margin-20">
															<div id="demo-summernote-edit" style="display: block;padding-left: 2em;">
																<p>点击“个人管理平台”菜单项，如图11所示。</p>
																<p style="text-indent: 2em;">●个人可以对本人的基本信息进行相关的修改操作。</p>
															</div>
														</ul>
													</div>
											</div>
										</div>

										<hr class="col-xs-10" />

										
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

			<div class="footer">
				<div class="footer-inner">
					<!-- #section:basics/footer -->
					<div class="footer-content">
						<span class="bigger-120"> <span class="blue bolder">安徽农业大学数字农业研究所
					</span> &copy; 2017-2018
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
		<script src="assets/js/jquery.dataTables.min.js"></script>
		<script src="assets/js/jquery.dataTables.bootstrap.js"></script>

		<!-- ace scripts -->
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>
	
		<!--下面是右侧目录生成js-->
				<script type="text/javascript">
				    /*
				    * 只写了两级，无限级别也可以，是逻辑上的级别，html结构全是同一级别
				    * 滑标动画用的css3过渡动画，不支持的浏览器就没动画效果了
				    */
				    function DirectoryNav($h,config){
				        this.opts = $.extend(true,{
				            scrollThreshold:0.5,    //滚动检测阀值 0.5在浏览器窗口中间部位
				            scrollSpeed:700,        //滚动到指定位置的动画时间
				//          scrollTopBorder:500,//滚动条距离顶部多少的时候显示导航，如果为0，则一直显示
				            scrollTopBorder:0,
				            easing: 'swing',        //不解释
				            delayDetection:100,     //延时检测，避免滚动的时候检测过于频繁
				            scrollChange:function(){}
				        },config);
				        this.$win = $(window);
				        this.$h = $h;
				        this.$pageNavList = "";
				        this.$pageNavListLis ="";
				        this.$curTag = "";
				        this.$pageNavListLiH = "";
				        this.offArr = [];
				        this.curIndex = 0;
				        this.scrollIng = false;
				        this.init();
				    }
				
				    DirectoryNav.prototype = {
				        init:function(){
				            this.make();
				            this.setArr();
				            this.bindEvent();
				        },
				        make:function(){
				            //生成导航目录结构,这是根据需求自己生成的。如果你直接在页面中输出一个结构那也挺好不用 搞js
				            $("body").append('<div class="directory-nav" id="directoryNav"><ul></ul><span class="cur-tag"></span><span class="c-top"></span><span class="c-bottom"></span><span class="line"></span></div>');
				            var $hs = this.$h,
				                $directoryNav = $("#directoryNav"),
				                temp = [],
				                index1 = 0,
				                index2 = 0;
				            $hs.each(function(index){
				                var $this = $(this),
				                        text = $this.text();
				                if(this.tagName.toLowerCase()=='h2'){
				                    index1++;
				                    if(index1%2==0) index2 = 0;
				                    temp.push('<li class="l1"><span class="c-dot"></span>'+index1+'. <a class="l1-text">'+text+'</a></li>');
				                }else{
				                    index2++;
				                    temp.push('<li class="l2">'+index1+'.'+index2+' <a class="l2-text">'+text+'</a></li>');
				
				                }
				            });
				            $directoryNav.find("ul").html(temp.join(""));
				
				            //设置变量
				            this.$pageNavList = $directoryNav;
				            this.$pageNavListLis = this.$pageNavList.find("li");
				            this.$curTag = this.$pageNavList.find(".cur-tag");
				            this.$pageNavListLiH = this.$pageNavListLis.eq(0).height();
				
				            if(!this.opts.scrollTopBorder){
				                this.$pageNavList.show();
				            }
				        },
				        setArr:function(){
				            var This = this;
				            this.$h.each(function(){
				                var $this = $(this),
				                    offT = Math.round($this.offset().top);
				                This.offArr.push(offT);
				            });
				        },
				        posTag:function(top){
				            this.$curTag.css({top:top+'px'});
				        },
				        ifPos:function(st){
				            var offArr = this.offArr;
				            //console.log(st);
				            var windowHeight = Math.round(this.$win.height() * this.opts.scrollThreshold);
				            for(var i=0;i<offArr.length;i++){
				                if((offArr[i] - windowHeight) < st) {
				                    var $curLi = this.$pageNavListLis.eq(i),
				                        tagTop = $curLi.position().top;
				                    $curLi.addClass("cur").siblings("li").removeClass("cur");
				                    this.curIndex = i;
				                    this.posTag(tagTop+this.$pageNavListLiH*0.5);
				                    //this.curIndex = this.$pageNavListLis.filter(".cur").index();
				                    this.opts.scrollChange.call(this);
				                }
				            }
				        },
				        bindEvent:function(){
				            var This = this,
				                show = false,
				                timer = 0;
				            this.$win.on("scroll",function(){
				                var $this = $(this);
				                clearTimeout(timer);
				                timer = setTimeout(function(){
				                    This.scrollIng = true;
				                    if($this.scrollTop()>This.opts.scrollTopBorder){
				                        if(!This.$pageNavListLiH) This.$pageNavListLiH = This.$pageNavListLis.eq(0).height();
				                        if(!show){
				                            This.$pageNavList.fadeIn();
				                            show = true;
				                        }
				                        This.ifPos( $(this).scrollTop() );
				                    }else{
				                        if(show){
				                            This.$pageNavList.fadeOut();
				                            show = false;
				                        }
				                    }
				                },This.opts.delayDetection);
				            });
				
				            this.$pageNavList.on("click","li",function(){
				                var $this = $(this),
				                    index = $this.index();
				                This.scrollTo(This.offArr[index]);
				            })
				        },
				        scrollTo: function(offset,callback) {
				            var This = this;
				            $('html,body').animate({
				                scrollTop: offset
				            }, this.opts.scrollSpeed, this.opts.easing, function(){
				                This.scrollIng = false;
				                //修正弹两次回调 dant
				                callback && this.tagName.toLowerCase()=='body' && callback();
				            });
				        }
				    };
				
				    //实例化
				    var directoryNav = new DirectoryNav($("h2,h3"),{
				        scrollTopBorder:0   //滚动条距离顶部多少的时候显示导航，如果为0，则一直显示
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
		<!-- <script src="assets/js/atits-js/task.js"></script> -->



	</body>

</html>