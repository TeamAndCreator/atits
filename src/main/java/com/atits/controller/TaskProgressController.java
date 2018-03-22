package com.atits.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.atits.entity.*;
import com.atits.entity.System;
import com.atits.service.*;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class TaskProgressController {

    /**
     * 资源注入：实例化业务层
     */
    @Resource
    private TaskProgressService taskProgressService;// 注入业务层

    @Resource
    private SubTaskService subTaskService;

    @Resource
    private TaskService taskService;

    @Resource
    private SystemService systemService;

    @Resource
    private FilesService filesService;


    /**
     * 跳转添加页面
     *
     * @param model
     * @return
     */

    @RequestMapping(value = "/task_progress", method = RequestMethod.GET)
    public String findAll(Model model) {// model理解为一个Map
        // 把task的实体：赋值给task:task=new Task()
        List<System> systems = systemService.findAll();
        List<TaskProgress> taskProgresses = taskProgressService.findAll();
        model.addAttribute("taskProgresses", taskProgresses);
        model.addAttribute("systems", systems);
//        model.addAttribute("taskProgress", new TaskProgress());
        return "task_progress";
    }


    @RequestMapping(value = "/task_progress_sys", method = RequestMethod.GET)
    public String findAll(Model model,@RequestParam("sysId") Integer sysId) {// model理解为一个Map
        // 把task的实体：赋值给task:task=new Task()

        List<TaskProgress> taskProgresses = taskProgressService.findAllBySysId(sysId);
        model.addAttribute("taskProgresses", taskProgresses);
        return "task_progress";
    }

    /**
     * 保存方法：save方法
     *
     * @param taskProgress
     * @return
     */
    @RequestMapping(value = "/task_progress_save", method = RequestMethod.POST)
    @ResponseBody
    public String save(TaskProgress taskProgress,HttpServletRequest request)  {
        java.lang.System.out.println(taskProgress.toString());
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
        taskProgress.setTime(df.format(new Date()));// new Date()为获取当前系统时间
        SimpleDateFormat df1 = new SimpleDateFormat("HH:mm:ss");//设置日期格式
        taskProgress.setDate(df1.format(new Date()));// new Date()为获取当前系统时间
        SubTask subTask= subTaskService.findById(taskProgress.getSubTask().getId());
        Task task =taskService.findById(subTask.getTask().getId());

        if (taskProgress.getFileId() != "") {
            String[] ids = taskProgress.getFileId().split(",");
            for (String id : ids) {
                filesService.updateTimeAndEditor(Integer.valueOf(id), taskProgress.getTime(),taskProgress.getDate(), subTask.getBearer().getId(), task.getSystem().getId(),"工作进展");
            }
        }

        HttpSession session = request.getSession();
        Person person = (Person) session.getAttribute("person");
        ObjectMapper mapper = new ObjectMapper();// json对象建立
        try {
            taskProgressService.save(taskProgress);// 封装到service层
        } catch (Exception e) {
            return "bank";
        }
        return "ok";
    }


    /**
     * 修改方法：save方法
     *
     * @param taskProgress
     * @return
     */
    @RequestMapping(value = "/task_progress_save", method = RequestMethod.PUT)
    public String update(TaskProgress taskProgress) {
        java.lang.System.out.println("updata:"+taskProgress.toString());
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
        taskProgress.setTime(df.format(new Date()));// new Date()为获取当前系统时间
        SimpleDateFormat df1 = new SimpleDateFormat("HH:mm:ss");//设置日期格式
        taskProgress.setDate(df1.format(new Date()));// new Date()为获取当前系统时间
        SubTask subTask= subTaskService.findById(taskProgress.getId());
        Task task =taskService.findById(subTask.getTask().getId());
        if (taskProgress.getFileId() != "") {
            String[] ids = taskProgress.getFileId().split(",");
            for (String id : ids) {
                filesService.updateTimeAndEditor(Integer.valueOf(id), taskProgress.getTime(),taskProgress.getDate(), subTask.getBearer().getId(), task.getSystem().getId(),"工作进展");
            }
        }
        try {
            taskProgressService.save(taskProgress);// 封装到service层
        } catch (Exception e) {
            return "bank";
        }
        return "task_progress";
    }


    @RequestMapping(value = "/task_progress_detail", method = RequestMethod.GET)
    public String findById(@RequestParam("id") Integer id, Model model) {
        TaskProgress taskProgress = taskProgressService.findById(id);
        model.addAttribute("taskProgress", taskProgress);
        return "task_progress_detail";
    }

    /**
     * 更新状态
     *
     * @param id
     * @param val
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/task_progress_state", method = RequestMethod.POST)
    @ResponseBody
    public String updateState(@RequestParam("id") Integer id, @RequestParam("val") Integer val) throws Exception {
        ObjectMapper mapper = new ObjectMapper();// json对象建立
        taskProgressService.updateState(id, val);
        String json = mapper.writeValueAsString(val);// 将map转换成json字符串
        return json;

    }

    /****
     * 删除
     *
     * @return
     */
    @RequestMapping(value = "/task_progress_deletes/{idList}", method = RequestMethod.DELETE)
    public String deteles(@PathVariable("idList") List<Integer> idList, HttpServletRequest request) {
        taskProgressService.deletes(idList);//
        HttpSession session = request.getSession();
        Person person = (Person) session.getAttribute("person");
        return "redirect:/task_progress";
    }

    @RequestMapping(value = "task_progress_fileId", method = RequestMethod.POST)
    @ResponseBody
    public String deleteFileId(@RequestParam("fileId") String fileId, @RequestParam("id") Integer id) throws IOException {
        ObjectMapper mapper = new ObjectMapper();
        List<Integer> idList = mapper.readValue(fileId, List.class);
        filesService.deletes(idList);
        taskProgressService.updateFileId(id);
        String json = mapper.writeValueAsString("删除成功！");
        return json;
    }

    /**
     * 跳转添加页面
     *
     * @param id
     * @param model
     * @return uri：task_setting 请求方式：GET 方法：task_add 页面：task_add.jsp
     * 请求方式和参数：@RequestParam("id")是id
     */
//    @RequestMapping(value = "/task_progress_setting", method = RequestMethod.GET)
//    public String research_progress_add(@RequestParam("id") Integer id, Model model) {
//        model.addAttribute("system", systemService.findAll());
//        model.addAttribute("task", taskProgressService.findById(id));
//        return "task_progress_add";// 添加页面：返回到task_add.jsp视图
//    }


    /**
     * 跳转添加页面
     *
     * @param model
     * @return
     */

    @RequestMapping(value = "/research_progress_add", method = RequestMethod.GET)
    public String research_progress_add(Model model) {// model理解为一个Map
        // 把task的实体：赋值给task:task=new Task()
        model.addAttribute("system", systemService.findAll());
        model.addAttribute("taskProgress", new TaskProgress());
        return "research_progress_add";
    }


    /**
     * 查询所有
     *
     * @param model
     * @return
     */


    @RequestMapping(value = "/sys_research_progress", method = RequestMethod.GET)
    public String findAll(@RequestParam("sysId") Integer id, Model model) {
        List<TaskProgress> taskProgresses = taskProgressService.findAllBySysId(id);
        model.addAttribute("taskProgresses", taskProgresses);
        return "research_progress";

    }


    @RequestMapping(value = "/per_research_progress", method = RequestMethod.GET)
    public String findAll(@RequestParam("sysId") Integer id, @RequestParam("bearer") String bearer, Model model) {
        List<TaskProgress> taskProgresses = taskProgressService.findAllByBearer(id, bearer);
        model.addAttribute("taskProgresses", taskProgresses);
        return "research_progress";

    }

//    @RequestMapping(value = "/research_progress", method = RequestMethod.GET)
//    public String findAll(Model model) {
//        List<TaskProgress> taskProgresses = taskProgressService.findAll();
//        model.addAttribute("taskProgresses", taskProgresses);
//        return "research_progress";
//
//    }


}
