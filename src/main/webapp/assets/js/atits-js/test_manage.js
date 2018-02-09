$(function () {

    $(".btn-danger").click(function () {
        var checkedNum = $("input[name='subcheck']:checked").length;
        if (checkedNum == 0) {
            alert("请至少选择一项！");
            return false;
        }
        if (confirm("确定删除所选项目")) {
            var checkedList = new Array();
            $("input[name='subcheck']:checked").each(function () {
                checkedList.push($(this).val())
            });
            alert(checkedList);

            $("form").attr("action", 'test_manage_delete/' + checkedList).submit();
        }
    });
    $("#add").click(function () {
        getSystem();

        $("#modal-table").modal();
    });

    function getPerson() {
        $.ajax({
            url: "person_ajax",
            type: "GET",
            success: function (result) {
                persons = $.parseJSON(result);
                persons1 = persons;
                $.each(persons, function (index, person) {
                    var optionEle = $("<option></option>").append(person.name).attr("value", person.name);
                    optionEle.appendTo("#examiner");
                });
            }
        });
    }

    function getTestManages() {
        $.ajax({
            url: "test_manage_ajax",
            type: "GET",
            success: function (result) {
                testManages = $.parseJSON(result);
                $.each(testManages, function (index, testManage) {

                        optionEle.appendTo("#testManages");
                    }
                );
            }
        });
    }

    $("#test_manage_save").click(function () {
        console.log($("#test_manage_add_form").serialize());
        //alert();
        $.ajax({
            url: "test_manage_save",
            type: "POST",
            data: $("#test_manage_add_form").serialize(),
            success: function (result) {
            }
        });
    });

    function getScore(id) {
        $.ajax({
            url: "test_score" + id,
            type: "GET",
            success: function (result) {
                testScores = $.parseJSON(result);
                console.log(result);
            }
        })

    }

    $(document).on("click", ".test", function () {
        var test_id = $(this).attr("test-id");
        var year = $(this).parents("tr").find("td:eq(1)").text();
        var jobs = $(this).parents("tr").find("td:eq(4)").text();
        var examednerName = $(this).parents("tr").find("td:eq(3)").text();

        // getScore(test_id);

        if ((jobs.indexOf("首席专家") != -1) && (jobs.indexOf("副") == -1)) {
            $("#modal-table1").modal();

            $('#examedner1').text(examednerName);//模态框写入评分人
            $('#year1').text(year);//模态框写入年份
            $("#btn_submit1").attr("test-id",test_id);
        }
        else if (jobs.indexOf("副首席专家") != -1) {
            $("#modal-table2").modal();
            $('#examedner2').text(examednerName);
            $('#year2').text(year);
            $("#btn_submit2").attr("test-id",test_id);
        }
        else if (jobs.indexOf("研究室主任") != -1) {
            $("#modal-table3").modal();
            $('#examedner3').text(examednerName);
            $('#year3').text(year);
            $("#btn_submit3").attr("test-id",test_id);
        }
        else if (jobs.indexOf("岗位专家") != -1) {
            $("#modal-table4").modal();
            $('#examedner4').text(examednerName);
            $('#year4').text(year);
            $("#btn_submit4").attr("test-id",test_id);
        }
        else {
            $("#modal-table5").modal();
            $('#examedner5').text(examednerName);
            $('#year5').text(year);
            $("#btn_submit5").attr("test-id",test_id);
        }

    });

    // $(document).on("click","#btn_submit1",function () {
    //     alert("hhhjjjjj");
    //     // $.ajax({
    //     //     url:"test_score_save",
    //     //     type:"POST",
    //     //     success:function () {
    //     //
    //     //     }
    //     // })
    //
    // });
    $("#btn_submit1").click(function () {
            $.ajax({
                url:"test_score_save",
                type:"POST",
                data:$("#form_table1").serialize(),
                success:function () {

                }
            })
    });


});


