<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>个人详情展示</title>

    <meta name="description" content="3 styles with inline editable feature"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css"/>

    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jquery-ui.custom.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jquery.gritter.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/select2.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/datepicker.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap-editable.css"/>

    <!-- text fonts -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-fonts.css"/>

    <!-- ace styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.min.css" id="main-ace-style"/>

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-part2.min.css"/>
    <![endif]-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-skins.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-rtl.min.css"/>

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-ie.min.css"/>
    <![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->
    <script src="${pageContext.request.contextPath}/assets/js/ace-extra.min.js"></script>

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

    <!--[if lte IE 8]>
    <script src="${pageContext.request.contextPath}/assets/js/html5shiv.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/respond.min.js"></script>
    <![endif]-->
</head>

<body class="no-skin">
<!-- #section:basics/navbar.layout -->


<!-- /section:basics/navbar.layout -->
<div class="main-container " id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.check('main-container', 'fixed')
        } catch (e) {
        }
    </script>

    <!-- #section:basics/sidebar -->


    <!-- /section:basics/sidebar -->
    <div class="main-content" >
        <!-- #section:basics/content.breadcrumbs -->


        <!-- /section:basics/content.breadcrumbs -->
        <div class="page-content" >
            <!-- #section:settings.box -->

            <!-- /.ace-settings-container -->

            <!-- /section:settings.box -->
            <div class="page-content-area" >
                <div class="page-header  " >
                    <h1>个人简介</h1>
                </div>
                <!-- /.page-header -->

                <div class="row">


                    <div class="col-xs-12">
                        <ul class="pager">
                            <li class="previous bigger-120">
                                <a href="javascript:history.back()"><i class="ace-icon fa fa-arrow-left"></i> 返回</a>
                            </li>&nbsp;&nbsp;

                            <li class="previous bigger-120">
                                <a href="person_setting?id=${personal.id}"><i class="ace-icon fa fa-pencil"></i> 修改</a>
                            </li>
                        </ul>
                        <!-- PAGE CONTENT BEGINS -->
                        <div>
                            <div id="user-profile-1" class="user-profile row">
                                <div class="col-xs-12 col-sm-3 center">
                                    <div>
                                        <!-- #section:pages/profile.picture -->
                                        <span class="profile-picture"> <img id="avatar"
                                                                            class="editable img-responsive"
                                                                            alt="Alex's Avatar"
                                                                            src="${pageContext.request.contextPath}/assets/avatars/profile-pic.jpg"/>
											</span>

                                        <!-- /section:pages/profile.picture -->
                                        <div class="space-4"></div>

                                        <div
                                                class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
                                            <div class="inline position-relative">
                                                <a href="#" class="user-title-label dropdown-toggle"
                                                   data-toggle="dropdown"> <i
                                                        class="ace-icon fa fa-circle light-green"></i> &nbsp; <span
                                                        class="white">${personal.name}</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="space-6"></div>

                                    <!-- #section:pages/profile.contact -->
                                    <div class="profile-contact-info">
                                        <div class="profile-contact-links align-left">

                                            <a href="#" class="btn btn-link"> <i
                                                    class="ace-icon fa fa-envelope bigger-120 pink"></i>${personal.email}
                                            </a> <a href="#" class="btn btn-link"> <i
                                                class="ace-icon fa fa-globe bigger-125 blue"></i>
                                            ${personal.phoneNumber}
                                        </a>
                                        </div>

                                        <div class="space-6"></div>


                                    </div>

                                    <!-- /section:pages/profile.contact -->


                                    <!-- #section:custom/extra.grid -->


                                    <!-- /section:custom/extra.grid -->
                                    <div class="hr hr16 dotted"></div>
                                </div>
                                <div class="col-xs-12 col-sm-5">
                                    <div class="space-12"></div>

                                    <!-- #section:pages/profile.info -->
                                    <div class="profile-user-info profile-user-info-striped">
                                        <div class="profile-info-row">
                                            <div class="profile-info-name">姓名</div>

                                            <div class="profile-info-value">
                                                <span class="editable" id="username">${personal.name}</span>
                                            </div>
                                        </div>

                                        <div class="profile-info-row">
                                            <div class="profile-info-name">性别</div>

                                            <div class="profile-info-value">
                                                    <span class="editable" id="sex">
                                                        <c:if test="${personal.profile.sex != '0' }">
                                                            ${personal.profile.sex}
                                                        </c:if>
                                                    </span>
                                            </div>
                                        </div>

                                        <div class="profile-info-row">
                                            <div class="profile-info-name">民族</div>

                                            <div class="profile-info-value">
                                                <span class="editable" id="nation">${personal.profile.nation}</span>
                                            </div>
                                        </div>


                                        <div class="profile-info-row">
                                            <div class="profile-info-name">出生日期</div>

                                            <div class="profile-info-value">
                                                <span class="editable" id="signup">${personal.profile.birthdate}</span>
                                            </div>
                                        </div>


                                        <div class="profile-info-row">
                                            <div class="profile-info-name">通讯地址</div>

                                            <div class="profile-info-value">
                                                <i class="fa fa-map-marker light-orange bigger-110"></i> <span
                                                    class="editable" id="address">${personal.profile.address}</span>
                                            </div>
                                        </div>


                                        <div class="profile-info-row">
                                            <div class="profile-info-name">学位</div>

                                            <div class="profile-info-value">
                                                <span class="editable" id="degree">
                                                    <c:if test="${personal.profile.degree != '0'}">
                                                    ${personal.profile.degree}</c:if>
                                                </span>
                                            </div>
                                        </div>


                                        <div class="profile-info-row">
                                            <div class="profile-info-name">毕业学校</div>

                                            <div class="profile-info-value">
                                                <span class="editable"
                                                      id="school">${personal.profile.graduateInstitutions}</span>
                                            </div>
                                        </div>

                                        <div class="profile-info-row">
                                            <div class="profile-info-name">毕业时间</div>

                                            <div class="profile-info-value">
                                                <span class="editable"
                                                      id="graduation_date">${personal.profile.graduationDate}</span>
                                            </div>
                                        </div>

                                        <div class="profile-info-row">
                                            <div class="profile-info-name">所学专业</div>

                                            <div class="profile-info-value">
                                                <span class="editable" id="major">${personal.profile.major}</span>
                                            </div>
                                        </div>

                                        <div class="profile-info-row">
                                            <div class="profile-info-name">从事专业</div>

                                            <div class="profile-info-value">
                                                <span class="editable"
                                                      id="professial">${personal.profile.undertake}</span>
                                            </div>
                                        </div>

                                        <div class="profile-info-row">
                                            <div class="profile-info-name">行政职务</div>

                                            <div class="profile-info-value">
                                                <span class="editable"
                                                      id="administrative">${personal.profile.administrativeFunction}</span>
                                            </div>
                                        </div>

                                        <div class="profile-info-row">
                                            <div class="profile-info-name">岗位</div>

                                            <div class="profile-info-value">
                                                <span class="editable" id="title">${personal.job}</span>
                                            </div>
                                        </div>

                                        <div class="profile-info-row">
                                            <div class="profile-info-name">专业特长</div>

                                            <div class="profile-info-value">
                                                <span class="editable"
                                                      id="expertise">${personal.profile.professionalExpertise}</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="space-20"></div>

                                </div>
                                <div class="col-xs-12 col-sm-4">
                                    <div class="space-12"></div>

                                    <!-- #section:pages/profile.info -->
                                    <div class="profile-user-info profile-user-info-striped">
                                        <div class="profile-info-row">
                                            <div class="profile-info-name">账号</div>
                                            <div class="profile-info-value">
                                                <span class="editable" id="account">${personal.userName}</span>
                                            </div>
                                        </div>


                                        <div class="profile-info-row">
                                            <div class="profile-info-name">密码</div>

                                            <div class="profile-info-value">
                                                <span class="editable" id="password">${personal.password}</span>
                                            </div>
                                        </div>

                                        <div class="profile-info-row">
                                            <div class="profile-info-name">工作单位</div>

                                            <div class="profile-info-value">
                                                <span class="editable" id="work_unit">${personal.department}</span>
                                            </div>
                                        </div>

                                        <div class="profile-info-row">
                                            <div class="profile-info-name">手机号</div>

                                            <div class="profile-info-value">
                                                <span class="editable" id="phone">${personal.phoneNumber}</span>
                                            </div>
                                        </div>

                                        <div class="profile-info-row">
                                            <div class="profile-info-name">办公室电话</div>

                                            <div class="profile-info-value">
                                                <span class="editable" id="telephone">${personal.offcePhone}</span>
                                            </div>
                                        </div>


                                        <div class="profile-info-row">
                                            <div class="profile-info-name">电子邮箱</div>

                                            <div class="profile-info-value">
                                                <span class="editable" id="email">${personal.email}</span>
                                            </div>
                                        </div>
                                        <c:if test="${personal.permission!=1}">
                                            <div class="profile-info-row">
                                                <div class="profile-info-name">所属体系名称</div>

                                                <div class="profile-info-value">
                                                    <span class="editable"
                                                          id="tixi_name">${personal.system.sysName}</span>
                                                </div>
                                            </div>
                                        </c:if>


                                        <div class="profile-info-row">
                                            <div class="profile-info-name">政治面貌</div>

                                            <div class="profile-info-value">
                                                <span class="editable"
                                                      id="political">
                                                    <c:if test="${personal.profile.politicsStatus != '0'}">
                                                    ${personal.profile.politicsStatus}</c:if>
                                                </span>
                                            </div>
                                        </div>

                                        <div class="profile-info-row">
                                            <div class="profile-info-name">文化程度</div>

                                            <div class="profile-info-value">
                                                <span class="editable"
                                                      id="education">
                                                    <c:if test="${personal.profile.education != '0'}">
                                                    ${personal.profile.education}</c:if>
                                                </span>
                                            </div>
                                        </div>

                                        <div class="profile-info-row">
                                            <div class="profile-info-name">部级专家</div>

                                            <div class="profile-info-value">
                                                <span class="editable"
                                                      id="ministeria">
                                                    <c:if test="${personal.profile.ministerialExpert!='0'}">
                                                    ${personal.profile.ministerialExpert}</c:if>
                                                </span>
                                            </div>
                                        </div>

                                        <div class="profile-info-row">
                                            <div class="profile-info-name">省级专家</div>

                                            <div class="profile-info-value">
                                                <span class="editable"
                                                      id="provincial">
                                                    <c:if test="${personal.profile.provincialExpert != '0'}">
                                                    ${personal.profile.provincialExpert}</c:if>
                                                </span>
                                            </div>
                                        </div>

                                        <div class="profile-info-row">
                                            <div class="profile-info-name">邮政编码</div>

                                            <div class="profile-info-value">
                                                <span class="editable"
                                                      id="postalcode">${personal.profile.postalCode}</span>
                                            </div>
                                        </div>

                                        <div class="profile-info-row">
                                            <div class="profile-info-name">社会兼职情况</div>

                                            <div class="profile-info-value">
                                                <span class="editable"
                                                      id="part_time">${personal.profile.professionalAffiliations}</span>
                                            </div>
                                        </div>

                                    </div>

                                    <!-- /section:pages/profile.info -->
                                    <div class="space-20"></div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-12 col-sm-6">
                                <div class="widget-box transparent">
                                    <div class="widget-header widget-header-small">
                                        <h4 class="widget-title smaller">
                                            <i class="ace-icon fa fa-check-square-o bigger-110"></i>
                                            主持、参加重大项目或课题（近10年）
                                        </h4>
                                    </div>

                                    <div class="widget-body">
                                        <div class="widget-main">
                                            <div class="profile-info-row">


                                                <div class="profile-info-value">
                                                    <span class="editable"
                                                          id="note">${personal.profile.participate}</span>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xs-12 col-sm-6">
                                <div class="widget-box transparent">
                                    <div
                                            class="widget-header widget-header-small header-color-blue2">
                                        <h4 class="widget-title smaller">
                                            <i class="ace-icon fa fa-lightbulb-o bigger-120"></i>
                                            获奖情况及主要业绩
                                        </h4>
                                    </div>

                                    <div class="widget-body">
                                        <div class="widget-main padding-16">
                                            <div class="widget-main">
                                                ${personal.profile.achievement}</div>
                                        </div>
                                    </div>
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
					<span class="bigger-120"> <span class="blue bolder">安徽农业大学数字研究所</span>
						&copy; 2017-2018（测试版）
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
    || document.write("<script src='${pageContext.request.contextPath}/assets/js/jquery.min.js'>"
        + "<" + "/script>");
