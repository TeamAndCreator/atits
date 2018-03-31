package com.atits.controller;

import com.atits.entity.Files;
import com.atits.entity.Notice;
import com.atits.entity.Person;
import com.atits.service.FilesService;
import com.atits.service.NoticeService;
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
public class NoticeController extends Thread {


    @Resource
    private NoticeService noticeService;

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

    @RequestMapping(value = "/notice_setting", method = RequestMethod.GET)
    public String notice_add(@RequestParam("id") Integer id, Model model) {
        model.addAttribute("system", systemService.findAll());
        model.addAttribute("notice", noticeService.findById(id));
        return "notice_add";
    }


    /**
     * 跳转添加页面
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/notice_add", method = RequestMethod.GET)
    public String notice_add(Model model) {
        model.addAttribute("system", systemService.findAll());
//        System.out.println(systemService.findAll());
        model.addAttribute("notice", new Notice());
        return "notice_add";
    }

    /**
     * 查看详情
     *
     * @param id
     * @param model
     * @return
     */

    @RequestMapping(value = "/notice_detail", method = RequestMethod.GET)
    public String findById(@RequestParam("id") Integer id, Model model) {
        Notice notice = noticeService.findById(id);

        if (!notice.getFileId().equals("")) {
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
        return "notice_detail";

    }

    /****
     * 删除
     *
     * @return
     */
    @RequestMapping(value = "/notice_deletes/{idList}", method = RequestMethod.DELETE)
    public String deletes(@PathVariable("idList") List<Integer> idList, HttpServletRequest request) throws IOException {
        noticeService.deletes(idList);
        HttpSession session = request.getSession();
        Person person = (Person) session.getAttribute("person");
        return "redirect:/notice";

    }

    /****
     * 保存
     *
     * @return
     */
    @RequestMapping(value = "/notice_save", method = RequestMethod.POST)
    public String save(Notice notice, HttpServletRequest request) {

        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
        SimpleDateFormat df1 = new SimpleDateFormat("HH:mm:ss");//设置时间点格式
        notice.setDate(df1.format(new Date()));
        notice.setTime(df.format(new Date()));// new Date()为获取当前系统时间
        if (notice.getFileId() != "") {
            String[] ids = notice.getFileId().split(",");
            for (String id : ids) {
                filesService.updateTimeAndEditor(Integer.valueOf(id), notice.getTime(), notice.getDate(), notice.getEditor().getId(), notice.getSystem().getId(), "通知公告");
            }
        }
        noticeService.save(notice);
        HttpSession session = request.getSession();
        Person person = (Person) session.getAttribute("person");
        return "redirect:/notice";

    }

    /****
     * 修改
     *
     * @return
     */
    @RequestMapping(value = "/notice_save", method = RequestMethod.PUT)
    public String update(Notice notice) {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
        SimpleDateFormat df1 = new SimpleDateFormat("HH:mm:ss");//设置时间点格式
        notice.setTime(df.format(new Date()));// new Date()为获取当前系统时间
        notice.setDate(df1.format(new Date()));

        if (notice.getFileId() != "") {
            String[] ids = notice.getFileId().split(",");
            for (String id : ids) {
                filesService.updateTimeAndEditor(Integer.valueOf(id), notice.getTime(), notice.getDate(), notice.getEditor().getId(), notice.getSystem().getId(), "通知公告");
            }
        }
        noticeService.save(notice);
        return "redirect:/notice";

    }

    /**
     * 更新状态
     *
     * @param id
     * @param val
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/notice_state", method = RequestMethod.POST)
    @ResponseBody
    public String updateState(@RequestParam("id") Integer id, @RequestParam("val") Integer val) throws Exception {
        ObjectMapper mapper = new ObjectMapper();// json对象建立
        noticeService.updateState(id, val);
        String json = mapper.writeValueAsString(val);// 将map转换成json字符串
        return json;

    }

    @RequestMapping(value = "/notice_set_flag/{idList}",method=RequestMethod.POST)
    @ResponseBody
    public String updateFlag(@PathVariable("idList") String idList){
       noticeService.updateFlag(idList);
       return "ok";
    }


    @RequestMapping(value = "notice_fileId", method = RequestMethod.POST)
    @ResponseBody
    public String deleteFileId(@RequestParam("fileId") String fileId, @RequestParam("id") Integer id) throws Exception {
        ObjectMapper mapper = new ObjectMapper();// json对象建立
        List<Integer> idList = mapper.readValue(fileId, List.class);
        filesService.deletes(idList);
        noticeService.updateFileId(id);
        String json = mapper.writeValueAsString("删除成功");// 将map转换成json字符串
        return json;
    }

    /**
     * 查询所有
     *
     * @param model
     * @return
     */

    @RequestMapping(value = "/notice", method = RequestMethod.GET)
    public String findAll(Model model) {
        List<Notice> notices = this.noticeService.findAll();
        model.addAttribute("notices", notices);
        return "notice";
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

        List<Notice> notices = this.noticeService.findAll();

        // 查到的总用户数
        model.addAttribute("noticeNum", notices.size());

        // 总页数
        int pageTimes;
        if (notices.size() % pageSize == 0) {
            pageTimes = notices.size() / pageSize;
        } else {
            pageTimes = notices.size() / pageSize + 1;
        }
        model.addAttribute("pageTimes", pageTimes);

        // 每页开始的第几条记录
        int startRow = (Integer.parseInt(page) - 1) * pageSize;
        notices = this.noticeService.findByPage(startRow, pageSize);

        model.addAttribute("currentPage", Integer.parseInt(page));
        model.addAttribute("notices", notices);

        return "notice";
    }


}
