package com.atits.controller;


import com.atits.entity.*;
import com.atits.service.TestAllService;
import com.atits.service.TestManageService;
import com.atits.service.TestStartService;
import com.atits.service.TestWeightService;
import com.atits.utils.PageUtil;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class TestAllController {
    @Resource
    private TestAllService testAllService;

    @Resource
    private TestStartService testStartService;

    @Resource
    private TestManageService testManageService;



    /**
     * 保存方法：save方法
     *
     * @return
     */
    @RequestMapping(value = "/test_all_save_ajax", method = RequestMethod.GET)
    @ResponseBody
    public List<TestStart> save(HttpServletRequest request) {
        List<TestStart> testStarts = new ArrayList<TestStart>();
        HttpSession session = request.getSession();
        Person person = (Person) session.getAttribute("person");
        testStarts = testStartService.findSysperIdBysysId(person.getSystem().getId());
        String[] sysperId=testStarts.get(0).getSysperId().split(",");
        for (int i=0;i<sysperId.length;i++){
//            List<TestManage> list =testManageService.findById(sysperId[i]);
        }
        return testStarts;
    }

    @RequestMapping(value = "/test_all_find_all_ajax", method = RequestMethod.GET)
    @ResponseBody
    public String findAll(@RequestParam("params") String params) throws JsonProcessingException {
        PageUtil pageUtil = new PageUtil();
        Map<String, String> map = pageUtil.pageParams(params);
        //为操作次数加1
        int initEcho = Integer.parseInt(map.get("sEcho")) + 1;
        List<TestAll> testAlls = testAllService.findByPage(Integer
                .parseInt(map.get("iDisplayStart")), Integer.parseInt(map.get("iDisplayLength")));
        Long count = testAllService.findByPageCunnt(); //查询出来的数量


        ObjectMapper mapper = new ObjectMapper();// json对象建立
        JSONObject getObj = new JSONObject();
        getObj.put("aaData", mapper.writeValueAsString(testAlls));
        getObj.put("sEcho", initEcho);// 不知道这个值h有什么用,有知道的请告知一下
        getObj.put("iTotalRecords", count);//实际的行数
        getObj.put("iTotalDisplayRecords", count);//显示的行数,这个要和上面写的一样

        return getObj.toString();
    }
}
