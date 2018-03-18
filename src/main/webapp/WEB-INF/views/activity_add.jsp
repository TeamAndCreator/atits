<%--
  Created by IntelliJ IDEA.
  User: james
  Date: 2018/3/18
  Time: 00:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">
    <%--<link href="${pageContext.request.contextPath}/assets/css/jquery.dataTables.min.css" rel="stylesheet">--%>
    <%--<link href="${pageContext.request.contextPath}/assets/css/dataTables.bootstrap.min.css" rel="stylesheet">--%>
    <link href="${pageContext.request.contextPath}/assets/css/atits-css/atits.min.css" rel="stylesheet">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="no-skin">
<div class="container">
    <ol class="breadcrumb">
        <li><span class="glyphicon-home glyphicon"></span></li>
        <li><a href="#">首页</a></li>
        <li><a href="#">重大活动</a></li>
        <li class="active">添加</li>
    </ol>
    <div class="row">
        <div class="col-md-12">
            <form class="form-horizontal">
                <div class="form-group">
                    <label class="col-sm-2 control-label">标题</label>
                    <div class="col-sm-8">
                        <input type="email" class="form-control" name="title" >
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> Remember me
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">Sign in</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery-3.3.1.min.js"></script>

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    <%--<script src="${pageContext.request.contextPath}/assets/js/jquery.dataTables.min.js"></script>--%>
    <%--<script src="${pageContext.request.contextPath}/assets/js/jquery.dataTables.bootstrap.js"></script>--%>
</body>
</html>


