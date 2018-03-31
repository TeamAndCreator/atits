package com.atits.controller;

import com.atits.entity.*;
import com.atits.entity.System;
import com.atits.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;
import java.util.List;

@Controller
public class MainController {
    private final String FILE_PATH = "C:/file/";

    @Resource
    private SystemService systemService;

    @Resource
    private NoticeService noticeService;

    @Resource
    private HarvestService harvestService;

    @Resource
    private ActivityService activityService;

    @Resource
    private FilesService filesService;

    @Resource
    private RegulationService regulationService;// 注入业务层

    @Resource
    private ReportService reportService;// 注入业务层


    @Resource
    private DynamicService dynamicService;// 注入业务层


    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(Model model) {
        List<System> systems = systemService.findAll();
        model.addAttribute("systems", systems);

        List<Notice> notices = noticeService.findAll();
        model.addAttribute("notices", notices);

        List<Dynamic> dynamics = dynamicService.findAll();
        model.addAttribute("dynamics", dynamics);

        List<Files> filess = filesService.findAll();
        model.addAttribute("filess", filess);// 所有的实体：filess

        List<Regulation> regulations = regulationService.findAll();
        model.addAttribute("regulations", regulations);

        List<Harvest> harvests = this.harvestService.findAll();
        model.addAttribute("harvests", harvests);

        List<Activity> activitys = this.activityService.findAll();
        model.addAttribute("activitys", activitys);
        return "main";
    }


    /**
     * 查看详情
     *
     * @param id
     * @param model
     * @return
     */

    @RequestMapping(value = "/main_notice", method = RequestMethod.GET)
    public String findById(@RequestParam("id") Integer id, Model model) {
        Notice notice = noticeService.findById(id);

        if (!notice.getFileId().equals("") | notice.getFileId() != null) {
            String[] temp = notice.getFileId().split(",");// 以逗号拆分字符串
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

        model.addAttribute("notice", notice);
        return "main_notice";

    }

    /**
     * 查看详情：
     *
     * @param id
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/main_dynamic", method = RequestMethod.GET)
    public String findById2(@RequestParam("id") Integer id, Model model) throws Exception {
        Dynamic dynamic = dynamicService.findById(id);

        if (!dynamic.getFileId().equals("") | dynamic.getFileId() != null) {
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
        return "main_dynamic";
    }

    /**
     * 查看详情重大成果
     *
     * @param id
     * @param model
     * @return
     */

    @RequestMapping(value = "/main_harvest", method = RequestMethod.GET)
    public String findById3(@RequestParam("id") Integer id, Model model) {
        Harvest harvest = harvestService.findById(id);

        if (!harvest.getFileId().equals("") | harvest.getFileId() != null) {
            String[] temp = harvest.getFileId().split(",");// 以逗号拆分字符串
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

        model.addAttribute("harvest", harvest);
        return "main_harvest";
    }
//

    /**
     * 查看详情重大活动
     *
     * @param id
     * @param model
     * @return
     */

    @RequestMapping(value = "/main_activity", method = RequestMethod.GET)
    public String findById4(@RequestParam("id") Integer id, Model model) {
        Activity activity = activityService.findById(id);

        if (!activity.getFileId().equals("") | activity.getFileId() != null) {
            String[] temp = activity.getFileId().split(",");// 以逗号拆分字符串
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

        model.addAttribute("activity", activity);
        return "main_activity";
    }



    /**
     * 查看详情,重大文件
     *
     * @param id
     * @param model
     * @return
     */

    @RequestMapping(value = "/main_report", method = RequestMethod.GET)
    public String findById5(@RequestParam("id") Integer id, Model model) {
        Report report = reportService.findById(id);

        if (!report.getFileId().equals("") | report.getFileId() != null) {
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
        return "main_report";
    }

    /**
     * 查看详情：规章制度
     *
     * @param id
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/main_regulation", method = RequestMethod.GET)
    public String findById6(@RequestParam("id") Integer id, Model model) {
        Regulation regulation = regulationService.findById(id);

        if (!regulation.getFileId().equals("") | regulation.getFileId() != null) {
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
        return "main_regulation";
    }


}
