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
    <link href="${pageContext.request.contextPath}/assets/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/atits-css/atits.min.css" rel="stylesheet">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="no-skin">
<div class="container-fluid">
    <br>

    <h1 class="header blue smaller ">重大活动</h1>

    <%--<ol class="breadcrumb ">--%>
    <%--<li class="glyphicon-home glyphicon"></li>--%>
    <%--<li><a  href="#">Home</a></li>--%>
    <%--<li><a href="#">Library</a></li>--%>
    <%--<li class="active">Data</li>--%>
    <%--</ol>--%>
    <br>
    <div class="row">
        <div class="col-xs-12">
            <table id="example" class="display table table-striped" style="width:100%">
                <thead>
                <tr>
                    <th class="text-center">
                        <label>
                            <input type="checkbox" class="checkbox-inline" name="cb-check-all"/>
                        </label>
                    </th>
                    <th class="text-center">标题</th>
                    <th class="text-center">发布者</th>
                    <th class="text-center">发布时间</th>
                    <th class="text-center">状态</th>

                </tr>
                </thead>
                <tbody>

                </tbody>
            </table>

        </div>
    </div>
</div>


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${pageContext.request.contextPath}/assets/js/jquery-3.3.1.min.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.dataTables.bootstrap.js"></script>
</body>
</html>

<script type="text/javascript">
    $(document).ready(function () {
        $('#example').DataTable({
            "sDom": "<'row'<'col-md-2'l><'col-md-6 toolbar'><'col-md-4'f>r>t<'row'<'col-md-4'i><'col-md-8'p>>",
            "pagingType": "full_numbers",//分页样式的类型
            "aoColumns": [{
                mData: "id",
                class: "text-center",
                bSortable: false,
                render: function (mData) {
                    return '<td><label ><input type="checkbox" value=' + mData + ' name="subcheck"/> <span class="lbl"></span></label></td>';
                }
            },
                {
                    mData: {
                        title: "title",
                        id: "id"
                    },
                    render: function (mData) {
                        return '<a href="activity_details?id=' + mData.id + '">' + mData.title + '</a>'
                    }
                },
                {mData: "system.sysName"},
                {mData: "date"},
                {
                    mData: "state",
                    render: function (mData) {
                        var btn = null;
                        switch (mData) {
                            case 0:
                                btn = '<button href="activity_add" class="btn btn-primary btn-sm margin-1" role="button">审核</button>';
                                break;
                            case 1:
                                btn = '';
                                break;
                            case 2:
                                btn = '';
                                break;
                        }
                        return btn;

                    }
                }],
            "order": [],
            "bServerSide": true,//指定从服务器端获取数据
            "sAjaxSource": "activity_find_all_ajax",//获取数据的url
            "fnServerData": retrieveData,//获取数据的处理函数
            "searching": true, // 搜索
            "oLanguage": {//语言设置
                "sLengthMenu": "每页显示 _MENU_ 条记录",
                "sZeroRecords": "没有检索到数据",
                "sSearch": "搜索",
                "sInfo": "当前显示 _START_ 到 _END_ 条，共 _TOTAL_ 条记录",
                "sInfoEmtpy": "没有数据",
                "sEmptyTable": "暂无数据",
                "sProcessing": '正在加载数据...',
                "oPaginate": {
                    "sFirst": "首页",
                    "sPrevious": "前一页",
                    "sNext": "后一页",
                    "sLast": "尾页",
                    "sJump": "跳转"
                }


            }
        });

        function retrieveData(sSource, aoData, fnCallback) {
            $.ajax({
                "type": "GET",
                "contentType": "application/json",
                "dataType": "json",
                "url": sSource,
                "data": {
                    params: JSON.stringify(aoData)
                }, //以json格式传递
                "success": function (resp) {
                    console.log(resp);
                    fnCallback(resp); //服务器端返回的对象的returnObject部分是要求的格式
                }
            });
        }

        // language=HTML
        $("div.toolbar").html('<a href="activity_add" class="btn btn-primary btn-sm margin-1">添加</a><a href="#" class="btn btn-danger btn-sm margin-1" role="button">删除</a>');



    });
</script>

