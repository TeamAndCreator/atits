package com.atits.controller;

import java.io.IOException;
import java.math.BigInteger;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.annotation.Resource;
import javax.persistence.criteria.CriteriaBuilder;

import com.atits.entity.*;
import com.atits.entity.System;
import com.atits.service.PersonService;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.atits.service.FilesService;
import com.atits.service.SystemService;
import com.atits.service.TaskService;

@Controller
public class TaskController {

    /**
     * 资源注入：实例化业务层
     */
    @Resource
    private TaskService taskService;// 注入业务层

    @Resource
    private FilesService filesService;// 注入业务层

    @Resource
    private SystemService systemService;

    @Resource
    private PersonService personService;

    public TaskService getTaskService() {
        return taskService;
    }


    public void setTaskService(TaskService taskService) {
        this.taskService = taskService;
    }


    public FilesService getFilesService() {
        return filesService;
    }


    public void setFilesService(FilesService filesService) {
        this.filesService = filesService;
    }


    public SystemService getSystemService() {
        return systemService;
    }


    public void setSystemService(SystemService systemService) {
        this.systemService = systemService;
    }


    /**
     * 跳转添加页面
     *
     * @param
     * @param model
     * @return uri：task_setting 请求方式：GET 方法：task_add 页面：task_add.jsp
     * 请求方式和参数：@RequestParam("id")是id
     */
    @RequestMapping(value = "/sys_task_setting", method = RequestMethod.GET)
    public String task_add(@RequestParam("id") Integer id, Model model) {
        model.addAttribute("systems", systemService.findAll());
        Task task = taskService.findById(id);
        model.addAttribute("task", task);
        return "sys_task_add";// 添加页面：返回到sys_task_add.jsp视图
    }

    /**
     * 跳转添加页面
     *
     * @param model
     * @return
     */

    @RequestMapping(value = "/sys_task_add", method = RequestMethod.GET)
    public String sys_task_add(Model model) {// model理解为一个Map
        // 把task的实体：赋值给task:task=new Task()
        List<System> systems = systemService.findAll();
        model.addAttribute("systems", systems);
        Task task = new Task();
        model.addAttribute("task", task);
        return "sys_task_add";
    }

    /**
     * 查询所有的方法：findAll
     * 体系任务
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/sys_task", method = RequestMethod.GET)
    public String findAll(Model model) {
        List<Task> tasks = this.taskService.findAll();
        model.addAttribute("tasks", tasks);
        return "sys_task";
    }


    @RequestMapping(value = "task_ajax", method = RequestMethod.POST)
    @ResponseBody
    public List<Task> findByBearer(@RequestParam("sysId") Integer sysId, @RequestParam("bearer") String bearer, Model model) {
        List<Task> tasks = taskService.findByBearer(sysId, bearer);
        return tasks;
    }


    /**
     * 查询当前体系所有的方法：findAllBySysId
     *
     * @param model
     * @return
     */
//    @RequestMapping(value = "/sys_task", method = RequestMethod.GET)
//    public String findAll(@RequestParam("sysId") Integer sysId, Model model) {
//        List<Task> tasks = taskService.findAllBySysId(sysId);
//        System system=systemService.findById(sysId);
//        model.addAttribute("system",system);
//        model.addAttribute("tasks", tasks);
//        return "sys_task";
//    }


