package com.atits.controller;

import com.atits.entity.Expert;
import com.atits.entity.Person;

import com.atits.entity.TestManage;

import com.atits.entity.TestStart;
import com.atits.service.ExpertService;
import com.atits.service.PersonService;
import com.atits.service.TestManageService;
import com.atits.service.TestStartService;
import com.atits.utils.PageUtil;
import com.fasterxml.jackson.databind.ObjectMapper;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.*;


@Controller
public class TestStartController {
    @Resource
    private TestStartService testStartService;
    @Resource
    private ExpertService expertService;
    @Resource
    private PersonService personService;
    @Resource
    private TestManageService testManageService;


    /**
     * 查询所有的方法：findAll
     *
     * @param
     * @return
     */
    @RequestMapping(value = "/test_start_ajax/{params}", method = RequestMethod.GET)
    @ResponseBody
    public String findAll(@PathVariable("params") String params) throws IOException {
        Map<String, String> map = new PageUtil().pageParams(params);
        Long count = 0L;  //查询出来的数量


        //为操作次数加1
        int initEcho = Integer.parseInt(map.get("sEcho")) + 1;
        //     count = testStartService.findByPage(Integer
//                .parseInt(iDisplayStart), Integer.parseInt(iDisplayLength),sSearch);
        List<TestStart> testStarts = testStartService.findByPage(Integer
                .parseInt(map.get("iDisplayStart")), Integer.parseInt(map.get("iDisplayLength")));

        List<Map> list = new ArrayList<Map>();
        for (TestStart testStart : testStarts) {
            Map<String, Object> map1 = new HashMap<String, Object>();
            map1.put("testStarts", testStart);
            if (testStart.getEptId() != null) {
                String idList = testStart.getEptId();
                List<Expert> experts = expertService.findById(idList);
                map1.put("experts", experts);
            } else {
                map.put("experts", null);
            }
            if (testStart.getSysperId() != null) {
                String idList1 = testStart.getSysperId();
                List<Person> sysPers = personService.findSysperById(idList1);
                map1.put("sysPers", sysPers);
            } else {
                map1.put("sysPers", null);
            }
            list.add(map1);
        }


//        System.out.println(testStarts.toString());
        ObjectMapper mapper = new ObjectMapper();// json对象建立
        JSONObject getObj = new JSONObject();
        //HashMap<String,Object> getObj=new HashMap<>();
        getObj.put("aaData", mapper.writeValueAsString(list));
        getObj.put("sEcho", initEcho);// 不知道这个值h有什么用,有知道的请告知一下
        getObj.put("iTotalRecords", testStarts.size());//实际的行数
        getObj.put("iTotalDisplayRecords", testStarts.size());//显示的行数,这个要和上面写的一样

        return getObj.toString();
    }

    @RequestMapping(value = "/test_start", method = RequestMethod.GET)
    public String findAll(Model model) {
        List<TestStart> testStarts = testStartService.findAll();
        List<Map> list = new ArrayList<Map>();
        for (TestStart testStart : testStarts) {
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("testStarts", testStart);
            if (testStart.getEptId() != null) {
                String idList = testStart.getEptId();
                List<Expert> experts = expertService.findById(idList);
                map.put("experts", experts);
            } else {
                map.put("experts", null);
            }
            if (testStart.getSysperId() != null) {
                String idList1 = testStart.getSysperId();
                List<Person> sysPers = personService.findSysperById(idList1);
                map.put("sysPers", sysPers);
            } else {
                map.put("sysPers", null);
            }
            list.add(map);
        }
        model.addAttribute("List", list);
        return "test_start";
    }

