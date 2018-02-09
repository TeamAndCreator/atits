<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%-- <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%> --%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>用户详情添加修改</title>

    <meta name="description" content="3 styles with inline editable feature"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="assets/css/font-awesome.min.css"/>

    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="assets/css/jquery-ui.custom.min.css"/>
    <link rel="stylesheet" href="assets/css/jquery.gritter.css"/>
    <link rel="stylesheet" href="assets/css/select2.css"/>
    <link rel="stylesheet" href="assets/css/datepicker.css"/>
    <link rel="stylesheet" href="assets/css/bootstrap-editable.css"/>

    <!-- text fonts -->
    <link rel="stylesheet" href="assets/css/ace-fonts.css"/>

    <!-- ace styles -->
    <link rel="stylesheet" href="assets/css/ace.min.css" id="main-ace-style"/>

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="assets/css/ace-part2.min.css"/>
    <![endif]-->
    <link rel="stylesheet" href="assets/css/ace-skins.min.css"/>
    <link rel="stylesheet" href="assets/css/ace-rtl.min.css"/>
    <script src="assets/js/ace-extra.min.js"></script>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="assets/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="assets/css/jquery-ui.custom.min.css"/>
    <link rel="stylesheet" href="assets/css/ace-fonts.css"/>
    <link rel="stylesheet" href="assets/css/ace.min.css"/>
    <link rel="stylesheet" href="assets/css/ace-skins.min.css"/>
    <link rel="stylesheet" href="assets/css/ace-rtl.min.css"/>

    <script src="assets/js/ace-extra.min.js"></script>
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
        <div class="page-content">

            <div class="page-content-area">
                <div class="page-header">
                    <h1>个人简介</h1>
                </div>
                <!-- /.page-header -->

                <div class="row">
                    <div class="col-xs-12">
                        <form:form
                                action="${pageContext.request.contextPath}/person_save"
                                method="POST" class="form-horizontal" id="sample-form"
                                modelAttribute="personal">

                            <c:if test="${personal.id!=0}">
                                <form:hidden path="id"/>

                                <input type="hidden" name="_method" value="PUT">
                            </c:if>
                            <div>
                                <!-- PAGE CONTENT BEGINS -->
                                <div id="user-profile-1" class="user-profile row">
                                    <div class="col-xs-12 col-sm-2 center">
                                        <div>
                                            <!-- #section:pages/profile.picture -->
                                            <span class="profile-picture"> <img id="avatar"
                                                                                class="editable img-responsive"
                                                                                alt="Alex's Avatar"
                                                                                src="assets/avatars/profile-pic.jpg"/>
												</span>

                                            <!-- /section:pages/profile.picture -->
                                            <div class="space-4"></div>

                                            <div
                                                    class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
                                                <div class="inline position-relative">
                                                    <div class="user-title-label dropdown-toggle"
                                                         data-toggle="dropdown">
                                                        <i class="ace-icon fa fa-circle light-green"></i> &nbsp;
                                                        <span class="white">${personal.name}</span>
                                                    </div>


                                                </div>
                                            </div>
                                        </div>

                                        <div class="space-6"></div>

                                        <!-- #section:pages/profile.contact -->
                                        <div class="profile-contact-info">
                                            <div class="profile-contact-links align-left">

                                                <a href="#" class="btn btn-link"> <i
                                                        class="ace-icon fa fa-envelope bigger-120 pink"></i>
                                                        ${personal.email}
                                                </a> <a href="#" class="btn btn-link"> <i
                                                    class="ace-icon fa fa-globe bigger-125 blue"></i>
                                                    ${personal.phoneNumber}
                                            </a>
                                            </div>

                                            <div class="space-6"></div>

                                        </div>

                                        <div class="hr hr16 dotted"></div>
                                    </div>


                                    <div class="col-xs-12 col-sm-5">
                                        <div class="space-12"></div>

                                        <!-- #section:pages/profile.info -->
                                        <div class="profile-user-info profile-user-info-striped">

                                            <div class="profile-info-row">
                                                <div class="profile-info-name">姓名</div>
                                                <div class="profile-info-value">
                                                    <form:input class="col-xs-8 col-sm-10 col-md-8" type="text"
                                                                path="name" placeholder="用户姓名"/>
                                                </div>

                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name">性别</div>

                                                <!--<div class="profile-info-value">
                                                    <span class="editable" id="sex">男</span>
                                                </div>-->
                                                <div class="profile-info-value">
                                                    <form:select path="profile.sex" class="col-xs-8 col-sm-10 col-md-3">
                                                        <form:option value="0">--请选择--</form:option>
                                                        <form:option value="男">男</form:option>
                                                        <form:option value="女">女</form:option>
                                                    </form:select>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name">民族</div>

                                                <!--<div class="profile-info-value">
                                                    <span class="editable" id="nation">汉</span>
                                                </div>-->
                                                <div class="profile-info-value">
                                                    <form:input type="text" path="profile.nation"
                                                                placeholder="民族" class="col-xs-8 col-sm-10 col-md-8"/>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name">出生日期</div>
                                                <div class="profile-info-value">
														<span class="block input-icon input-icon-right"
                                                              style="width: 200px;"> <form:input
                                                                class="form-control date-picker"
                                                                path="profile.birthdate" type="text"
                                                                data-date-format="yyyy-mm-dd"/> <i
                                                                class="ace-icon fa fa-calendar bigger-150"></i>
														</span>

                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name">通讯地址</div>
                                                <div class="profile-info-value">
                                                    <form:input type="text" path="profile.address"
                                                                placeholder="输入地址" class="col-xs-8 col-sm-10 col-md-8"/>
                                                </div>

                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name">学位</div>

                                                <div class="profile-info-value">
                                                    <!--<span class="editable" id="degree">博士</span>-->
                                                    <form:select path="profile.degree"
                                                                 class="col-xs-8 col-sm-10 col-md-3">
                                                        <form:option value="0">--请选择--</form:option>
                                                        <form:option value="学士">学士</form:option>
                                                        <form:option value="硕士">硕士</form:option>
                                                        <form:option value="博士">博士</form:option>
                                                    </form:select>
                                                </div>

                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name">毕业学校</div>

                                                <div class="profile-info-value">
                                                    <form:input type="text"
                                                                path="profile.graduateInstitutions" placeholder="学校"
                                                                class="col-xs-8 col-sm-10 col-md-8"
                                                                style="height: 30px;"/>
                                                </div>

                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name">毕业时间</div>

                                                <div class="profile-info-value">
														<span class="block input-icon input-icon-right"
                                                              style="width: 200px;"> <form:input
                                                                class="form-control date-picker"
                                                                path="profile.graduationDate" type="text"
                                                                data-date-format="yyyy-mm-dd"/> <i
                                                                class="ace-icon fa fa-calendar bigger-150"></i>
														</span>

                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name">所学专业</div>

                                                <div class="profile-info-value">
                                                    <form:input type="text" path="profile.major"
                                                                placeholder="所学专业" class="col-xs-8 col-sm-10 col-md-8"
                                                                style="height: 30px;"/>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name">从事专业</div>


                                                <div class="profile-info-value">
                                                    <form:input type="text" path="profile.undertake"
                                                                placeholder="从事专业" class="col-xs-8 col-sm-10 col-md-8"
                                                                style="height: 30px;"/>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name">行政职务</div>

                                                <div class="profile-info-value">
                                                    <form:input type="text"
                                                                path="profile.administrativeFunction" placeholder="职务"
                                                                class="col-xs-8 col-sm-10 col-md-8"
                                                                style="height: 30px;"/>
                                                </div>
                                            </div>



                                                <div class="profile-info-row admin hidden">
                                                    <div class="profile-info-name">岗位</div>

                                                    <div class="profile-info-value">
                                                        <c:choose>
                                                            <c:when test="${fn:contains(personal.job,'首席专家')}">
                                                                <label>
                                                                    <input name="job" class="ace " checked="checked"
                                                                           value="首席专家" type="checkbox">
                                                                    <span class="lbl bigger-120">首席专家</span>
                                                                </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            </c:when>
                                                            <c:otherwise>
                                                                <label>
                                                                    <input name="job" class="ace "
                                                                           value="首席专家" type="checkbox">
                                                                    <span class="lbl bigger-120">首席专家</span>
                                                                </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            </c:otherwise>
                                                        </c:choose>


                                                        <c:choose>
                                                            <c:when test="${fn:contains(personal.job,'副首席专家')}">
                                                                <label>
                                                                    <input name="job" class="ace " checked="checked"
                                                                           value="副首席专家" type="checkbox">
                                                                    <span class="lbl bigger-120">副首席专家</span>
                                                                </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            </c:when>
                                                            <c:otherwise>
                                                                <label>
                                                                    <input name="job" class="ace "
                                                                           value="副首席专家" type="checkbox">
                                                                    <span class="lbl bigger-120">副首席专家</span>
                                                                </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            </c:otherwise>
                                                        </c:choose>


                                                        <c:choose>
                                                            <c:when test="${fn:contains(personal.job,'研究室主任')}">
                                                                <label>
                                                                    <input name="job" class="ace " checked="checked"
                                                                           value="研究室主任" type="checkbox">
                                                                    <span class="lbl bigger-120">研究室主任</span>
                                                                </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            </c:when>
                                                            <c:otherwise>
                                                                <label>
                                                                    <input name="job" class="ace "
                                                                           value="研究室主任" type="checkbox">
                                                                    <span class="lbl bigger-120">研究室主任</span>
                                                                </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            </c:otherwise>
                                                        </c:choose>


                                                        <c:choose>
                                                            <c:when test="${fn:contains(personal.job,'岗位专家')}">
                                                                <label>
                                                                    <input name="job" class="ace " checked="checked"
                                                                           value="岗位专家" type="checkbox">
                                                                    <span class="lbl bigger-120">岗位专家</span>
                                                                </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            </c:when>
                                                            <c:otherwise>
                                                                <label>
                                                                    <input name="job" class="ace "
                                                                           value="岗位专家" type="checkbox">
                                                                    <span class="lbl bigger-120">岗位专家</span>
                                                                </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            </c:otherwise>
                                                        </c:choose>


                                                        <c:choose>
                                                            <c:when test="${fn:contains(personal.job,'综合试验站站长')}">
                                                                <label>
                                                                    <input name="job" class="ace " checked="checked"
                                                                           value="综合试验站站长" type="checkbox">
                                                                    <span class="lbl bigger-120">综合试验站站长</span>
                                                                </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            </c:when>
                                                            <c:otherwise>
                                                                <label>
                                                                    <input name="job" class="ace "
                                                                           value="综合试验站站长" type="checkbox">
                                                                    <span class="lbl bigger-120">综合试验站站长</span>
                                                                </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            </c:otherwise>
                                                        </c:choose>


                                                    </div>

                                                </div>

                                                <div class="profile-info-row amdin hidden">
                                                    <div class="profile-info-name">权限</div>
                                                    <div class="profile-info-value">
                                                        <form:select path="permission"
                                                                     class="col-xs-8 col-sm-10 col-md-3">
                                                            <form:option value="1">一级</form:option>
                                                            <form:option value="2">二级</form:option>
                                                            <form:option value="3">三级</form:option>
                                                        </form:select>
                                                    </div>
                                                </div>



                                            <div class="profile-info-row">
                                                <div class="profile-info-name">专业特长</div>


                                                <div class="profile-info-value">
                                                    <form:input type="text"
                                                                path="profile.professionalExpertise" placeholder="特长"
                                                                class="col-xs-8 col-sm-10 col-md-8"
                                                                style="height: 30px;"/>
                                                </div>
                                            </div>

                                        </div>

                                        <div class="space-20"></div>
                                    </div>
                                    <div class="col-xs-12 col-sm-5">
                                        <div class="space-12"></div>

                                        <!-- #section:pages/profile.info -->
                                        <div class="profile-user-info profile-user-info-striped">
                                            <div class="profile-info-row">
                                                <div class="profile-info-name">账号</div>
                                                <div class="profile-info-value">
                                                    <form:input type="text" path="userName" placeholder="账号"
                                                                class="col-xs-8 col-sm-10 col-md-8"
                                                                style="height: 30px;"/>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name">密码</div>

                                                <!--<div class="profile-info-value">
                                                    <span class="editable" id="password">123</span>
                                                </div>-->
                                                <div class="profile-info-value">
                                                    <form:input type="password" path="password"
                                                                placeholder="密码" class="col-xs-8 col-sm-10 col-md-8"
                                                                style="height: 30px;"/>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name">工作单位</div>

                                                <!--<div class="profile-info-value">
                                                    <span class="editable" id="work_unit">alexdoe</span>
                                                </div>-->
                                                <div class="profile-info-value">
                                                    <form:input type="text" path="department"
                                                                placeholder="工作单位" class="col-xs-8 col-sm-10 col-md-8"
                                                                style="height: 30px;"/>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name">手机号</div>

                                                <!--<div class="profile-info-value">
                                                    <span class="editable" id="phone"></span>
                                                </div>-->
                                                <div class="profile-info-value">
                                                    <form:input type="text" path="phoneNumber"
                                                                placeholder="手机号" class="col-xs-8 col-sm-10 col-md-8"
                                                                style="height: 30px;"/>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name">办公室电话</div>

                                                <!--<div class="profile-info-value">
                                                    <span class="editable" id="telephone">Editable as WYSIWYG</span>
                                                </div>-->
                                                <div class="profile-info-value">
                                                    <form:input type="text" path="offcePhone"
                                                                placeholder="办公室电话" class="col-xs-8 col-sm-10 col-md-8"
                                                                style="height: 30px;"/>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name">电子邮箱</div>

                                                <!--<div class="profile-info-value">
                                                    <span class="editable" id="email">2010/06/20</span>
                                                </div>-->
                                                <div class="profile-info-value">
                                                    <form:input type="text" path="email" placeholder="电子邮箱"
                                                                class="col-xs-8 col-sm-10 col-md-8"
                                                                style="height: 30px;"/>
                                                </div>
                                            </div>

                                                <div class="profile-info-row admin hidden">
                                                    <div class="profile-info-name">所属体系名称</div>
                                                    <div class="profile-info-value">
                                                        <form:select class="col-xs-8 col-sm-10 col-md-8"
                                                                     path="system.id">
                                                            <form:options items="${system}" itemLabel="sysName"
                                                                          itemValue="id"/>
                                                        </form:select>
                                                    </div>

                                                </div>

                                                <div class="profile-info-row admin hidden">
                                                    <div class="profile-info-name">功能研究室名称</div>
                                                    <div class="profile-info-value">
                                                        <form:select class="col-xs-8 col-sm-10 col-md-8"
                                                                     path="laboratory.id">
                                                            <form:option value="0">--请选择--</form:option>
                                                            <form:options items="${laboratories}" itemLabel="labName"
                                                                          itemValue="id"/>
                                                        </form:select>
                                                    </div>

                                                </div>


                                                <div class="profile-info-row admin hidden">
                                                    <div class="profile-info-name">综合试验站名称</div>
                                                    <div class="profile-info-value">
                                                        <form:select class="col-xs-8 col-sm-10 col-md-8"
                                                                     path="station.id">
                                                            <form:option value="0">--请选择--</form:option>
                                                            <form:options items="${stations}" itemLabel="staName"
                                                                          itemValue="id"/>
                                                        </form:select>
                                                    </div>
                                                </div>



                                            <div class="profile-info-row">
                                                <div class="profile-info-name">政治面貌</div>
                                                <div class="profile-info-value">
                                                    <form:select path="profile.politicsStatus" id="select"
                                                                 style="height: 30px;"
                                                                 class="col-xs-8 col-sm-10 col-md-3">
                                                        <form:option value="0">--请选择--</form:option>
                                                        <form:option value="团员">团员</form:option>
                                                        <form:option value="党员">党员</form:option>
                                                        <form:option value="其他">其他</form:option>
                                                    </form:select>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name">文化程度</div>

                                                <div class="profile-info-value">
                                                    <!--<span class="editable" id="education">2010/06/20</span>-->
                                                    <form:select path="profile.education" id="select"
                                                                 style="height: 30px;"
                                                                 class="col-xs-8 col-sm-10 col-md-3">
                                                        <form:option value="0">--请选择--</form:option>
                                                        <form:option value="初中">初中</form:option>
                                                        <form:option value="高中">高中</form:option>
                                                        <form:option value="大学">大学</form:option>
                                                        <form:option value="硕士">硕士</form:option>
                                                        <form:option value="博士">博士</form:option>
                                                    </form:select>
                                                </div>

                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name">部级专家</div>

                                                <div class="profile-info-value">
                                                    <form:select path="profile.ministerialExpert" id="select"
                                                                 style="height: 30px;"
                                                                 class="col-xs-8 col-sm-10 col-md-3">
                                                        <form:option value="0">--请选择--</form:option>
                                                        <form:option value="否">否</form:option>
                                                        <form:option value="是">是</form:option>
                                                    </form:select>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name">省级专家</div>

                                                <!--<div class="profile-info-value">
                                                    <span class="editable" id="provincial">2010/06/20</span>
                                                </div>-->
                                                <div class="profile-info-value">
                                                    <form:select path="profile.provincialExpert" id="select"
                                                                 style="height: 30px;"
                                                                 class="col-xs-8 col-sm-10 col-md-3">
                                                        <form:option value="0">--请选择--</form:option>
                                                        <form:option value="否">否</form:option>
                                                        <form:option value="是">是</form:option>
                                                    </form:select>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name">邮政编码</div>

                                                <div class="profile-info-value">
                                                    <form:input type="text" path="profile.postalCode"
                                                                placeholder="邮政编码" class="col-xs-8 col-sm-10 col-md-8"
                                                                style="height: 30px;"/>
                                                </div>
                                            </div>

                                            <div class="profile-info-row">
                                                <div class="profile-info-name">社会兼职情况</div>

                                                <div class="profile-info-value">
                                                    <form:input type="text"
                                                                path="profile.professionalAffiliations"
                                                                placeholder="社会兼职情况" class="col-xs-8 col-sm-10 col-md-8"
                                                                style="height: 30px;"/>
                                                </div>
                                            </div>

                                        </div>

                                        <!-- /section:pages/profile.info -->
                                        <div class="space-20"></div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="widget-header widget-header-small">
                                            <h4 class="widget-title smaller">
                                                <i class="ace-icon fa fa-check-square-o bigger-110"></i>
                                                主持、参加重大项目或课题（近10年）（限500字以内）
                                            </h4>
                                        </div>
                                        <%--<div id="editor1" class="col-lg-12 " style="float: none;display: block;margin-left: auto;margin-right: auto;">--%>
                                        <%--</div>--%>
                                        <iframe ID="eWebEditor1" src="assets/ewebeditor/ewebeditor.htm?id=participate&style=coolblue" class="col-lg-12"
                                                style="float: none;display: block;margin-left: auto;margin-right: auto;"
                                                frameborder="0" scrolling="no" width="550" height="700"></iframe>
                                        <form:input type='hidden' path='profile.participate'
                                                    id='participate' value=''/>
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="widget-header widget-header-small">
                                            <h4 class="widget-title smaller">
                                                <i class="ace-icon fa fa-lightbulb-o bigger-120"></i>
                                                获奖情况及主要业绩（限500字以内）
                                            </h4>
                                        </div>
                                        <%--<div id="editor2" class="col-lg-12 " style="float: none;display: block;margin-left: auto;margin-right: auto;">--%>
                                        <%--</div>--%>
                                        <iframe ID="eWebEditor1" src="assets/ewebeditor/ewebeditor.htm?id=achievement&style=coolblue" class="col-lg-12"
                                                style="float: none;display: block;margin-left: auto;margin-right: auto;"
                                                frameborder="0" scrolling="no" width="550" height="700"></iframe>
                                        <form:input type='hidden' path='profile.achievement'
                                                    id='achievement' value=''/>
                                    </div>
                                </div>
                                <form:input type="hidden" path='state' value=''/>
                                <form:input type="hidden" path='confirmPassword' value=''/>

                            </div>


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
    || document.write("<script src='assets/js/jquery.min.js'>"
        + "<" + "/script>");
