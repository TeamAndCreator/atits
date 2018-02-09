<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title></title>

<meta name="description" content="Static &amp; Dynamic Tables" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

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

<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
</head>

<body class="no-skin">
	
	<div class="main-container" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.check('main-container', 'fixed')
			} catch (e) {
			}
		</script>

		
		<div class="main-content">
			
			<div class="page-content">

				<!-- /section:settings.box -->
				<div class="page-content-area">
					<div class="page-header">
						<h1>
							研究进展 
						</h1>
					</div>
					<!-- /.page-header -->
							<!-- PAGE CONTENT BEGINS -->
							<div class="row">
								<div class="col-xs-12">
									<h3 class="header smaller lighter blue center">进展情况</h3>
									<div class="table-header hidden">"</div>

									<!-- <div class="table-responsive"> -->

									<!-- <div class="dataTables_borderWrap"> -->
									<div>
										<table id="sample-table-2"
											class="table table-striped table-bordered table-hover">
											<thead>
												<tr>
													<th class="center"><label class="position-relative">
															<input type="checkbox" class="ace" /> <span class="lbl"></span>
													</label></th>
													<th>任务编号</th>
													<th>进展标题</th>
													<th class="hidden-480">发布人</th>

													<th><i
														class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>
														时间</th>
													<th class="hidden-480">审核状态</th>

													<th></th>
												</tr>
											</thead>

											<tbody>
												<tr>
													<td class="center"><label class="position-relative">
															<input type="checkbox" class="ace" /> <span class="lbl"></span>
													</label></td>

													<td><a href="#">app.com</a></td>
													<td>$45</td>
													<td class="hidden-480">3,330</td>
													<td>Feb 12</td>

													<td class="hidden-480"><span
														class="label label-sm label-warning">Expiring</span></td>

													<td>
														<div class="hidden-sm hidden-xs action-buttons">
															<a class="blue" href="#"> <i
																class="ace-icon fa fa-search-plus bigger-130"></i>
															</a> <a class="green" href="#"> <i
																class="ace-icon fa fa-pencil bigger-130"></i>
															</a> <a class="red" href="#"> <i
																class="ace-icon fa fa-trash-o bigger-130"></i>
															</a>
														</div>

														<div class="hidden-md hidden-lg">
															<div class="inline position-relative">
																<button
																	class="btn btn-minier btn-yellow dropdown-toggle"
																	data-toggle="dropdown" data-position="auto">
																	<i
																		class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																</button>

																<ul
																	class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																	<li><a href="#" class="tooltip-info"
																		data-rel="tooltip" title="View"> <span
																			class="blue"> <i
																				class="ace-icon fa fa-search-plus bigger-120"></i>
																		</span>
																	</a></li>

																	<li><a href="#" class="tooltip-success"
																		data-rel="tooltip" title="Edit"> <span
																			class="green"> <i
																				class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																		</span>
																	</a></li>

																	<li><a href="#" class="tooltip-error"
																		data-rel="tooltip" title="Delete"> <span
																			class="red"> <i
																				class="ace-icon fa fa-trash-o bigger-120"></i>
																		</span>
																	</a></li>
																</ul>
															</div>
														</div>
													</td>
												</tr>

												<tr>
													<td class="center"><label class="position-relative">
															<input type="checkbox" class="ace" /> <span class="lbl"></span>
													</label></td>

													<td><a href="#">base.com</a></td>
													<td>$35</td>
													<td class="hidden-480">2,595</td>
													<td>Feb 18</td>

													<td class="hidden-480"><span
														class="label label-sm label-success">Registered</span></td>

													<td>
														<div class="hidden-sm hidden-xs action-buttons">
															<a class="blue" href="#"> <i
																class="ace-icon fa fa-search-plus bigger-130"></i>
															</a> <a class="green" href="#"> <i
																class="ace-icon fa fa-pencil bigger-130"></i>
															</a> <a class="red" href="#"> <i
																class="ace-icon fa fa-trash-o bigger-130"></i>
															</a>
														</div>

														<div class="hidden-md hidden-lg">
															<div class="inline position-relative">
																<button
																	class="btn btn-minier btn-yellow dropdown-toggle"
																	data-toggle="dropdown" data-position="auto">
																	<i
																		class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																</button>

																<ul
																	class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																	<li><a href="#" class="tooltip-info"
																		data-rel="tooltip" title="View"> <span
																			class="blue"> <i
																				class="ace-icon fa fa-search-plus bigger-120"></i>
																		</span>
																	</a></li>

																	<li><a href="#" class="tooltip-success"
																		data-rel="tooltip" title="Edit"> <span
																			class="green"> <i
																				class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																		</span>
																	</a></li>

																	<li><a href="#" class="tooltip-error"
																		data-rel="tooltip" title="Delete"> <span
																			class="red"> <i
																				class="ace-icon fa fa-trash-o bigger-120"></i>
																		</span>
																	</a></li>
																</ul>
															</div>
														</div>
													</td>
												</tr>

												<tr>
													<td class="center"><label class="position-relative">
															<input type="checkbox" class="ace" /> <span class="lbl"></span>
													</label></td>

													<td><a href="#">once.com</a></td>
													<td>$20</td>
													<td class="hidden-480">1,400</td>
													<td>Apr 04</td>

													<td class="hidden-480"><span
														class="label label-sm label-info arrowed arrowed-righ">Sold</span>
													</td>

													<td>
														<div class="hidden-sm hidden-xs action-buttons">
															<a class="blue" href="#"> <i
																class="ace-icon fa fa-search-plus bigger-130"></i>
															</a> <a class="green" href="#"> <i
																class="ace-icon fa fa-pencil bigger-130"></i>
															</a> <a class="red" href="#"> <i
																class="ace-icon fa fa-trash-o bigger-130"></i>
															</a>
														</div>

														<div class="hidden-md hidden-lg">
															<div class="inline position-relative">
																<button
																	class="btn btn-minier btn-yellow dropdown-toggle"
																	data-toggle="dropdown" data-position="auto">
																	<i
																		class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																</button>

																<ul
																	class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																	<li><a href="#" class="tooltip-info"
																		data-rel="tooltip" title="View"> <span
																			class="blue"> <i
																				class="ace-icon fa fa-search-plus bigger-120"></i>
																		</span>
																	</a></li>

																	<li><a href="#" class="tooltip-success"
																		data-rel="tooltip" title="Edit"> <span
																			class="green"> <i
																				class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																		</span>
																	</a></li>

																	<li><a href="#" class="tooltip-error"
																		data-rel="tooltip" title="Delete"> <span
																			class="red"> <i
																				class="ace-icon fa fa-trash-o bigger-120"></i>
																		</span>
																	</a></li>
																</ul>
															</div>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>

							
							<!-- PAGE CONTENT ENDS -->
						
					
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
					<span class="bigger-120"> <span class="blue bolder">Ace</span>
						Application &copy; 2013-2014
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
				bAutoWidth : false,
				"aoColumns" : [ {
					"bSortable" : false
				}, null, null, null, null, null, {
					"bSortable" : false
				} ],
				"aaSorting" : [],

				
				"searching" : true,// 搜索
				"bPaginate" : true,//显示（使用）分页器
				"pagingType" : "full_numbers",//分页样式的类型
				"oLanguage" : {//语言设置  
					"sLengthMenu" : "每页显示 _MENU_ 条记录",
					"sZeroRecords" : "没有检索到数据",
					"sSearch" : "搜索",
					"sInfo" : "当前显示 _START_ 到 _END_ 条，共 _TOTAL_ 条记录",
					"sInfoEmtpy" : "没有数据",
					"sProcessing" : '<i class="fa fa-coffee"></i> 正在加载数据...',
					"oPaginate" : {
						"sFirst" : "首页",
						"sPrevious" : "前一页",
						"sNext" : "后一页",
						"sLast" : "尾页"
					}
				}
			//,
			//"sScrollY": "200px",
			//"bPaginate": false,

			//"sScrollX": "100%",
			//"sScrollXInner": "120%",
			//"bScrollCollapse": true,
			//Note: if you are applying horizontal scrolling (sScrollX) on a ".table-bordered"
			//you may want to wrap the table inside a "div.dataTables_borderWrap" element

			//"iDisplayLength": 50
			});
			/**
			var tableTools = new $.fn.dataTable.TableTools( oTable1, {
				"sSwfPath": "copy_csv_xls_pdf.swf",
			    "buttons": [
			        "copy",
			        "csv",
			        "xls",
					"pdf",
			        "print"
			    ]
			} );
			$( tableTools.fnContainer() ).insertBefore('#sample-table-2');
			 */

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
				placement : tooltip_placement
			});
			function tooltip_placement(context, source) {
				var $source = $(source);
				var $parent = $source.closest('table')
				var off1 = $parent.offset();
				var w1 = $parent.width();

				var off2 = $source.offset();
				//var w2 = $source.width();

				if (parseInt(off2.left) < parseInt(off1.left)
						+ parseInt(w1 / 2))
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
	<script src="assets/js/tabledevice.js"></script>
</body>
</html>

