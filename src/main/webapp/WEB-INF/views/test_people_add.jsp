<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta charset="utf-8" />
	<title>外聘人员添加</title>
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
	<!--[Validator]-->
	<link rel="stylesheet"
		  href="assets/bootstrapvalidator/vendor/bootstrap/css/bootstrap.css"/>
	<link rel="stylesheet"
		  href="assets/bootstrapvalidator/dist/css/bootstrapValidator.css"/>

	<script type="text/javascript"
			src="assets/bootstrapvalidator/vendor/jquery/jquery-1.10.2.min.js"></script>
	<script type="text/javascript"
			src="assets/bootstrapvalidator/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript"
			src="assets/bootstrapvalidator/dist/js/bootstrapValidator.js"></script>

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

	<link rel="stylesheet" href="assets/css/ace-fonts.css" />
	<!-- ace styles -->
	<link rel="stylesheet" href="assets/css/ace.min.css" id="main-ace-style" />
	<!--[if lte IE 9]-->
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

				<li class="active">考评管理</a>
				</li>
				<li class="active">外聘人员添加</li>
			</ul>
			<!-- /.breadcrumb -->
		</div>

		<!-- /section:basics/content.breadcrumbs -->
		<div class="page-content">
			<div class="page-content-area">

				<div class="page-header">
					<h1>外聘人员添加</h1>
				</div>
				<!-- /.page-header -->
				<div class="row">
					<div class="col-xs-12">
						<!-- PAGE CONTENT BEGINS -->
						<form:form id="sample-form"
								   action="${pageContext.request.contextPath}/expert_save"
								   method="post"
								   class="form-horizontal" modelAttribute="expert">
							<fieldset>

								<!-- #section:elements.form.input-state -->
								<div class="form-group has-success">
									<label class="col-xs-12 col-sm-2 control-label no-padding-right">用户名</label>
									<div class="col-xs-12 col-sm-4">
												<span class="block input-icon input-icon-right"> <form:input
														type="text" class="width-100 form-control" path="userName"/>

										        </span>
									</div>
								</div>

								<div class="form-group has-success">
									<label class="col-xs-12 col-sm-2 control-label no-padding-right">密码</label>

									<div class="col-xs-12 col-sm-4">
												<span class="block input-icon input-icon-right"> <form:input
														type="text" class="width-100 form-control" path="password"/>
										</span>
									</div>
								</div>

								<div class="form-group has-success">
									<label class="col-xs-12 col-sm-2 control-label no-padding-right">确认密码</label>

									<div class="col-xs-12 col-sm-4">
												<span class="block input-icon input-icon-right"> <form:input
														type="text" class="width-100 form-control" path="confirmPassword"/>

										</span>
									</div>
								</div>


								<div class="form-group has-success">
									<label class="col-xs-12 col-sm-2 control-label no-padding-right">姓名</label>

									<div class="col-xs-12 col-sm-4">
												<span class="block input-icon input-icon-right"> <form:input
														type="text" class="width-100 form-control" path="name"/>

										</span>
									</div>
								</div>

								<div class="form-group">
									<label class="col-xs-12 col-sm-2 control-label no-padding-right">所属体系</label>
									<div class="col-xs-12 col-sm-4">
											<span class="block input-icon input-icon-right">
												<input type="text"  class="center form-control" disabled="true" value="${person.system.sysName}"/>
												<form:input
													type="hidden" class="width-100 form-control" path="system.id" value="${person.system.id}"/>
											</span>
									</div>
								</div>

								<div class="form-group has-success">
									<label class="col-xs-12 col-sm-2 control-label no-padding-right">工作单位</label>

									<div class="col-xs-12 col-sm-4">
											<span class="block input-icon input-icon-right"> <form:input
													type="text" class="width-100 form-control" path="department"/>
											</span>
									</div>
								</div>

								<div class="form-group has-success">
									<label class="col-xs-12 col-sm-2 control-label no-padding-right">手机号码</label>

									<div class="col-xs-12 col-sm-4">
												<span class="block input-icon input-icon-right"> <form:input
														type="text" class="width-100 form-control" path="phoneNumber"/>

										</span>
									</div>
								</div>

									<%--<div class="form-group has-success">--%>
									<%--<label class="col-xs-12 col-sm-2 control-label no-padding-right">办公室电话</label>--%>

									<%--<div class="col-xs-12 col-sm-4">--%>
									<%--<span class="block input-icon input-icon-right"> <form:input--%>
									<%--type="text" class="width-100 form-control" path="title"/>--%>
									<%----%>
									<%--</span>--%>
									<%--</div>--%>
									<%--</div>--%>

								<div class="form-group has-success">
									<label class="col-xs-12 col-sm-2 control-label no-padding-right">电子邮箱</label>

									<div class="col-xs-12 col-sm-4">
												<span class="block input-icon input-icon-right"> <form:input
														type="text" class="width-100 form-control" path="email"/>

										</span>
									</div>
								</div>

								<div class="form-group has-success">
									<label class="col-xs-12 col-sm-2 control-label no-padding-right">类型</label>
									<div class="col-xs-12 col-sm-4">
										<label>&nbsp;&nbsp;&nbsp;
											<input name="post" class="ace" value="农委" type="radio">
											<span class="lbl">农委</span>
										</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>
										<input name="post" class="ace" value="外聘专家" type="radio">
										<span class="lbl">外聘专家</span>
									</label>
									</div>
								</div>

								<div class="clearfix form-actions">
									<div class="col-md-offset-1 col-md-9">
										<button class="btn btn-info" type="submit" id="add">
											<i class="ace-icon fa fa-check bigger-110"></i>提交
										</button> &nbsp; &nbsp; &nbsp;
										<button class="btn" type="reset">
											<i class="ace-icon fa fa-undo bigger-110"></i> 重置
										</button>
									</div>
								</div>
							</fieldset>
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
<script src="assets/js/bootbox.min.js"></script>

