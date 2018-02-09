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
			$("form").attr("action", 'research_progerss_deletes/'+checkedList).submit();
		}
	});
});
