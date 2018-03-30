package com.atits.controller;

import com.atits.entity.Dynamic;
import com.atits.entity.Files;
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
public class MainController {
    @Resource
    private SystemService systemService;

    @Resource
    private NoticeService noticeService;

    @Resource
    private DynamicService dynamicService;// 注入业务层


    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(Model model) {
        List<System> systems= systemService.findAll();
        model.addAttribute("systems",systems);

        List<Notice> notices = noticeService.findAll();
        model.addAttribute("notices", notices);

        List<Dynamic> dynamics = dynamicService.findAll();
        model.addAttribute("dynamics", dynamics);
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
        // 封装视图显示数据，封装到model中
        model.addAttribute("dynamic", dynamic);
        return "main_dynamic";
    }


}