    /**
     * 查看详情：
     *
     * @param id
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/sys_task_detail", method = RequestMethod.GET)
    public String findById(@RequestParam("id") Integer id, Model model) {
        Task task = taskService.findById(id);
        // 封装视图显示数据，封装到model中
        model.addAttribute("task", task);
        if (task.getFileId() != "") {
            String[] temp = task.getFileId().split(",");// 以逗号拆分字符串
            Integer[] ids = new Integer[temp.length];// int类型数组
            for (int i = 0; i < temp.length; i++) {
                ids[i] = Integer.parseInt(temp[i]);// 整数数组
            }
            List<Files> files = filesService.findByIds(ids);
            if (files.isEmpty()) {
                files = null;
            }
            model.addAttribute("files", files);
        }


        return "sys_task_detail";
    }


    /**
     * 查询当前体系所有的方法：findAllBySysId
     *
     * @param sysId
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/sys_task_ajax", method = RequestMethod.POST)
    public List<Task> findAll(@RequestParam("sysId") Integer sysId, String bearer) {
        List<Task> tasks = taskService.findByBearer(sysId, bearer);
        return tasks;

    }

    /**
     * 保存方法：save方法
     *
     * @param task
     * @return
     */
    @RequestMapping(value = "/sys_task_save", method = RequestMethod.POST)
    public String save(Task task) {
        Set<SubTask> subTask = new HashSet<SubTask>();
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
        task.setTime(df.format(new Date()));//new Date()为获取当前系统时间
        SimpleDateFormat df1 = new SimpleDateFormat("HH:mm:ss");//时分秒
        task.setDate(df1.format(new Date()));
        task.setSubTask(subTask);
//        if (task.getFileId() != "") {
//            String[] ids = task.getFileId().split(",");
//            for (String id : ids) {
//                filesService.updateTimeAndEditor(Integer.valueOf(id), task.getTime(), task.getDate(), task.getBearer().getId(), task.getSystem().getId(), "体系任务");
//            }
//        }

        if (task.getFileId() != "") {
            String[] ids = task.getFileId().split(",");
            for (String id : ids) {
                filesService.updateTimeAndEditor(Integer.valueOf(id), task.getTime(),task.getDate(), task.getBearer().getId(), task.getSystem().getId(), "体系任务");
            }
        }
        taskService.save(task);// 封装到service层
        return "redirect:/sys_task";// 转发到：task.jsp视图
    }

    /**
     * 修改方法：update
     *
     * @param task
     * @return
     */
    @RequestMapping(value = "/sys_task_save", method = RequestMethod.PUT)
    public String update(Task task) {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
        task.setTime(df.format(new Date()));//new Date()为获取当前系统时间
        SimpleDateFormat df1 = new SimpleDateFormat("HH:mm:ss");//时分秒
        task.setDate(df1.format(new Date()));
        taskService.save(task);// 调用保存方法
        return "redirect:/sys_task";// 转发到：task.jsp视图
    }

    /**
     * 批量删除方法：deteles idList可通过 @Pathvariable注解绑定它传过来的值到方法deteles的参数上
     *
     * @param idList
     * @return
     */
    @RequestMapping(value = "/sys_task_deletes/{idList}", method = RequestMethod.DELETE)
    public String deteles(@PathVariable("idList") List<Integer> idList) {
        Task task = taskService.findById(idList.get(0));
        taskService.deletes(idList);
        //java.lang.System.out.println(task.getId());
        return "redirect:/sys_task?sysId=" + task.getSystem().getId();
    }

    /**
     * 更新状态
     *
     * @param id
     * @param val
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/task_state", method = RequestMethod.POST)
    @ResponseBody
    public String updateState(@RequestParam("id") Integer id, @RequestParam("val") Integer val) throws Exception {
        ObjectMapper mapper = new ObjectMapper();// json对象建立
        taskService.updateState(id, val);
        String json = mapper.writeValueAsString(val);// 将map转换成json字符串
        return json;

    }


    @RequestMapping(value = "task_fileId", method = RequestMethod.POST)
    @ResponseBody
    public String deleteFileId(@RequestParam("fileId") String fileId, @RequestParam("id") Integer id) throws IOException {
        ObjectMapper mapper = new ObjectMapper();
        List<Integer> idList = mapper.readValue(fileId, List.class);
        filesService.deletes(idList);
        taskService.updateFileId(id);
        return null;
    }

//    @RequestMapping(value = "task_num", method = RequestMethod.GET)
//    public String taskNum(Model model) {
//        List<Object[]> list = taskService.taskNum();
//        List<HashMap<String, Object>> taskNums = new ArrayList<>();
//        for (Object[] object : list) {
//            HashMap<String, Object> map = new HashMap<>();
//            Integer sysId = (Integer) object[0];
//            String sysName = (String) object[1];
//            BigInteger bigInteger = (BigInteger) object[2];
//            int num = bigInteger.intValue();
//            map.put("sysId", sysId);
//            map.put("sysName", sysName);
//            map.put("num", num);
//            taskNums.add(map);
//        }
//        model.addAttribute("taskNums", taskNums);
//        return "sys_task";
//    }

}
