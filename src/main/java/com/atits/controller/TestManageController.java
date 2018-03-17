package com.atits.controller;

import com.atits.entity.Expert;
import com.atits.entity.TestManage;
import com.atits.entity.TestStart;
import com.atits.service.ExpertService;
import com.atits.service.TestManageService;
import com.atits.service.TestStartService;
import com.atits.utils.PageUtil;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
public class TestManageController {
    @Resource
    private TestManageService testManageService;
    @Resource
    private TestStartService testStartService;
    @Resource
    private ExpertService expertService;

    @RequestMapping(value = "/test_manage_find_all_ajax", method = RequestMethod.GET)
    @ResponseBody
    public String findAll(@RequestParam("params") String params) throws JsonProcessingException {
        PageUtil pageUtil = new PageUtil();
        Map<String, String> map = pageUtil.pageParams(params);
        //为操作次数加1
        int initEcho = Integer.parseInt(map.get("sEcho")) + 1;
//        count = testManageService.findByPageCunnt();
        List<TestManage> persons = testManageService.findByPage(Integer
                .parseInt(map.get("iDisplayStart")), Integer.parseInt(map.get("iDisplayLength")));
        Long count = testManageService.findByPageCunnt(); //查询出来的数量

        // 执行搜索，把不属于关键字部分内容remove掉
        String sSearch = map.get("sSearch");
        if (sSearch != null && !sSearch.equals("")) {
            Iterator it = persons.iterator();
            while (it.hasNext()) {
                String[] s = (String[]) it.next();

                if (!s[0].contains(sSearch) || !s[1].contains(sSearch)) {
                    it.remove();
                }
            }
        }


        ObjectMapper mapper = new ObjectMapper();// json对象建立
        JSONObject getObj = new JSONObject();
        //HashMap<String,Object> getObj=new HashMap<>();
        getObj.put("aaData", mapper.writeValueAsString(persons));
        getObj.put("sEcho", initEcho);// 不知道这个值h有什么用,有知道的请告知一下
        getObj.put("iTotalRecords", count);//实际的行数
        getObj.put("iTotalDisplayRecords", count);//显示的行数,这个要和上面写的一样

        return getObj.toString();

    }


    /**
     * 保存方法：save方法
     *
     * @param testManage
     * @return
     */
    @RequestMapping(value = "/test_manage_save", method = RequestMethod.POST)
    @ResponseBody
    public void save(TestManage testManage) {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
//        SimpleDateFormat df1 = new SimpleDateFormat("HH:mm:ss");//设置时间点格式
//        testManage.setTime(df1.format(new Date()));// new Date()为获取当前系统时间
        testManage.setDate(df.format(new Date()));//为获取当前系统时间点
        System.out.println(testManage.toString());
        testManageService.save(testManage);// 封装到service层
    }

//    @RequestMapping(value = "/test_manage_ajax", method = RequestMethod.GET)
//    @ResponseBody
//    public List<TestManage> findAll() {
//        List<TestManage> testManages = testManageService.findAll();
//        return testManages;
//
//    }

    @RequestMapping("/test_weight")
    public String setWeight() {

        return "test_weight";
    }

    @RequestMapping("/test_all")
    public String testAll() {

        return "test_all";
    }

}
