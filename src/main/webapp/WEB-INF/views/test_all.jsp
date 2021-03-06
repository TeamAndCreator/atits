<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>评分汇总</title>

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
				<div class="breadcrumbs" id="breadcrumbs">
					<script type="text/javascript">
						try {
							ace.settings.check('breadcrumbs', 'fixed')
						} catch(e) {}
					</script>

					<ul class="breadcrumb">
						<li><i class="ace-icon fa fa-home home-icon"></i>
							<a href="#">首页</a>
						</li>
						<li class="active">考评管理</li>
						<li class="active">评分汇总</li>
					</ul>
					<!-- /.breadcrumb -->

				</div>
				<div class="page-content">
					<h1 class="header smaller lighter blue">评分汇总</h1>

					<!-- /section:settings.box -->
					<div class="page-content-area ">

						<!-- /.page-header -->
						
						<div class="row">
							<div class="col-sm-12 col-lg-10 ">
								<div class="action-buttons">
										<span class="bigger-150"><b>年度筛选:</b></span>
										<select class="" id="form-field-select-1" style="width: 100px;">
											<option value="">全部</option>
											<option value="">2018</option>
											<option value="">2017</option>
											<option value="">2016</option>
											<option value="">2015</option>
										</select>
										<a class="btn btn-sm btn-success" href="#"> <i class="ace-icon fa fa-search  bigger-130">确定</i>
										</a>
									</a>
								</div>
								<!-- PAGE CONTENT BEGINS -->

								<div class="row">
									<div class="col-xs-12">

										<!-- <div class="dataTables_borderWrap"> -->
										<div>
											<table id="sample-table-2" class="table table-striped table-bordered table-hover">
												<thead>
													
														<th class="center"><label class="position-relative">
															<input type="checkbox" class="ace" /> <span class="lbl"></span>
													</label></th>
														<th>年度</th>
														<th>所属体系</th>
														<th>被评分人</th>
														<th>职位</th>
														<th>分数</th>
														<th>评级</th>
														<th>操作</th>
															
												</thead>

												<tbody>
													<c:forEach items="${tasks}" var="task">
														<tr>
															<td class="center"><label class="position-relative">
																<input type="checkbox" class="ace" name="subcheck" /> <span
																class="lbl"></span>
														</label></td>
															<td>2017</td>
															<td>玉米产业技术体系</td>
															<td>李绍稳</td>
															<td>首席专家</td>
															<td>91<span>分</span></td>
															<td>
																<a href="#" role="button" class="green" data-toggle="modal">优秀</a>
																<a href="#" role="button" class="red" data-toggle="modal">一般</a>
															</td>
															
															<td>
																<div class="hidden-sm hidden-xs action-buttons">
																	<a class="green" href="person_setting?id=${person.id}"> <i class="ace-icon fa fa-pencil bigger-130"></i>
																	</a>
																	<c:if test="${person.role.id!=1}">
																		<a class="red" href="person_delete/${person.id}"> <i class="ace-icon fa fa-trash-o bigger-130"></i>
																		</a>
																	</c:if>
																</div>

																<div class="hidden-md hidden-lg">
																	<div class="inline position-relative">
																		<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
						                                                    <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
						                                                </button>

																		<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																			<li>
																				<a href="person_setting?id=${person.id}" class="tooltip-success" data-rel="tooltip" title="编辑"> <span class="green">
																		<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																</span>
																				</a>
																			</li>
																			<c:if test="${person.role.id!=1}">
																				<li>
																					<a href="person_delete/${person.id}" class="tooltip-error red" data-rel="tooltip" title="删除"> <span> <i
                                                                class="ace-icon fa fa-trash-o bigger-120"></i>
																</span>
																					</a>
																				</li>
																			</c:if>
																		</ul>
																	</div>
																</div>
															</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
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
			if('ontouchstart' in document.documentElement)
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
			jQuery(function($) {
				var oTable1 = $('#sample-table-2')
					//.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
					.dataTable({
						"bAutoWidth": false,
						"aoColumns": [{
							"bSortable": false
						},null,null, {
							"bSortable": false
						},{
							"bSortable": false
						}, null,null,{
							"bSortable": false
						}, ],
						"aaSorting": [],

						"searching": true, // 搜索
						"bPaginate": true, //显示（使用）分页器
						"pagingType": "full_numbers", //分页样式的类型
						"oLanguage": { //语言设置  
							"sLengthMenu": "每页显示 _MENU_ 条记录",
							"sZeroRecords": "没有检索到数据",
							"sSearch": "搜索",
							"sInfo": "当前显示 _START_ 到 _END_ 条，共 _TOTAL_ 条记录",
							"sInfoEmtpy": "没有数据",
							"sProcessing": '<i class="fa fa-coffee"></i> 正在加载数据...',
							"oPaginate": {
								"sFirst": "首页",
								"sPrevious": "前一页",
								"sNext": "后一页",
								"sLast": "尾页"
							}
						}
					});

				$(document).on(
					'click',
					'th input:checkbox',
					function() {
						var that = this;
						$(this).closest('table').find(
							'tr > td:first-child input:checkbox').each(
							function() {
								this.checked = that.checked;
								$(this).closest('tr').toggleClass(
									'selected');
							});
					});

				$('[data-rel="tooltip"]').tooltip({
					placement: tooltip_placement
				});
				
				$('#id-input-file-2').ace_file_input({
					no_file:'点击此处...',
					btn_choose:'上传',
					btn_change:'重新上传',
					droppable:false,
					onchange:null,
					thumbnail:false //| true | large
					//whitelist:'gif|png|jpg|jpeg'
					//blacklist:'exe|php'
					//onchange:''
					//
				});

				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('table')
					var off1 = $parent.offset();
					var w1 = $parent.width();

					var off2 = $source.offset();
					//var w2 = $source.width();

					if(parseInt(off2.left) < parseInt(off1.left) +
						parseInt(w1 / 2))
						return 'right';
					return 'left';
				}

			})
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
		<!-- <script src="assets/js/atits-js/sys_task.js"></script> -->
	</body>

</html>