<!-- ace scripts -->
<script src="assets/js/ace-elements.min.js"></script>
<script src="assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->

<script type="text/javascript">
    $(document)
        .ready(
            function() {
                $('#sample-form')
                    .bootstrapValidator({
                        message: 'This value is not valid',
                        feedbackIcons: {
                            valid: 'glyphicon glyphicon-ok',
                            invalid: 'glyphicon glyphicon-remove',
                            validating: 'glyphicon glyphicon-refresh'
                        },
                        fields: {
                            userName: {
                                message: 'The username is not valid',
                                validators: {
                                    notEmpty: {
                                        message: '用户名不能为空'
                                    },
                                    stringLength: {
                                        min: 6,
                                        max: 30,
                                        message: '用户名为6-30为字符，可由英文、数字组成'
                                    },
                                    threshold :  6 , //有6字符以上才发送ajax请求，（input中输入一个字符，插件会向服务器发送一次，设置限制，6字符以上才开始）
                                    remote: {//ajax验证。server result:{"valid",true or false} 向服务发送当前input name值，获得一个json数据。例表示正确：{"valid",true}
                                        url: 'checkNameExists',
                                        message: '用户名已存在！',//提示消息
                                        delay :  2000,//每输入一个字符，就发ajax请求，服务器压力还是太大，设置2秒发送一次ajax（默认输入一个字符，提交一次，服务器压力太大）
                                        type: 'POST'//请求方式
                                        /**自定义提交数据，默认值提交当前input value
                                         *  data: function(validator) {
                               return {
                                   password: $('[name="passwordNameAttributeInYourForm"]').val(),
                                   whatever: $('[name="whateverNameAttributeInYourForm"]').val()
                               };
                            }
                                         */
                                    },
                                    regexp: {
                                        regexp: /^[a-zA-Z0-9_\.]+$/,
                                        message: '不可输入除英文、数字、圆点和下划线以外字符！'
                                    }
                                }
                            },
                            name: {
                                validators: {
                                    notEmpty: {
                                        message: '请输入您的真实姓名'
                                    }
                                }
                            },
                            phoneNumber: {
                                validators: {
                                    notEmpty: {
                                        message: '请输入您的手机号码'
                                    },
//                                        stringLength: {
//                                            min: 11,
//                                            max: 11,
//                                            message: '请输入11位手机号码'
//                                        },
                                    regexp: {
                                        regexp: /^1[3|4|5|7|8][0-9]{9}$/,
                                        message: '对不起，您输入的手机号码有错误 '
                                    }
                                }
                            },
                            department: {
                                validators: {
                                    notEmpty: {
                                        message: '请输入您的工作单位'
                                    }
                                }
                            },
                            email: {
                                validators: {
                                    notEmpty: {
                                        message: '请输入您的个人电子邮箱'
                                    },
                                    emailAddress: {
                                        message: '请输入正确的邮件地址如：123@163.com'
                                    }
                                }
                            },
                            password: {
                                message:'密码无效',
                                validators: {
                                    notEmpty: {
                                        message: '密码不能为空'
                                    },
                                    stringLength: {
                                        min: 6,
                                        max: 30,
                                        message: '密码为6-30为字符，可由英文、数字、圆点和下划线组成'
                                    },
                                    regexp: {
                                        regexp: /^[a-zA-Z0-9_\.]+$/,
                                        message: '不可输入除英文、数字、圆点和下划线以外字符'
                                    }
                                }
                            },
                            confirmPassword: {
                                message:'密码无效',
                                validators: {
                                    notEmpty: {
                                        message: '请再次输入密码'
                                    }, stringLength: {
                                        min: 6,
                                        max: 30,
                                        message: '密码为6-30为字符，可由英文、数字、圆点和下划线组成'
                                    },
                                    identical: {
                                        field: 'password',
                                        message: '两次输入的密码不一致'
                                    },
                                    regexp: {
                                        regexp: /^[a-zA-Z0-9_\.]+$/,
                                        message: '不可输入除英文、数字、圆点和下划线以外字符'
                                    }
                                }
                            },
                            post: {
                                validators: {
                                    notEmpty: {
                                        message: '必须选择其中一项！'
                                    }
                                }
                            }
                        }
                    });
            });
</script>
<!-- the following scripts are used in demo only for onpage help and you don't need them -->
<link rel="stylesheet" href="assets/css/ace.onpage-help.css"/>
<link rel="stylesheet" href="docs/assets/js/themes/sunburst.css"/>

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
<script src="assets/js/atits-js/test_people_add.js"></script>
<!-- ace scripts -->
</body>
</html>