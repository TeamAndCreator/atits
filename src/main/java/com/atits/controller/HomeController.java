package com.atits.controller;

import com.atits.entity.Dynamic;
import com.atits.entity.Notice;
import com.atits.entity.System;
import com.atits.service.DynamicService;
import com.atits.service.NoticeService;
import com.atits.service.SystemService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class HomeController {
    @Resource
    private SystemService systemService;

    @Resource
    private NoticeService noticeService;

    @Resource
    private DynamicService dynamicService;// 注入业务层

    @RequestMapping(value = "/sys_index", method = RequestMethod.GET)
    public String index(@RequestParam("sysId") Integer sysId, Model model) {
        List<Notice> notices = noticeService.findAllBySysId(sysId);
        model.addAttribute("notices", notices);

        List<Dynamic> dynamics = dynamicService.findAllBySysId(sysId);
        model.addAttribute("dynamics", dynamics);
        return "sys_index";
    }


    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(Model model) {
        List<System> systems= systemService.findAll();
        model.addAttribute("systems",systems);

        List<Notice> notices = noticeService.findAll();
        model.addAttribute("notices", notices);

        List<Dynamic> dynamics = dynamicService.findAll();
        model.addAttribute("dynamics", dynamics);
        return "index";
    }

}