    @RequestMapping(value = "/test_start_findAll_ajax", method = RequestMethod.GET)
    @ResponseBody
    public List<Map> findAll() {
        List<TestStart> testStarts = testStartService.findAll();
        List<Map> list = new ArrayList<Map>();
        for (TestStart testStart : testStarts) {
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("testStarts", testStart);
            if (testStart.getEptId() != null) {
                String idList = testStart.getEptId();
                List<Expert> experts = expertService.findById(idList);
                map.put("experts", experts);
            } else {
                map.put("experts", null);
            }
            if (testStart.getSysperId() != null) {
                String idList1 = testStart.getSysperId();
                List<Person> sysPers = personService.findSysperById(idList1);
                map.put("sysPers", sysPers);
            } else {
                map.put("sysPers", null);
            }
            list.add(map);
        }
        return list;
    }

    @RequestMapping(value = "/test_start_add", method = RequestMethod.GET)
    public String start_add(@RequestParam("sysId") Integer sysId, Model model) {
        List<Expert> experts = expertService.findAll();//外聘专家
        model.addAttribute("experts", experts);
        List<Person> sys_pers = personService.findSysId(sysId);//体系内部人员
        model.addAttribute("sys_pers", sys_pers);
        model.addAttribute("testStart", new TestStart());
        return "test_start_add";
    }

    @RequestMapping(value = "/testStart_save", method = RequestMethod.POST)
    public String save(TestStart testStart) {
        testStartService.save(testStart);
        return "redirect:/test_start";
    }


    /**
     * 更新状态
     *
     * @param id
     * @param val
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/testStart_state", method = RequestMethod.POST)
    @ResponseBody
    public String updateState(@RequestParam("id") Integer id, @RequestParam("val") Integer val) throws Exception {
        ObjectMapper mapper = new ObjectMapper();// json对象建立
        TestStart testStart = testStartService.findById(id);
        List<Expert> experts = new ArrayList<Expert>();
        List<Person> persons = new ArrayList<Person>();
        if (testStart.getEptId() != null) {
            String eptIds = testStart.getEptId();
            experts = expertService.findById(eptIds);
        }
        if (testStart.getSysperId() != null) {
            String sysperIds = testStart.getSysperId();
            persons = personService.findSysperById(sysperIds);
        }

        /**
         * 第一个for循环是评分人，第二个for循环是被评分人
         */

        for (int i = 0; i < experts.size(); i++) {
            for (int j = 0; j < persons.size(); j++) {
                if (persons.get(j).getJob().contains("首席")) {
                    TestManage testManage = new TestManage();
                    testManage.setDate(testStart.getDate());
                    testManage.setYear(testStart.getYear());
                    testManage.setSystem(testStart.getSystem());
                    testManage.setEptExaminer(experts.get(i));
                    testManage.setExamedner(persons.get(j));
                    testManage.setExaminerOfJob(experts.get(i).getPost());
                    testManage.setExamednerOfJob(persons.get(j).getJob());

                    testManageService.save(testManage);
                }
            }
        }

        for (int i = 0; i < persons.size(); i++) {
            for (int j = 0; j < persons.size(); j++) {

                if (persons.get(i).equals(persons.get(j))) {
                    continue;
                }
                TestManage testManage = new TestManage();
                testManage.setDate(testStart.getDate());
                testManage.setYear(testStart.getYear());
                testManage.setSystem(testStart.getSystem());
                testManage.setPerExaminer(persons.get(i));
                testManage.setExamedner(persons.get(j));

                String maxJob = getMaxJob(persons.get(i).getJob());
                testManage.setExaminerOfJob(maxJob);
                maxJob = getMaxJob(persons.get(j).getJob());
                testManage.setExamednerOfJob(maxJob);
                testManageService.save(testManage);

            }
        }

        testStartService.updateState(id, val);
//        TestManage testManage =new TestManage();
//        testManage.setExamedner();
        String json = mapper.writeValueAsString(val);// 将map转换成json字符串
        return json;
    }

    private String getMaxJob(String job) {
        String maxJob = "";
        if ((job.contains("首席专家")) && (!job.contains("副"))) {
            maxJob = "首席专家";
        } else if (job.contains("副首席专家")) {
            maxJob = "副首席专家";
        } else if (job.contains("岗位专家")) {
            maxJob = "岗位专家";
        } else {
            maxJob = "综合试验站站长";
        }

        return maxJob;
    }


}