</script>

<!-- <![endif]-->

<!--[if IE]>
<script type="text/javascript">
    window.jQuery || document.write("<script src='${pageContext.request.contextPath}/assets/js/jquery1x.min.js'>" + "<" + "/script>");
</script>
<![endif]-->
<script type="text/javascript">
    if ('ontouchstart' in document.documentElement)
        document
            .write("<script src='${pageContext.request.contextPath}/assets/js/jquery.mobile.custom.min.js'>"
                + "<" + "/script>");
</script>
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>

<!-- page specific plugin scripts -->

<!--[if lte IE 8]>
<script src="${pageContext.request.contextPath}/assets/js/excanvas.min.js"></script>
<![endif]-->
<script src="${pageContext.request.contextPath}/assets/js/jquery-ui.custom.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.ui.touch-punch.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.gritter.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/bootbox.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.easypiechart.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/date-time/bootstrap-datepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.hotkeys.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/bootstrap-wysiwyg.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/select2.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/fuelux/fuelux.spinner.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/x-editable/bootstrap-editable.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/x-editable/ace-editable.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.maskedinput.min.js"></script>

<!-- ace scripts -->
<script src="${pageContext.request.contextPath}/assets/js/ace-elements.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->
<script type="text/javascript">
    jQuery(function ($) {

        //editables on first profile page
        $.fn.editable.defaults.mode = 'inline';
        $.fn.editableform.loading = "<div class='editableform-loading'><i class='ace-icon fa fa-spinner fa-spin fa-2x light-blue'></i></div>";
        $.fn.editableform.buttons = '<button type="submit" class="btn btn-info editable-submit"><i class="ace-icon fa fa-check"></i></button>'
            + '<button type="button" class="btn editable-cancel"><i class="ace-icon fa fa-times"></i></button>';

        // *** editable avatar *** //
        try {//ie8 throws some harmless exceptions, so let's catch'em

            //first let's add a fake appendChild method for Image element for browsers that have a problem with this
            //because editable plugin calls appendChild, and it causes errors on IE at unpredicted points
            try {
                document.createElement('IMG').appendChild(
                    document.createElement('B'));
            } catch (e) {
                Image.prototype.appendChild = function (el) {
                }
            }

            var last_gritter
            $('#avatar')
                .editable(
                    {
                        type: 'image',
                        name: 'avatar',
                        value: null,
                        image: {
                            //specify ace file input plugin's options here
                            btn_choose: 'Change Avatar',
                            droppable: true,
                            maxSize: 110000,//~100Kb

                            //and a few extra ones here
                            name: 'avatar',//put the field name here as well, will be used inside the custom plugin
                            on_error: function (error_type) {//on_error function will be called when the selected file has a problem
                                if (last_gritter)
                                    $.gritter.remove(last_gritter);
                                if (error_type == 1) {//file format error
                                    last_gritter = $.gritter
                                        .add({
                                            title: 'File is not an image!',
                                            text: 'Please choose a jpg|gif|png image!',
                                            class_name: 'gritter-error gritter-center'
                                        });
                                } else if (error_type == 2) {//file size error
                                    last_gritter = $.gritter
                                        .add({
                                            title: 'File too big!',
                                            text: 'Image size should not exceed 100Kb!',
                                            class_name: 'gritter-error gritter-center'
                                        });
                                } else {//other error
                                }
                            },
                            on_success: function () {
                                $.gritter.removeAll();
                            }
                        },
                        url: function (params) {
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
                                function () {
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
                                        'status': 'OK'
                                    });

                                    if (last_gritter)
                                        $.gritter
                                            .remove(last_gritter);
                                    last_gritter = $.gritter
                                        .add({
                                            title: 'Avatar Updated!',
                                            text: 'Uploading to server can be easily implemented. A working example is included with the template.',
                                            class_name: 'gritter-info gritter-center'
                                        });

                                },
                                parseInt(Math.random() * 800 + 800))

                            return deferred.promise();

                            // ***END OF UPDATE AVATAR HERE*** //
                        },

                        success: function (response, newValue) {
                        }
                    })
        } catch (e) {
        }

        //another option is using modals
        $('#avatar2')
            .on(
                'click',
                function () {
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
                    modal.modal("show").on("hidden", function () {
                        modal.remove();
                    });

                    var working = false;

                    var form = modal.find('form:eq(0)');
                    var file = form.find('input[type=file]').eq(0);
                    file.ace_file_input({
                        style: 'well',
                        btn_choose: 'Click to choose new avatar',
                        btn_change: null,
                        no_icon: 'ace-icon fa fa-picture-o',
                        thumbnail: 'small',
                        before_remove: function () {
                            //don't remove/reset files while being uploaded
                            return !working;
                        },
                        allowExt: ['jpg', 'jpeg', 'png', 'gif'],
                        allowMime: ['image/jpg', 'image/jpeg',
                            'image/png', 'image/gif']
                    });

                    form
                        .on(
                            'submit',
                            function () {
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
                                    .done(function () {
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
                                    function () {
                                        deferred
                                            .resolve();
                                    },
                                    parseInt(Math
                                        .random() * 800 + 800));

                                return false;
                            });

                });

        //change profile
        $('[data-toggle="buttons"] .btn').on('click', function (e) {
            var target = $(this).find('input[type=radio]');
            var which = parseInt(target.val());
            $('.user-profile').parent().addClass('hide');
            $('#user-profile-' + which).parent().removeClass('hide');
        });
    });
</script>

<!-- the following scripts are used in demo only for onpage help and you don't need them -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.onpage-help.css"/>
<link rel="stylesheet" href="docs/${pageContext.request.contextPath}/assets/js/themes/sunburst.css"/>

<script type="text/javascript">
    ace.vars['base'] = '..';
</script>
<script src="${pageContext.request.contextPath}/assets/js/ace/elements.onpage-help.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/ace/ace.onpage-help.js"></script>
<script src="${pageContext.request.contextPath}/docs/assets/js/rainbow.js"></script>
<script src="${pageContext.request.contextPath}/docs/assets/js/language/generic.js"></script>
<script src="${pageContext.request.contextPath}/docs/assets/js/language/html.js"></script>
<script src="${pageContext.request.contextPath}/docs/assets/js/language/css.js"></script>
<script src="${pageContext.request.contextPath}/docs/assets/js/language/javascript.js"></script>
</body>
</html>
