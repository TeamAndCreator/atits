package com.atits.controller;

import java.io.IOException;
import java.lang.System;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.atits.entity.*;
import com.atits.service.*;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;////封装视图显示数据，封装到model中 
import org.springframework.web.bind.annotation.*;

/**
 * 说明：是控制层--页面显示层
 *
 * @author YXX
 * @Date 2017年6月20日
 * @类型 DynamicController
 */
@Controller
public class DynamicController {

    /**
     * 资源注入：实例化业务层
     */
    @Resource
    private DynamicService dynamicService;// 注入业务层

    @Resource
    private FilesService filesService;// 注入业务层

    @Resource
    private SystemService systemService;

    @Resource
    private LaboratoryService laboratoryService;


    // get和set方法：

    public DynamicService getDynamicService() {
        return dynamicService;
    }

    public void setDynamicService(DynamicService dynamicService) {
        this.dynamicService = dynamicService;
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

    public LaboratoryService getLaboratoryService() {
        return laboratoryService;
    }

    public void setLaboratoryService(LaboratoryService laboratoryService) {
        this.laboratoryService = laboratoryService;
    }

    /**
     * 跳转添加页面
     *
     * @param id
     * @param model
     * @return uri：dynamic_setting 请求方式：GET 方法：dynamic_add 页面：dynamic_add.jsp
     * 请求方式和参数：@RequestParam("id")是id
     */
    @RequestMapping(value = "/dynamic_setting", method = RequestMethod.GET)
    public String dynamic_add(@RequestParam("id") Integer id, Model model) {
        model.addAttribute("system", systemService.findAll());
        model.addAttribute("dynamic", dynamicService.findById(id));
        return "dynamic_add";// 添加页面：返回到dynamic_add.jsp视图
    }

    /**
     * 跳转添加页面
     *
     * @param model
     * @return
     */

    @RequestMapping(value = "/dynamic_add", method = RequestMethod.GET)
    public String dynamic_add(Model model) {// model理解为一个Map
        // 把dynamic的实体：赋值给dynamic：dynamic=new Dynamic()
        model.addAttribute("system", systemService.findAll());
        model.addAttribute("dynamic", new Dynamic());
        return "dynamic_add";
    }

    /**
     * 查看详情：
     *
     * @param id
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/dynamic_detail", method = RequestMethod.GET)
    public String findById(@RequestParam("id") Integer id, Model model) throws Exception {
        Dynamic dynamic = dynamicService.findById(id);

        if (dynamic.getFileId() != "") {
            String[] temp = dynamic.getFileId().split(",");// 以逗号拆分字符串
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
        // 封装视图显示数据，封装到model中
        model.addAttribute("dynamic", dynamic);
        return "dynamic_detail";
    }

    /**
     * 批量删除方法：deteles idList可通过 @Pathvariable注解绑定它传过来的值到方法deteles的参数上
     *
     * @param idList
     * @return
     */
    @RequestMapping(value = "/dynamic_deletes/{idList}", method = RequestMethod.DELETE)
    public String deteles(@PathVariable("idList") List<Integer> idList, HttpServletRequest request)throws IOException {
        dynamicService.deletes(idList);//
        HttpSession session = request.getSession();
        Person person = (Person) session.getAttribute("person");
        return "redirect:/dynamic";
    }

    /**
     * 保存方法：save方法
     *
     * @param dynamic
     * @return
     */
    @RequestMapping(value = "/dynamic_save", method = RequestMethod.POST)
    public String save(Dynamic dynamic, HttpServletRequest request) {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
        SimpleDateFormat df1 = new SimpleDateFormat("HH:mm:ss");//设置时间点格式
        dynamic.setTime(df.format(new Date()));// new Date()为获取当前系统时间
        dynamic.setDate(df1.format(new Date()));//获取当前时间点

        if (dynamic.getFileId() != "") {
            String[] ids = dynamic.getFileId().split(",");
            for (String id : ids) {
                filesService.updateTimeAndEditor(Integer.valueOf(id), dynamic.getTime(),dynamic.getDate(), dynamic.getEditor().getId(), dynamic.getSystem().getId(), "体系动态");
            }
        }
        dynamicService.save(dynamic);
        HttpSession session = request.getSession();
        Person person = (Person) session.getAttribute("person");
        return "redirect:/dynamic";

    }

    /**
     * 修改方法：update
     *
     * @param dynamic
     * @return
     */
    @RequestMapping(value = "/dynamic_save", method = RequestMethod.PUT)
    public String update(Dynamic dynamic, HttpServletRequest request) {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
        SimpleDateFormat df1 = new SimpleDateFormat("HH:mm:ss");//设置时间点格式
        dynamic.setTime(df.format(new Date()));// new Date()为获取当前系统时间
        dynamic.setDate(df1.format(new Date()));//为获取当前系统时间点
        if (dynamic.getFileId() != "") {
            String[] ids = dynamic.getFileId().split(",");
            for (String id : ids) {
                filesService.updateTimeAndEditor(Integer.valueOf(id), dynamic.getTime(), dynamic.getDate(),dynamic.getEditor().getId(), dynamic.getSystem().getId(), "体系动态");
            }
        }
        dynamicService.save(dynamic);// 调用保存方法
        return "redirect:/dynamic";
    }


    @RequestMapping(value = "dynamic_fileId", method = RequestMethod.POST)
    @ResponseBody
    public String deleteFileId(@RequestParam("fileId") String fileId, @RequestParam("id") Integer id) throws Exception {
        ObjectMapper mapper = new ObjectMapper();
        List<Integer> idList = mapper.readValue(fileId, List.class);
        filesService.deletes(idList);
        dynamicService.updateFileId(id);
        String json = mapper.writeValueAsString("删除成功");
        return json;
    }


    /**
     * 查询所有的方法：findAll
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/dynamic", method = RequestMethod.GET)
    public String findAll(Model model) {
        List<Dynamic> dynamics = this.dynamicService.findAll();
        model.addAttribute("dynamics", dynamics);// 所有的实体：dynamics
        return "dynamic";
    }


    /**
     * 查询当前体系所有的方法：findAllBySysId
     *
     * @param model
     * @return
     */
//    @RequestMapping(value = "/sys_dynamic", method = RequestMethod.GET)
//    public String findAll(@RequestParam("sysId") Integer sysId, Model model) {
//        List<Dynamic> dynamics = dynamicService.findAllBySysId(sysId);
//        model.addAttribute("dynamics", dynamics);
//        return "dynamic";
//    }

    /**
     * 更新状态
     *
     * @param id
     * @param val
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/dynamic_state", method = RequestMethod.POST)
    @ResponseBody
    public String updateState(@RequestParam("id") Integer id, @RequestParam("val") Integer val) throws Exception {
        ObjectMapper mapper = new ObjectMapper();// json对象建立

        dynamicService.updateState(id, val);
        String json = mapper.writeValueAsString(val);// 将map转换成json字符串
        return json;

    }


    /**
     * 分页工具类：
     *
     * @param page
     * @param model
     * @return
     */
    // @RequestMapping(value="",method = RequestMethod.GET )
    public String findByPage(@RequestParam("page") String page, Model model) {
        // 初始化：
        int pageSize = 8;
        // 调用查询所有dynamic信息:dynamics
        List<Dynamic> dynamics = this.dynamicService.findAll();
        // 查询到总信息量
        model.addAttribute("dynamicNum", dynamics.size());
        // 总页数
        int pageTimes;

        if (dynamics.size() % pageSize == 0) {
            pageTimes = dynamics.size() / pageSize;
        } else {
            pageTimes = dynamics.size() / pageSize + 1;
        }

        model.addAttribute("pageTimes", pageTimes);
        // 每页开始的第几条记录；
        int startRow = (Integer.parseInt(page) - 1) * pageSize;
        dynamics = this.dynamicService.findByPage(startRow, pageSize);
        // 把页数转化数字，赋值给currentPage
        model.addAttribute("currentPage", Integer.parseInt(page));
        // 封装视图显示数据，封装到model中
        model.addAttribute("dynamics", dynamics);

        return "dynamic";
    }

}
