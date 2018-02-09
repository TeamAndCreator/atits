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
		<div id="main-container" class="main-container">
			<div class="main-content">
				<div class="page-content">
					<div class="page-content-area">
						<div class="row">
							<div class="col-xs-12">
								
								
								
								<div class="row">
								<div class="col-xs-12">
									<h3 class="header smaller lighter blue">jQuery dataTables</h3>
									<div class="table-header">Results for "Latest Registered
										Domains"</div>

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
													<th>Domain</th>
													<th>Price</th>
													<th class="hidden-480">Clicks</th>

													<th><i
														class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>
														Update</th>
													<th class="hidden-480">Status</th>

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
													<td class="text-right">$35</td>
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

													<td><a href="#">max.com</a></td>
													<td>$60</td>
													<td class="hidden-480">4,400</td>
													<td>Mar 11</td>

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

													<td><a href="#">best.com</a></td>
													<td>$75</td>
													<td class="hidden-480">6,500</td>
													<td>Apr 03</td>

													<td class="hidden-480"><span
														class="label label-sm label-inverse arrowed-in">Flagged</span>
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

												<tr>
													<td class="center"><label class="position-relative">
															<input type="checkbox" class="ace" /> <span class="lbl"></span>
													</label></td>

													<td><a href="#">pro.com</a></td>
													<td>$55</td>
													<td class="hidden-480">4,250</td>
													<td>Jan 21</td>

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

													<td><a href="#">team.com</a></td>
													<td>$40</td>
													<td class="hidden-480">3,200</td>
													<td>Feb 09</td>

													<td class="hidden-480"><span
														class="label label-sm label-inverse arrowed-in">Flagged</span>
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

												<tr>
													<td class="center"><label class="position-relative">
															<input type="checkbox" class="ace" /> <span class="lbl"></span>
													</label></td>

													<td><a href="#">up.com</a></td>
													<td>$95</td>
													<td class="hidden-480">8,520</td>
													<td>Feb 22</td>

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

												<tr>
													<td class="center"><label class="position-relative">
															<input type="checkbox" class="ace" /> <span class="lbl"></span>
													</label></td>

													<td><a href="#">view.com</a></td>
													<td>$45</td>
													<td class="hidden-480">4,100</td>
													<td>Mar 12</td>

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

													<td><a href="#">nice.com</a></td>
													<td>$38</td>
													<td class="hidden-480">3,940</td>
													<td>Feb 12</td>

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

												<tr>
													<td class="center"><label class="position-relative">
															<input type="checkbox" class="ace" /> <span class="lbl"></span>
													</label></td>

													<td><a href="#">fine.com</a></td>
													<td>$25</td>
													<td class="hidden-480">2,983</td>
													<td>Apr 01</td>

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

													<td><a href="#">good.com</a></td>
													<td>$50</td>
													<td class="hidden-480">6,500</td>
													<td>Feb 02</td>

													<td class="hidden-480"><span
														class="label label-sm label-inverse arrowed-in">Flagged</span>
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

												<tr>
													<td class="center"><label class="position-relative">
															<input type="checkbox" class="ace" /> <span class="lbl"></span>
													</label></td>

													<td><a href="#">great.com</a></td>
													<td>$55</td>
													<td class="hidden-480">6,400</td>
													<td>Feb 24</td>

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

													<td><a href="#">shine.com</a></td>
													<td>$25</td>
													<td class="hidden-480">2,200</td>
													<td>Apr 01</td>

													<td class="hidden-480"><span
														class="label label-sm label-inverse arrowed-in">Flagged</span>
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

												<tr>
													<td class="center"><label class="position-relative">
															<input type="checkbox" class="ace" /> <span class="lbl"></span>
													</label></td>

													<td><a href="#">rise.com</a></td>
													<td>$42</td>
													<td class="hidden-480">3,900</td>
													<td>Feb 01</td>

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

												<tr>
													<td class="center"><label class="position-relative">
															<input type="checkbox" class="ace" /> <span class="lbl"></span>
													</label></td>

													<td><a href="#">above.com</a></td>
													<td>$35</td>
													<td class="hidden-480">3,420</td>
													<td>Mar 12</td>

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

													<td><a href="#">share.com</a></td>
													<td>$30</td>
													<td class="hidden-480">3,200</td>
													<td>Feb 11</td>

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

												<tr>
													<td class="center"><label class="position-relative">
															<input type="checkbox" class="ace" /> <span class="lbl"></span>
													</label></td>

													<td><a href="#">fair.com</a></td>
													<td>$35</td>
													<td class="hidden-480">3,900</td>
													<td>Mar 26</td>

													<td class="hidden-480"><span
														class="label label-sm label-inverse arrowed-in">Flagged</span>
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

												<tr>
													<td class="center"><label class="position-relative">
															<input type="checkbox" class="ace" /> <span class="lbl"></span>
													</label></td>

													<td><a href="#">year.com</a></td>
													<td>$48</td>
													<td class="hidden-480">3,990</td>
													<td>Feb 15</td>

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

													<td><a href="#">day.com</a></td>
													<td>$55</td>
													<td class="hidden-480">5,600</td>
													<td>Jan 29</td>

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

												<tr>
													<td class="center"><label class="position-relative">
															<input type="checkbox" class="ace" /> <span class="lbl"></span>
													</label></td>

													<td><a href="#">light.com</a></td>
													<td>$40</td>
													<td class="hidden-480">3,100</td>
													<td>Feb 17</td>

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

													<td><a href="#">sight.com</a></td>
													<td>$58</td>
													<td class="hidden-480">6,100</td>
													<td>Feb 19</td>

													<td class="hidden-480"><span
														class="label label-sm label-inverse arrowed-in">Flagged</span>
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

												<tr>
													<td class="center"><label class="position-relative">
															<input type="checkbox" class="ace" /> <span class="lbl"></span>
													</label></td>

													<td><a href="#">right.com</a></td>
													<td>$50</td>
													<td class="hidden-480">4,400</td>
													<td>Apr 01</td>

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

							<div id="modal-table" class="modal fade" tabindex="-1">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header no-padding">
											<div class="table-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">
													<span class="white">&times;</span>
												</button>
												Results for "Latest Registered Domains
											</div>
										</div>

										<div class="modal-body no-padding">
											<table
												class="table table-striped table-bordered table-hover no-margin-bottom no-border-top">
												<thead>
													<tr>
														<th>Domain</th>
														<th>Price</th>
														<th>Clicks</th>

														<th><i class="ace-icon fa fa-clock-o bigger-110"></i>
															Update</th>
													</tr>
												</thead>

												<tbody>
													<tr>
														<td><a href="#">ace.com</a></td>
														<td>$45</td>
														<td>3,330</td>
														<td>Feb 12</td>
													</tr>

													<tr>
														<td><a href="#">base.com</a></td>
														<td>$35</td>
														<td>2,595</td>
														<td>Feb 18</td>
													</tr>

													<tr>
														<td><a href="#">max.com</a></td>
														<td>$60</td>
														<td>4,400</td>
														<td>Mar 11</td>
													</tr>

													<tr>
														<td><a href="#">best.com</a></td>
														<td>$75</td>
														<td>6,500</td>
														<td>Apr 03</td>
													</tr>

													<tr>
														<td><a href="#">pro.com</a></td>
														<td>$55</td>
														<td>4,250</td>
														<td>Jan 21</td>
													</tr>
												</tbody>
											</table>
										</div>

										<div class="modal-footer no-margin-top">
											<button class="btn btn-sm btn-danger pull-left"
												data-dismiss="modal">
												<i class="ace-icon fa fa-times"></i> Close
											</button>

											<ul class="pagination pull-right no-margin">
												<li class="prev disabled"><a href="#"> <i
														class="ace-icon fa fa-angle-double-left"></i>
												</a></li>

												<li class="active"><a href="#">1</a></li>

												<li><a href="#">2</a></li>

												<li><a href="#">3</a></li>

												<li class="next"><a href="#"> <i
														class="ace-icon fa fa-angle-double-right"></i>
												</a></li>
											</ul>
										</div>
									</div>
									<!-- /.modal-content -->
								</div>
								<!-- /.modal-dialog -->
							</div>
							<!-- PAGE CONTENT ENDS -->
		
		
		
		
		
		
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		
		
		<script type="text/javascript">
		window.jQuery
				|| document.write("<script src='assets/js/jquery.min.js'>"
						+ "<"+"/script>");
	</script>


	<script type="text/javascript">
		if ('ontouchstart' in document.documentElement)
			document
					.write("<script src='assets/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>
	<script src="assets/js/bootstrap.min.js"></script>


	<script src="assets/js/jquery.dataTables.min.js"></script>
	<script src="assets/js/jquery.dataTables.bootstrap.js"></script>
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>
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
				"aaSorting" : []
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
	</body>
</html>
