package com.atits.controller;

import com.atits.entity.Files;
import com.atits.entity.Report;
import com.atits.entity.Person;
import com.atits.service.FilesService;
import com.atits.service.ReportService;
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


@Controller
public class ReportController extends Thread {


    @Resource
    private ReportService reportService;

    @Resource
    private FilesService filesService;

    @Resource
    private SystemService systemService;// 注入业务层


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
     * @return
     */

    @RequestMapping(value = "/report_setting", method = RequestMethod.GET)
    public String report_add(@RequestParam("id") Integer id, Model model) {
        model.addAttribute("system", systemService.findAll());
        model.addAttribute("report", reportService.findById(id));
        return "report_add";
    }


    /**
     * 跳转添加页面
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/report_add", method = RequestMethod.GET)
    public String report_add(Model model) {
        model.addAttribute("system", systemService.findAll());
//        System.out.println(systemService.findAll());
        model.addAttribute("report", new Report());
        return "report_add";
    }

    /**
     * 查看详情
     *
     * @param id
     * @param model
     * @return
     */

    @RequestMapping(value = "/report_detail", method = RequestMethod.GET)
    public String findById(@RequestParam("id") Integer id, Model model) {
        Report report = reportService.findById(id);

        if (report.getFileId() != "") {
            String[] temp = report.getFileId().split(",");// 以逗号拆分字符串
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

        model.addAttribute("report", report);
        return "report_detail";

    }

    /****
     * 删除
     *
     * @return
     */
    @RequestMapping(value = "/report_deletes/{idList}", method = RequestMethod.DELETE)
    public String deletes(@PathVariable("idList") List<Integer> idList, HttpServletRequest request) throws IOException {
        reportService.deletes(idList);
        HttpSession session = request.getSession();
        Person person = (Person) session.getAttribute("person");
        return "redirect:/report";

    }

    /****
     * 保存
     *
     * @return
     */
    @RequestMapping(value = "/report_save", method = RequestMethod.POST)
    public String save(Report report, HttpServletRequest request) {

        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
        SimpleDateFormat df1 = new SimpleDateFormat("HH:mm:ss");//设置时间点格式
        report.setDate(df1.format(new Date()));
        report.setTime(df.format(new Date()));// new Date()为获取当前系统时间
        if (!report.getFileId().equals("")) {
            String[] ids = report.getFileId().split(",");
            for (String id : ids) {
                filesService.updateTimeAndEditor(Integer.valueOf(id), report.getTime(), report.getDate(), report.getEditor().getId(), report.getSystem().getId(), "通知公告");
            }
        }
        reportService.save(report);
        HttpSession session = request.getSession();
        Person person = (Person) session.getAttribute("person");
        return "redirect:/report";

    }

    /****
     * 修改
     *
     * @return
     */
    @RequestMapping(value = "/report_save", method = RequestMethod.PUT)
    public String update(Report report) {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
        SimpleDateFormat df1 = new SimpleDateFormat("HH:mm:ss");//设置时间点格式
        report.setTime(df.format(new Date()));// new Date()为获取当前系统时间
        report.setDate(df1.format(new Date()));

        if (!report.getFileId().equals("")) {
            String[] ids = report.getFileId().split(",");
            for (String id : ids) {
                filesService.updateTimeAndEditor(Integer.valueOf(id), report.getTime(), report.getDate(), report.getEditor().getId(), report.getSystem().getId(), "通知公告");
            }
        }
        reportService.save(report);
        return "redirect:/report";

    }

    /**
     * 更新状态
     *
     * @param id
     * @param val
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/report_state", method = RequestMethod.POST)
    @ResponseBody
    public String updateState(@RequestParam("id") Integer id, @RequestParam("val") Integer val) throws Exception {
        ObjectMapper mapper = new ObjectMapper();// json对象建立
        reportService.updateState(id, val);
        String json = mapper.writeValueAsString(val);// 将map转换成json字符串
        return json;

    }

    @RequestMapping(value = "/report_set_flag/{idList}", method = RequestMethod.POST)
    @ResponseBody
    public String updateFlag(@PathVariable("idList") String idList) {
        System.out.println(idList);
        reportService.updateFlag(idList);
        return "ok";
    }


    @RequestMapping(value = "report_fileId", method = RequestMethod.POST)
    @ResponseBody
    public String deleteFileId(@RequestParam("fileId") String fileId, @RequestParam("id") Integer id) throws Exception {
        ObjectMapper mapper = new ObjectMapper();// json对象建立
        List<Integer> idList = mapper.readValue(fileId, List.class);
        filesService.deletes(idList);
        reportService.updateFileId(id);
        String json = mapper.writeValueAsString("删除成功");// 将map转换成json字符串
        return json;
    }

    /**
     * 查询所有
     *
     * @param model
     * @return
     */

    @RequestMapping(value = "/report", method = RequestMethod.GET)
    public String findAll(Model model) {
        List<Report> reports = this.reportService.findAll();
        model.addAttribute("reports", reports);
        return "report";
    }

    /**
     * 分页
     *
     * @param page
     * @param model
     * @return
     */

    // @RequestMapping(value = "", method = RequestMethod.GET)
    public String findByPage(@RequestParam("page") String page, Model model) {

        // 每页显示的条数
        int pageSize = 8;

        List<Report> reports = this.reportService.findAll();

        // 查到的总用户数
        model.addAttribute("reportNum", reports.size());

        // 总页数
        int pageTimes;
        if (reports.size() % pageSize == 0) {
            pageTimes = reports.size() / pageSize;
        } else {
            pageTimes = reports.size() / pageSize + 1;
        }
        model.addAttribute("pageTimes", pageTimes);

        // 每页开始的第几条记录
        int startRow = (Integer.parseInt(page) - 1) * pageSize;
        reports = this.reportService.findByPage(startRow, pageSize);

        model.addAttribute("currentPage", Integer.parseInt(page));
        model.addAttribute("reports", reports);

        return "report";
    }


}
