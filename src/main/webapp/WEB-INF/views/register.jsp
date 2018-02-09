<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>用户注册</title>

    <meta name="description" content="Common form elements and layouts"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="assets/css/font-awesome.min.css"/>

    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="assets/css/jquery-ui.custom.min.css"/>
    <link rel="stylesheet" href="assets/css/chosen.css"/>
    <link rel="stylesheet" href="assets/css/datepicker.css"/>
    <link rel="stylesheet" href="assets/css/bootstrap-timepicker.css"/>
    <link rel="stylesheet" href="assets/css/daterangepicker.css"/>
    <link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.css"/>
    <link rel="stylesheet" href="assets/css/colorpicker.css"/>
    <link rel="stylesheet" href="assets/css/bootstrap-select.min.css"/>


    <!-- text fonts -->
    <link rel="stylesheet" href="assets/css/ace-fonts.css"/>

    <!-- ace styles -->
    <link rel="stylesheet" href="assets/css/ace.min.css" id="main-ace-style"/>

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="assets/css/ace-part2.min.css"/>
    <![endif]-->
    <link rel="stylesheet" href="assets/css/ace-skins.min.css"/>
    <link rel="stylesheet" href="assets/css/ace-rtl.min.css"/>


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
    <link rel="stylesheet" href="assets/css/ace-ie.min.css"/>
    <![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->
    <script src="assets/js/ace-extra.min.js"></script>
    <link rel="stylesheet" href="assets/css/atits-css/register.css"/>
    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

    <!--[if lte IE 8]>
    <script src="assets/js/html5shiv.min.js"></script>
    <script src="assets/js/respond.min.js"></script>
    <![endif]-->
</head>

<body class="no-skin"
      style="background-image: url(assets/images/register.jpg)">
<div class="row">
    <div class="col-xs-12">
        <div class="page-header header">
            <h1 class="col-sm-10">新用户注册</h1>
            <h4 class="backlogin">
                <i class="ace-icon fa fa-users blue"></i> 已有用户？ <a class="pink"
                                                                   id="open-event" href="to_login"
                                                                   title="move down on show"> 请登录
                <i class="ace-icon fa fa-hand-o-right"></i>
            </a>
            </h4>

        </div>
        <!-- /.page-header -->
    </div>
</div>


<div class="row">
    <div class="col-xs-12">
        <!-- PAGE CONTENT BEGINS -->

        <form:form id="defaultForm" method="post" action="register"
                   class="form-horizontal" modelAttribute="person">
            <fieldset>


                <div class="form-group">
                    <label class="col-lg-2 control-label">用户名</label>
                    <div class="col-lg-3">
                        <form:input type="text" class="form-control" path="userName"/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-2 control-label">设置密码</label>
                    <div class="col-lg-3">
                        <form:input type="password" class="form-control" path="password"/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-2 control-label">请再次输入密码</label>
                    <div class="col-lg-3">
                        <form:input type="password" class="form-control"
                                    path="confirmPassword"/>
                    </div>
                </div>


                <div class="form-group">
                    <label class="col-lg-2 control-label">姓名</label>
                    <div class="col-lg-3">
                        <form:input type="text" class="form-control" path="name"/>
                    </div>
                </div>


                <div class="form-group">
                    <label class="col-lg-2 control-label">手机号码</label>
                    <div class="col-lg-3">
                        <form:input type="text" class="form-control input-mask-mobile"
                                    path="phoneNumber"/>
                    </div>
                </div>


                <div class="form-group">
                    <label class="col-lg-2 control-label">办公室电话</label>
                    <div class="col-lg-3">
                        <form:input type="text" class="form-control input-mask-phone"
                                    path="offcePhone"/>
                    </div>
                </div>


                <div class="form-group">
                    <label class="col-lg-2 control-label">电子邮箱</label>
                    <div class="col-lg-3">
                        <form:input type="text" class="form-control" path="email" field=""/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-2 control-label">工作单位</label>
                    <div class="col-lg-3">
                        <form:input type="text" class="form-control" path="department"/>
                    </div>
                </div>


                <div class="form-group">
                    <label class="col-lg-2 control-label">所属体系名称</label>
                    <div class="col-lg-3">
                        <form:select class="form-control system" path="system.id">
                            <form:option value="0">-- 请选择... --</form:option>
                            <form:options class="sysName" items="${system}"
                                          itemLabel="sysName" itemValue="id"/>
                        </form:select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-2 control-label">岗位</label>

                    <div class="col-lg-3">&nbsp; &nbsp;
                        <input  class="ace role" name="job"
                               value="岗位专家" type="radio">
                        <span class="lbl bigger-120">岗位专家</span>&nbsp; &nbsp;&nbsp; &nbsp;
                        <input  class="ace role"
                               value="综合试验站站长" type="radio" name="job">
                        <span class="lbl bigger-120">综合试验站站长</span>

                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-2 control-label">功能研究室名称</label>
                    <div class="col-lg-3">
                        <form:select class="form-control laborStation" path="laboratory.id" id="laboratory">
                            <form:option value="0">-- 请选择... --</form:option>
                        </form:select>
                    </div>
                </div>

                <div class="form-group" id="laboratory">
                    <label class="col-lg-2 control-label">综合试验站名称</label>
                    <div class="col-lg-3">
                        <form:select class="form-control laborStation" path="station.id" id="station">
                            <form:option value="0">-- 请选择... --</form:option>
                        </form:select>
                    </div>
                </div>

                <form:input type='hidden' path='time' id='time'/>
                <form:input type='hidden' path='id' value="0"/>
                <form:input type="hidden" path='state' value='0'/>
                <form:input type="hidden" path='permission' value='3'/>


                <div class="form-group">
                    <div class="col-lg-3 col-lg-offset-2">
                        <div class="checkbox">
                            <input type="checkbox" name="acceptTerms"/> <span
                                class="lbl xieyi"> 阅读并同意 <a href="#">《用户注册协议》</a>
								</span>
                        </div>
                    </div>
                </div>
            </fieldset>


            <div class="form-group">
                <div class="col-lg-9 col-lg-offset-3">
                    <form:button class="btn btn-primary" type="reset">
                        <i class="ace-icon fa fa-undo bigger-110"></i> 重置
                    </form:button>
                    &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                    <form:button type="submit" class="btn btn-primary">立即注册</form:button>

                </div>
            </div>
        </form:form>


    </div>
    <!-- /.col -->
</div>
<!-- /.row -->
<!-- /.page-content-area -->
<!-- /.page-content -->
<!-- /.main-content -->

<div class="footer">
    <div class="footer-inner">
        <!-- #section:basics/footer -->
        <div class="footer-content foot">
				<span class="bigger-120"> <span class="blue bolder">安徽农业大学数字农业研究所</span>
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

<!--[if lte IE 8]>
<script src="assets/js/excanvas.min.js"></script>
<![endif]-->
<script src="assets/js/jquery-ui.custom.min.js"></script>
<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
<script src="assets/js/chosen.jquery.min.js"></script>
<script src="assets/js/fuelux/fuelux.spinner.min.js"></script>
<script src="assets/js/date-time/bootstrap-datepicker.min.js"></script>
<script src="assets/js/date-time/bootstrap-timepicker.min.js"></script>
<script src="assets/js/date-time/moment.min.js"></script>
<script src="assets/js/date-time/daterangepicker.min.js"></script>
<script src="assets/js/date-time/bootstrap-datetimepicker.min.js"></script>
<script src="assets/js/bootstrap-colorpicker.min.js"></script>
<script src="assets/js/jquery.knob.min.js"></script>
<script src="assets/js/jquery.autosize.min.js"></script>
<script src="assets/js/jquery.inputlimiter.1.3.1.min.js"></script>
<script src="assets/js/jquery.maskedinput.min.js"></script>
<script src="assets/js/bootstrap-tag.min.js"></script>
<script src="assets/js/bootstrap-select.min.js"></script>
<%--<script src="assets/js/i18n/defaults-*.min.js"></script>--%>

<script src="assets/js/typeahead.jquery.min.js"></script>

<!-- ace scripts -->
<script src="assets/js/ace-elements.min.js"></script>
<script src="assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->


<script type="text/javascript">
    jQuery(function ($) {
        $("#system").change(function () {
            $("input[name=job]").attr('checked',false);
            $("#laboratory").empty();
            $("#laboratory").append("<option value='0'>--请选择--</option>");
            $("#station").empty();
            $("#station").append("<option value='0'>--请选择--</option>");
        });


        $(".role").change(function () {
            $("#laboratory").empty();
            $("#laboratory").append("<option value='0'>--请选择--</option>");
            $("#station").empty();
            $("#station").append("<option value='0'>--请选择--</option>");
            var sysId = $(".system").val();
            if ($(this).val() == "岗位专家") {
                $("#laboratory").removeAttr("disabled");
                $("#station").attr("disabled", "true");
                getLaboratory(sysId);
            }
            if ($(this).val() == "综合试验站站长") {
                $("#station").removeAttr("disabled");
                $("#laboratory").attr("disabled", "true");
                if (sysId == 0) {
                    alert("请选择所属体系名称");
                    return false;
                }
                getStation(sysId);
            }

        });

        function getLaboratory(sysId) {
            $.ajax({
                url: "laboratory_ajax",
                data: {
                    sysId: sysId
                },
                type: "GET",
                success: function (result) {
                    laboratorys = $.parseJSON(result);
                    $.each(laboratorys, function (index, laboratory) {
                        var optionEle = $("<option></option>").append(laboratory.labName).attr("value", laboratory.id);
                        optionEle.appendTo("#laboratory");
                    });
                }
            });
        }

        function getStation(sysId) {

            $.ajax({
                url: "station_ajax",
                data: {
                    sysId: sysId
                },
                type: "GET",
                success: function (result) {
                    stations = $.parseJSON(result);
                    $.each(stations, function (index, station) {
                        var optionEle = $("<option></option>").append(station.staName).attr("value", station.id);
                        optionEle.appendTo("#station");
                    });
                }
            });
        }

//

    });
</script>


<script type="text/javascript">
    $(document)
        .ready(
            function () {
                $('#defaultForm')
                    .bootstrapValidator(
                        {
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
                                        regexp: {
                                            regexp: /^[a-zA-Z0-9_\.]+$/,
                                            message: '不可输入除英文、数字以外字符！'
                                        }
                                    }
                                },
                                organization: {
                                    validators: {
                                        notEmpty: {
                                            message: 'The organization is required and can\'t be empty'
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
                                        regexp: {
                                            regexp: /^1[3|4|5|7|8][0-9]{9}$/,
                                            message: '对不起，您输入的手机号码有错误 '
                                        }
                                    }
                                },
                                offcePhone: {
                                    validators: {
                                        notEmpty: {
                                            message: '请输入您的办公室电话号码'
                                        },
                                        regexp: {
                                            regexp: /^((0\d{2,3}-\d{7,8})|(1[3584]\d{9}))$/,
                                            message: '对不起，您输入的电话号码有错误。区号和电话号码之间请用-分割'
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
                                            message: '请输入正确格式的邮箱地址'
                                        }
                                    }
                                },
                                acceptTerms: {
                                    validators: {
                                        notEmpty: {
                                            message: '请同意用户注册协议'
                                        }
                                    }
                                },

                                password: {
                                    validators: {
                                        notEmpty: {
                                            message: '密码不能为空'
                                        },

                                        stringLength: {
                                            min: 6,
                                            max: 30,
                                            message: '密码为6-30为字符，可由英文、数字组成'
                                        },
                                        regexp: {
                                            regexp: /^[a-zA-Z0-9_\.]+$/,
                                            message: '不可输入除英文、数字以外字符！'
                                        }
                                    }
                                },
                                confirmPassword: {
                                    validators: {
                                        notEmpty: {
                                            message: '请再次输入密码'
                                        }, stringLength: {
                                            min: 6,
                                            max: 30,
                                            message: '密码为6-30为字符，可由英文、数字组成'
                                        },
                                        identical: {
                                            field: 'password',
                                            message: '两次输入的密码不一致'
                                        }
                                    }
                                },
                                job: {
                                    validators: {
                                        notEmpty: {
                                            message: '必须选择一个岗位'
                                        }
                                    }
                                },
                                'system.id': {
                                    validators: {

                                        callback: {
                                            message: '必须选择一个体系名称',
                                            callback: function (value, validator) {
                                                if (value == 0) {
                                                    return false;
                                                } else {
                                                    return true;
                                                }
                                            }
                                        }
                                    }
                                },


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
</body>
</html>
