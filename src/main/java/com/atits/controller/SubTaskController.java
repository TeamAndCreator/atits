package com.atits.controller;

import com.atits.entity.*;
import com.atits.service.*;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.lang.System;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Controller
public class SubTaskController {

    /**
     * 资源注入：实例化业务层
     */
    @Resource
    private SubTaskService subTaskService;// 注入业务层

    @Resource
    private TaskService taskService;// 注入业务层
    @Resource
    private FilesService filesService;// 注入业务层
    @Resource
    private PersonService personService;
    @Resource
    private SystemService systemService;


    public SubTaskService getSubTaskService() {
        return subTaskService;
    }


    public void setSubTaskService(SubTaskService subTaskService) {
        this.subTaskService = subTaskService;
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
    @RequestMapping(value = "/sub_task_setting", method = RequestMethod.GET)
    public String task_add(@RequestParam("subTaskId") Integer subTaskId, Model model) {
        SubTask subTask = subTaskService.findById(subTaskId);
        model.addAttribute("persons", personService.findAll());
        model.addAttribute("subTask", subTask);//修改时子任务已有，所以能获取到id
        return "sub_task_add";// 添加页面：返回到task_add.jsp视图
    }

    /**
     * 跳转添加页面
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/sub_task_add", method = RequestMethod.GET)
    public String sys_task_add(@RequestParam("sysId") Integer sysId, @RequestParam("taskId") Integer taskId, Model model) {// model理解为一个Map
        SubTask subTask = new SubTask();
        subTask.setTask(taskService.findById(taskId));
        List<Person> persons = personService.findSysId(sysId);
        model.addAttribute("persons", persons);
        model.addAttribute("subTask", subTask);
        return "sub_task_add";
    }


    /**
     * 查询所有的方法：findAll
     *
     * @param model
     * @return
     */

    @RequestMapping(value = "/sub_task", method = RequestMethod.GET)
    public String findAll(@RequestParam("taskId") Integer taskId, Model model) {
        List<SubTask> subTasks = this.subTaskService.findAll(taskId);
        model.addAttribute("task", taskService.findById(taskId));
//        SubTask subTask = new SubTask();
//        subTask.setTask(taskService.findById(taskId));
        model.addAttribute("subTasks", subTasks);
        return "sub_task";
    }

    @RequestMapping(value = "/sub_three_task", method = RequestMethod.GET)
    public String findByBearerId(@RequestParam("bearerId") Integer bearerId, Model model) {
        List<SubTask> subTasks = this.subTaskService.findByBearerId(bearerId);
        model.addAttribute("subTasks", subTasks);
        return "sub_task";
    }

    /**
     * 详情页面
     */
    @RequestMapping(value = "/sub_task_detail", method = RequestMethod.GET)
    public String findById(@RequestParam("subTaskId") Integer subTaskId, Model model) {
        SubTask subTask = subTaskService.findById(subTaskId);
        if (subTask.getFileId() != "") {
            String[] temp = subTask.getFileId().split(",");// 以逗号拆分字符串
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

        model.addAttribute("subTask", subTask);
        return "sub_task_detail";
    }

    /**
     * 保存方法：save方法
     *
     * @param
     * @return
     */
    @RequestMapping(value = "/sub_task_save", method = RequestMethod.POST)
    public String save(SubTask subTask) {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
        subTask.setTime(df.format(new Date()));//new Date()为获取当前系统时间
        SimpleDateFormat df1 = new SimpleDateFormat("HH:mm:ss");//时分秒
        subTask.setDate(df1.format(new Date()));

        Set<TaskProgress> taskProgress = new HashSet<TaskProgress>();
        subTask.setTaskProgress(taskProgress);
        Task task=taskService.findById(subTask.getTask().getId());

        if (subTask.getFileId() != "") {
            String[] ids = subTask.getFileId().split(",");
            for (String id : ids) {
                filesService.updateTimeAndEditor(Integer.valueOf(id), subTask.getTime(), subTask.getDate(),subTask.getBearer().getId(), task.getSystem().getId(),"工作子任务");
            }
        }
//        subTask.setTask(taskService.findById(subTask.getTask().getId()));
        subTaskService.save(subTask);// 封装到service层
        return "redirect:/sub_task?taskId=" + subTask.getTask().getId();// 转发到：task.jsp视图
    }


    /**
     * 修改方法：update
     *
     * @param
     * @return
     */
    @RequestMapping(value = "/sub_task_save", method = RequestMethod.PUT)
    public String update(SubTask subTask) {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
        subTask.setTime(df.format(new Date()));//new Date()为获取当前系统时间
        SimpleDateFormat df1 = new SimpleDateFormat("HH:mm:ss");//时分秒
        subTask.setDate(df1.format(new Date()));
        Task task=taskService.findById(subTask.getTask().getId());
        if (subTask.getFileId() != "") {
            String[] ids = subTask.getFileId().split(",");
            for (String id : ids) {
                filesService.updateTimeAndEditor(Integer.valueOf(id), subTask.getTime(), subTask.getDate(),subTask.getBearer().getId(), task.getSystem().getId(),"工作子任务");
            }
        }
//      Task task = new Task();
        subTaskService.save(subTask);// 调用保存方法x
        return "redirect:/sub_task?taskId=" + subTask.getTask().getId();// 转发到：task.jsp视图
    }

    /**
     * 批量删除方法：deteles idList可通过 @Pathvariable注解绑定它传过来的值到方法deteles的参数上
     *
     * @param idList
     * @return
     */
    @RequestMapping(value = "/sub_task_deletes/{idList}", method = RequestMethod.DELETE)
    public String deteles(@PathVariable("idList") List<Integer> idList) throws IOException {
        SubTask subTask = subTaskService.findById(idList.get(0));
        subTaskService.deletes(idList);
        return "redirect:/sub_task?taskId=" + subTask.getTask().getId();
    }


    @RequestMapping(value = "/sub_task_ajax", method = RequestMethod.GET)
    @ResponseBody
    public List<SubTask> findAll(@RequestParam("personId") Integer personId) {

        List<SubTask> subTasks = this.subTaskService.findByBearerId(personId);

        return subTasks;
    }

    @RequestMapping(value = "/sub_task_ajax1", method = RequestMethod.GET)
    @ResponseBody
    public List<SubTask> findAll1(@RequestParam("sysId") Integer sysId) {
        List<SubTask> subTasks = this.subTaskService.findAll(sysId);
        return subTasks;
    }


    @RequestMapping(value = "sub_task_fileId", method = RequestMethod.POST)
    @ResponseBody
    public String deleteFileId(@RequestParam("fileId") String fileId, @RequestParam("id") Integer id) throws Exception {
        ObjectMapper mapper = new ObjectMapper();
        List<Integer> idList = mapper.readValue(fileId, List.class);
        filesService.deletes(idList);
        subTaskService.updateFileId(id);
        String json = mapper.writeValueAsString("删除成功");
        return json;
    }


}
