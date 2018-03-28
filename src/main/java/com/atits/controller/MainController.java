package com.atits.controller;

import com.atits.entity.*;
import com.atits.entity.System;
import com.atits.service.DynamicService;
import com.atits.service.NoticeService;
import com.atits.service.RegulationService;
import com.atits.service.SystemService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class MainController {
    @Resource
    private NoticeService noticeService;
    @Resource
    private RegulationService regulationService;
    @Resource
    private DynamicService dynamicService;
    @Resource
    private SystemService systemService;

    @RequestMapping(value = "main",method = RequestMethod.GET)
    @ResponseBody
    //自动的把返回的对象转化为json字符串
    //pageinfo不具有通用性，删除的话需要返回一个数据给浏览器，带有当前请求的处理信息的

    public Msg home(@RequestParam("id") Integer id) {
        System system = systemService.findById(id);

        List<Notice> notices = noticeService.findAll();
//        List<Dynamic> dynamics = dynamicService.findAll();
//        List<Regulation> regulations = regulationService.findAll();

        return Msg.success().add("system", system)
//                .add("dynamics", dynamics).add("regulations", regulations)
                ;
    }

    @RequestMapping(value = "main_notice",method = RequestMethod.GET)
    @ResponseBody
    //自动的把返回的对象转化为json字符串
    //pageinfo不具有通用性，删除的话需要返回一个数据给浏览器，带有当前请求的处理信息的
    public Msg home() {
        List<Notice> notices = noticeService.findAll();
//        List<Dynamic> dynamics = dynamicService.findAll();
//        List<Regulation> regulations = regulationService.findAll();

        return Msg.success().add("notices", notices)
//                .add("dynamics", dynamics).add("regulations", regulations)
                ;
    }
}
