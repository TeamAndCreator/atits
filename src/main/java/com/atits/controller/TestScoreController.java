package com.atits.controller;

import com.atits.entity.*;
import com.atits.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.lang.System;
import java.util.List;

@Controller
public class TestScoreController {
    @Resource
    private TestScoreService testScoreService;
    @Resource
    private TestManageService testManageService;

    public TestScoreService getTestScoreService() {
        return testScoreService;
    }

    public void setTestScoreService(TestScoreService testScoreService) {
        this.testScoreService = testScoreService;
    }

    /**
     * 根据testmanageId查询testscores的方法：findAll
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/test_score", method = RequestMethod.GET)
    @ResponseBody
    public List<TestScore> findAll(@RequestParam("test_manage_id") Integer test_manage_id, Model model) {
        List<TestScore> testScores = this.testScoreService.findAll();
        model.addAttribute("testManages", testManageService.findById(test_manage_id));
        model.addAttribute("testScores", testScores);
        return testScores;
    }

    /**
     * 详情页面
     */
    @RequestMapping(value = "/test_score_detail", method = RequestMethod.GET)
    public String findById(@RequestParam("testScoreId") Integer testScoreId, Model model) {
        TestScore testScore = testScoreService.findById(testScoreId);
        model.addAttribute("testScore", testScore);
        return "test_score_detail";
    }

    /**
     * 保存方法：save方法
     *
     * @return
     * @paramt_test_manage
     */
    @RequestMapping(value = "/test_score_save/{id}", method = RequestMethod.POST)
    @ResponseBody
    public String save(TestScore testScore, @PathVariable("id") Integer id) {
        TestManage testManage = testManageService.findById(id);
        int sum = testScore.getA1() + testScore.getA2() + testScore.getA3() + testScore.getA4() + testScore.getA5() + testScore.getA6();

        testScore.setSum(sum);
        testScore.setId(0);
        testScore.setTestManage(testManage);
        System.out.println(testScore);
        testScoreService.save(testScore);// 封装到service层

        testManageService.updateState(id,1);
        //return "redirect:/test_score?test_manage_id=" + testScore.getTestManage().getId();// 转发到：test_score.jsp视图
        return "id";// 转发到：test_score.jsp视图
    }

    /**
     * 删除方法：delete方法
     * @param
     * @return
     */


}
