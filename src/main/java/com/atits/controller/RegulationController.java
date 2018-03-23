package com.atits.controller;

import com.atits.entity.Files;
import com.atits.entity.Person;
import com.atits.entity.Regulation;
import com.atits.service.FilesService;
import com.atits.service.RegulationService;
import com.atits.service.SystemService;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * 说明：是控制层--页面显示层
 *
 * @author YXX
 * @Date 2017年6月20日
 * @类型 DynamicController
 */
@Controller
public class RegulationController {


    /**
     * 资源注入：实例化业务层
     */
    @Resource
    private RegulationService regulationService;// 注入业务层

    @Resource
    private FilesService filesService;// 注入业务层

    @Resource
    private SystemService systemService;
    // get和set方法：

    public RegulationService getRegulationService() {
        return regulationService;
    }

    public void setRegulationService(RegulationService regulationService) {
        this.regulationService = regulationService;
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
     * @param id
     * @param model
     * @return uri：dynamic_setting 请求方式：GET 方法：dynamic_add 页面：dynamic_add.jsp
     * 请求方式和参数：@RequestParam("id")是id
     */
    @RequestMapping(value = "/regulation_setting", method = RequestMethod.GET)
    public String regulation_add(@RequestParam("id") Integer id, Model model) {
        model.addAttribute("system", systemService.findAll());
        model.addAttribute("regulation", regulationService.findById(id));
        return "regulation_add";// 添加页面：返回到dynamic_add.jsp视图
    }

    @RequestMapping(value = "/regulation_add", method = RequestMethod.GET)
    public String regulation_add(Model model) {// model理解为一个Map
        model.addAttribute("system", systemService.findAll());
        model.addAttribute("regulation", new Regulation());
        return "regulation_add";
    }

    /**
     * 查看详情：
     *
     * @param id
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/regulation_detail", method = RequestMethod.GET)
    public String findById(@RequestParam("id") Integer id, Model model)
             {
        Regulation regulation = regulationService.findById(id);

        if (!regulation.getFileId().equals("")) {
            String[] temp = regulation.getFileId().split(",");// 以逗号拆分字符串
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
        model.addAttribute("regulation", regulation);
        return "regulation_detail";
    }

    /**
     * 批量删除方法：deteles idList可通过 @Pathvariable注解绑定它传过来的值到方法deteles的参数上
     *
     * @param idList
     * @return
     */
    @RequestMapping(value = "/regulation_deletes/{idList}", method = RequestMethod.DELETE)
    public String deletes(@PathVariable("idList") List<Integer> idList, HttpServletRequest request) throws IOException {
        regulationService.deletes(idList);
        HttpSession session = request.getSession();
        Person person = (Person) session.getAttribute("person");
        return "redirect:/regulation";

    }

    /**
     * 保存方法：save方法
     *
     * @param regulation
     * @return
     */
    @RequestMapping(value = "/regulation_save", method = RequestMethod.POST)
    public String save(Regulation regulation, HttpServletRequest request) {
        //上传时间为系统时间
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
        SimpleDateFormat df1 = new SimpleDateFormat("HH:mm:ss");//设置时间点格式
        regulation.setTime(df.format(new Date()));// new Date()为获取当前系统时间
        regulation.setDate(df1.format(new Date()));

        if (regulation.getFileId() != "") {
            String[] ids = regulation.getFileId().split(",");
            for (String id : ids) {
                filesService.updateTimeAndEditor(Integer.valueOf(id), regulation.getTime(), regulation.getDate(), regulation.getEditor().getId(), regulation.getSystem().getId(), "规章制度");
            }
        }
        regulationService.save(regulation);// 封装到service层
        HttpSession session = request.getSession();
        Person person = (Person) session.getAttribute("person");
        return "redirect:/regulation";
    }

    /**
     * 修改方法：update
     *
     * @param regulation
     * @return
     */
    @RequestMapping(value = "/regulation_save", method = RequestMethod.PUT)
    public String update(Regulation regulation, HttpServletRequest request) {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
        SimpleDateFormat df1 = new SimpleDateFormat("HH:mm:ss");//设置时间点格式
        regulation.setTime(df.format(new Date()));// new Date()为获取当前系统时间
        regulation.setDate(df1.format(new Date()));

        if (regulation.getFileId() != "") {
            String[] ids = regulation.getFileId().split(",");
            for (String id : ids) {
                filesService.updateTimeAndEditor(Integer.valueOf(id), regulation.getTime(), regulation.getDate(), regulation.getEditor().getId(), regulation.getSystem().getId(), "规章制度");
            }
        }
        regulationService.save(regulation);// 调用保存方法
        return "redirect:/regulation";
    }

    /**
     * 更新状态
     *
     * @param id
     * @param val
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/regulation_state", method = RequestMethod.POST)
    @ResponseBody
    public String updateState(@RequestParam("id") Integer id, @RequestParam("val") Integer val) throws Exception {
        ObjectMapper mapper = new ObjectMapper();// json对象建立
        regulationService.updateState(id, val);
        String json = mapper.writeValueAsString(val);// 将map转换成json字符串
        return json;

    }


    /**
     * 查询所有的方法：findAll
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/regulation", method = RequestMethod.GET)
    public String findAll(Model model) {
        List<Regulation> regulations = regulationService.findAll();
        model.addAttribute("regulations", regulations);// 所有的实体：dynamics
        return "regulation";
    }


    @RequestMapping(value = "regulation_fileId", method = RequestMethod.POST)
    @ResponseBody
    public String deleteFileId(@RequestParam("fileId") String fileId, @RequestParam("id") Integer id) throws Exception {
        ObjectMapper mapper = new ObjectMapper();// json对象建立
        List<Integer> idList = mapper.readValue(fileId, List.class);
        filesService.deletes(idList);//
        regulationService.updateFileId(id);
        String json = mapper.writeValueAsString("删除成功");// 将map转换成json字符串
        return json;
    }

}
