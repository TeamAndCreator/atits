package com.atits.controller;


import com.atits.entity.Msg;
import com.atits.entity.TestWeight;
import com.atits.service.TestWeightService;
import com.atits.utils.PageUtil;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Controller
public class TestWeightController {
    @Resource
    private TestWeightService testWeightService;


    /**
     * 保存方法：save方法
     *
     * @param testWeight
     * @return
     */
    @RequestMapping(value = "/test_weight_save_ajax", method = RequestMethod.POST)
    @ResponseBody
    public Msg save(TestWeight testWeight) {
        testWeightService.save(testWeight);
        return Msg.success();
    }

    @RequestMapping(value = "/test_weight_find_all_ajax", method = RequestMethod.GET)
    @ResponseBody
    public String findAll(@RequestParam("params") String params) throws JsonProcessingException {
        PageUtil pageUtil = new PageUtil();
        Map<String, String> map = pageUtil.pageParams(params);
        //为操作次数加1
        int initEcho = Integer.parseInt(map.get("sEcho")) + 1;
        List<TestWeight> testWeights = testWeightService.findByPage(Integer
                .parseInt(map.get("iDisplayStart")), Integer.parseInt(map.get("iDisplayLength")));
        Long count = testWeightService.findByPageCunnt(); //查询出来的数量


        ObjectMapper mapper = new ObjectMapper();// json对象建立
        JSONObject getObj = new JSONObject();
        getObj.put("aaData", mapper.writeValueAsString(testWeights));
        getObj.put("sEcho", initEcho);// 不知道这个值h有什么用,有知道的请告知一下
        getObj.put("iTotalRecords", count);//实际的行数
        getObj.put("iTotalDisplayRecords", count);//显示的行数,这个要和上面写的一样

        return getObj.toString();
    }


    @RequestMapping(value = "/test_weight_deletes/{idList}", method = RequestMethod.DELETE)
    @ResponseBody
    public Msg deletes(@PathVariable List<Integer> idList) {
        System.out.println(idList.toString());
        try {
            testWeightService.deletes(idList);
            return Msg.success();
        } catch (Exception e) {
            return Msg.fail();
        }
    }
}
