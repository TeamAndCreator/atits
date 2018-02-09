package com.atits.controller;

import com.atits.entity.Expert;
import com.atits.entity.Person;

import com.atits.entity.TestManage;

import com.atits.entity.TestStart;
import com.atits.service.ExpertService;
import com.atits.service.PersonService;
import com.atits.service.TestStartService;
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


    /**
     * 查询所有的方法：findAll
     *
     * @param
     * @return
     */
    @RequestMapping(value = "/findAll/{params}", method = RequestMethod.GET)
    @ResponseBody
    public String findAll(@PathVariable("params") String params) throws IOException {

//        System.out.println(params);
        JSONArray jsonarray = JSONArray.fromObject(params);
        // 生成20条测试数据

        String sEcho = "";// 记录操作的次数  每次加1
        String iDisplayStart = "";// 起始
        String iDisplayLength = "";// size
        String sSearch = "";// 搜索的关键字
        int count = 0;  //查询出来的数量

        for (int i = 0; i < jsonarray.size(); i++) {

            JSONObject obj = (JSONObject) jsonarray.get(i);
            if (obj.get("name").equals("sEcho"))
                sEcho = obj.get("value").toString();
            if (obj.get("name").equals("iDisplayStart"))
                iDisplayStart = obj.get("value").toString();
            if (obj.get("name").equals("iDisplayLength"))
                iDisplayLength = obj.get("value").toString();
            if (obj.get("name").equals("sSearch"))
                sSearch = obj.get("value").toString();
        }

        //为操作次数加1
        int initEcho = Integer.parseInt(sEcho) + 1;
        //     count = testStartService.findByPage(Integer
//                .parseInt(iDisplayStart), Integer.parseInt(iDisplayLength),sSearch);
        List<TestStart> testStarts = testStartService.findByPage(Integer
                .parseInt(iDisplayStart), Integer.parseInt(iDisplayLength));

//        System.out.println(testStarts.toString());
        ObjectMapper mapper = new ObjectMapper();// json对象建立
        JSONObject getObj = new JSONObject();
        //HashMap<String,Object> getObj=new HashMap<>();
        getObj.put("aaData", mapper.writeValueAsString(testStarts));
        getObj.put("sEcho", initEcho);// 不知道这个值h有什么用,有知道的请告知一下
        getObj.put("iTotalRecords", testStarts.size());//实际的行数
        getObj.put("iTotalDisplayRecords", testStarts.size());//显示的行数,这个要和上面写的一样

        return getObj.toString();
    }

@RequestMapping(value = "/test_start", method = RequestMethod.GET)
public String findAll(Model model) {
    List<TestStart> testStarts = testStartService.findAll();
    List<Map> list=new ArrayList<Map>();
    for (TestStart testStart:testStarts){
    Map<String,Object> map=new HashMap<String,Object>();
    map.put("testStarts",testStart);
            if (testStart.getEptId() != null){
                String idList=testStart.getEptId();
                List<Expert> experts = expertService.findById(idList);
                map.put("experts",experts);
            }else{
                map.put("experts",null);
            }
        list.add(map);
        }
    model.addAttribute("List",list);

    List<Map> list1 = new ArrayList<Map>();//获取内部人员
    for (TestStart testStart:testStarts){
        Map<String,Object> map1=new HashMap<String,Object>();
        map1.put("testStarts",testStart);
        if (testStart.getSysperId()!= null){
            String idList1 = testStart.getSysperId();
            List<Person> sysPers = personService.findSysperById(idList1);
            map1.put("sysPers",sysPers);
        }else{
            map1.put("sysPers",null);
        }
        list1.add(map1);
    }
    model.addAttribute("List1",list1);

    return "test_start";
}

    @RequestMapping(value = "/test_start_ajax",method = RequestMethod.GET)
    @ResponseBody
    public List<TestStart> findAll() {
        List<TestStart> testStarts = testStartService.findAll();
        return testStarts;
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

    /****
     * 删除
     *
     * @return
     */

    @RequestMapping(value = "testStart_deletes/{idList}", method = RequestMethod.DELETE)
    public String deletes(@PathVariable("idList") List<Integer> idList, HttpServletRequest request) throws IOException {
        testStartService.deletes(idList);
        HttpSession session = request.getSession();
        return "redirect:/test_start";
    }

    /****
     * 保存
     * 参与考评人员
     * @return
     */

    @RequestMapping(value = "testStart_pers/{idList}", method = RequestMethod.DELETE)
    public String testPers(@PathVariable("idList") List<Integer> idList, HttpServletRequest request) throws IOException {
        personService.savePers(idList);
        HttpSession session = request.getSession();
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
//        TestStart testStart= testStartService.findById(id);
//        String expert=testStart.getEptId();

        testStartService.updateState(id, val);
//        TestManage testManage =new TestManage();
//        testManage.setExamedner();
        String json = mapper.writeValueAsString(val);// 将map转换成json字符串
        return json;
    }


}
