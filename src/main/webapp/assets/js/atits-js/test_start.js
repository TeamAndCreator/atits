$(function() {
    $(".red").click(function() {
		var checkedNum = $("input[name='subcheck']:checked").length;
		if (checkedNum == 0) {
			alert("请至少选择一项！");
			return false;
		}
		if (confirm("确定删除所选项目？")) {
			var checkedList = new Array();
			$("input[name='subcheck']:checked").each(function() {
				checkedList.push($(this).val())
			});

			$("#form").attr("action", 'testStart_deletes/'+checkedList).submit();
		}
	});
});

$(".staff").click(function () {
//     var test_start_id=$(this).parents("tr").find("td:eq(0)").text();
//     getTestStarts();
    $("#modal-table").modal();
});

function getTestStarts() {
    //清空之前下拉列表的值
    //$(testStarts).empty();
    $.ajax({
        url: "test_start_id_ajax",
        type: "GET",
        success: function (result) {
        	// $("#nen_id").empty();
            testStarts = $.parseJSON(result);
            $.each(testStarts, function (index, testStart) {
                    // var optionEle = $("<option></option>").append(testStart.sysperId).attr("value", subTask.id);
                    var optionEle = $("<h4></h4>").append(testStart.sysperId);
                    optionEle.appendTo("#nen_id");
                    // alert();
                }
            );
        }
    });
}


