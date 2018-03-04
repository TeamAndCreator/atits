$(function () {
    $(document).on("click", ".test", function () {
        var test_id = $(this).attr("test-id");
        var year = $(this).parents("tr").find("td:eq(1)").text();
        var jobs = $(this).parents("tr").find("td:eq(4)").text();
        var examednerName = $(this).parents("tr").find("td:eq(5)").text();

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


    $("#btn_submit1").click(function () {
            $.ajax({
                url:"test_score_save/"+$(this).attr("test-id"),
                type:"POST",
                data:$("#form_table1").serialize(),
                success:function () {

                }
            })
    });

    $("#btn_submit2").click(function () {
        $.ajax({
            url:"test_score_save/"+$(this).attr("test-id"),
            type:"POST",
            data:$("#form_table1").serialize(),
            success:function () {

            }
        })
    });

    $("#btn_submit3").click(function () {
        $.ajax({
            url:"test_score_save/"+$(this).attr("test-id"),
            type:"POST",
            data:$("#form_table1").serialize(),
            success:function () {

            }
        })
    });

    $("#btn_submit4").click(function () {
        $.ajax({
            url:"test_score_save/"+$(this).attr("test-id"),
            type:"POST",
            data:$("#form_table1").serialize(),
            success:function () {

            }
        })
    });

    $("#btn_submit5").click(function () {
        $.ajax({
            url:"test_score_save/"+$(this).attr("test-id"),
            type:"POST",
            data:$("#form_table1").serialize(),
            success:function () {

            }
        })
    });


});