</script>


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
    jQuery(function ($) {
        // *** editable avatar *** //
        try { //ie8 throws some harmless exceptions, so let's catch'em

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
                            maxSize: 110000, //~100Kb

                            //and a few extra ones here
                            name: 'avatar', //put the field name here as well, will be used inside the custom plugin
                            on_error: function (error_type) { //on_error function will be called when the selected file has a problem
                                if (last_gritter)
                                    $.gritter.remove(last_gritter);
                                if (error_type == 1) { //file format error
                                    last_gritter = $.gritter
                                        .add({
                                            title: 'File is not an image!',
                                            text: 'Please choose a jpg|gif|png image!',
                                            class_name: 'gritter-error gritter-center'
                                        });
                                } else if (error_type == 2) { //file size rror
                                    last_gritter = $.gritter
                                        .add({
                                            title: 'File too big!',
                                            text: 'Image size should not exceed 100Kb!',
                                            class_name: 'gritter-error gritter-center'
                                        });
                                } else { //other error
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

        //////////////////////////////
        $('#profile-feed-1').ace_scroll({
            height: '250px',
            mouseWheelLock: true,
            alwaysVisible: true
        });

        $('a[ data-original-title]').tooltip();

        $('.easy-pie-chart.percentage').each(function () {
            var barColor = $(this).data('color') || '#555';
            var trackColor = '#E2E2E2';
            var size = parseInt($(this).data('size')) || 72;
            $(this).easyPieChart({
                barColor: barColor,
                trackColor: trackColor,
                scaleColor: false,
                lineCap: 'butt',
                lineWidth: parseInt(size / 10),
                animate: false,
                size: size
            }).css('color', barColor);
        });

        $('.date-picker').datepicker({
            autoclose: true,
            todayHighlight: true
        })
        //show datepicker when clicking on the icon
            .next().on(ace.click_event, function () {
            $(this).prev().focus();
        });

        //or change it into a date range picker
        $('.input-daterange').datepicker({
            autoclose: true
        });

        ///////////////////////////////////////////

        //right & left position
        //show the user info on right or left depending on its position
        $('#user-profile-2 .memberdiv').on(
            'mouseenter touchstart',
            function () {
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
            }).on('click', function (e) {
            e.preventDefault();
        });

        ///////////////////////////////////////////
        $('#user-profile-3').find('input[type=file]').ace_file_input(
            {
                style: 'well',
                btn_choose: 'Change avatar',
                btn_change: null,
                no_icon: 'ace-icon fa fa-picture-o',
                thumbnail: 'large',
                droppable: true,

                allowExt: ['jpg', 'jpeg', 'png', 'gif'],
                allowMime: ['image/jpg', 'image/jpeg', 'image/png',
                    'image/gif']
            }).end().find('button[type=reset]').on(
            ace.click_event,
            function () {
                $('#user-profile-3 input[type=file]').ace_file_input(
                    'reset_input');
            }).end().find('.date-picker').datepicker().next().on(
            ace.click_event, function () {
                $(this).prev().focus();
            })
        $('.input-mask-phone').mask('(999) 999-9999');

        ////////////////////
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

<script type="text/javascript">
    window.jQuery
    || document.write("<script src='assets/js/jquery.min.js'>"
        + "<" + "/script>");
</script>

<script type="text/javascript">
    if ('ontouchstart' in document.documentElement)
        document
            .write("<script src='assets/js/jquery.mobile.custom.min.js'>"
                + "<" + "/script>");
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

<!--隐藏权限-->
<script type="text/javascript">
    <c:if test="${person.permission eq 1}">
    $(".admin").removeClass("hidden");
    </c:if>
</script>

<!--左边富文本编辑区js-->

<!--end左边富文本编辑区js-->


<!--右边富文本编辑区js-->

<!--end右边富文本编辑区js-->
<script type="text/javascript">
    $(function () {
        $("#datepicker").datepicker();
    });
</script>

<!-- the following scripts are used in demo only for onpage help and you don't need them -->
<link rel="stylesheet" href="assets/css/ace.onpage-help.css"/>
<link rel="stylesheet" href="docs/assets/js/themes/sunburst.css"/>
<link rel="stylesheet" href="assets/css/jquery-ui.min.css"/>

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
<script charset="utf-8" src="assets/js/kindedit/kindeditor-all.js"></script>
<script charset="utf-8" src="assets/js/kindedit/lang/zh-CN.js"></script>
<script charset="utf-8" src="assets/js/kindedit/plugins/autoheight/autoheight.js"></script>

<script src="assets/js/atits-js/person_add.js"></script>

</body>

</html>