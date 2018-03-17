$(function () {

    person = $.session.get('person');
    console.log(person);

    //打开添加权重弹框
    $("#add_test_weight").click(function () {
        $("#modal-table").modal({
            backdrop: "static"
        });
    });


    //保存权重对象
    $("#btn_submit").click(function () {
        $.ajax({
            url: "test_weight_save_ajax",
            type: "POST",
            data: $("#form_table").serialize(),
            success: function () {
                $("#modal-table").modal('hide');
            }
        });

    });

    //权重表格
    $('#sample-table-2').DataTable({
        bAutoWidth: true,
        fnDraw: false,
        aoColumns: [
            {
                mData: "id", sClass: "center", sortable: false,
                render: function (mData) {
                    return '<td class="center"><label class="position-relative"><input type="checkbox" class="ace center" value=' + mData + ' name="subcheck"/> <span class="lbl"></span></label></td>';
                }
            },
            {mData: "year"},
            {mData: "testObject"},
            {mData: "nongWei"},
            {mData: 'expert'},
            {mData: 'subChief_sta_lib'},
            {mData: "sta_lib"},
            {mData: "chief"},
            {mData: "nongwei_expert"},
            {mData: "chief_subChief"}

        ],
        aaSorting: [],//指定按多列数据排序的依据
        bServerSide: true,//指定从服务器端获取数据
        sAjaxSource: "test_weight_find_all_ajax",//获取数据的url
        fnServerData: retrieveData,//获取数据的处理函数
        searching: true, // 搜索
        bPaginate: true, //显示（使用）分页器
        pagingType: "full_numbers", //分页样式的类型
        oLanguage: { //语言设置
            sLengthMenu: "每页显示 _MENU_ 条记录",
            sZeroRecords: "没有检索到数据",
            sSearch: "搜索",
            sInfo: "当前显示 _START_ 到 _END_ 条，共 _TOTAL_ 条记录",
            sInfoEmtpy: "没有数据",
            sProcessing: '<i class="fa fa-coffee"></i> 正在加载数据...',
            oPaginate: {
                sFirst: "首页",
                sPrevious: "前一页",
                sNext: "后一页",
                sLast: "尾页"
            }
        },
        fnRowCallback: function (nRow, aData, iDisplayIndex) {

        }
    });


    //向服务端请求数据
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

                fnCallback(resp); //服务器端返回的对象的returnObject部分是要求的格式
            }
        });
    }


});