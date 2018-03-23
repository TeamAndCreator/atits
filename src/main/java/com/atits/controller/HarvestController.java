package com.atits.controller;

import com.atits.entity.Files;
import com.atits.entity.Harvest;
import com.atits.entity.Person;
import com.atits.service.FilesService;
import com.atits.service.HarvestService;
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
public class HarvestController extends Thread {


    @Resource
    private HarvestService harvestService;

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

    @RequestMapping(value = "/harvest_setting", method = RequestMethod.GET)
    public String harvest_add(@RequestParam("id") Integer id, Model model) {
        model.addAttribute("system", systemService.findAll());
        model.addAttribute("harvest", harvestService.findById(id));
        return "harvest_add";
    }


    /**
     * 跳转添加页面
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/harvest_add", method = RequestMethod.GET)
    public String harvest_add(Model model) {
        model.addAttribute("system", systemService.findAll());
//        System.out.println(systemService.findAll());
        model.addAttribute("harvest", new Harvest());
        return "harvest_add";
    }

    /**
     * 查看详情
     *
     * @param id
     * @param model
     * @return
     */

    @RequestMapping(value = "/harvest_detail", method = RequestMethod.GET)
    public String findById(@RequestParam("id") Integer id, Model model) {
        Harvest harvest = harvestService.findById(id);

        if (harvest.getFileId() != "") {
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
        return "harvest_detail";

    }

    /****
     * 删除
     *
     * @return
     */
    @RequestMapping(value = "/harvest_deletes/{idList}", method = RequestMethod.DELETE)
    public String deletes(@PathVariable("idList") List<Integer> idList, HttpServletRequest request) throws IOException {
        harvestService.deletes(idList);
        HttpSession session = request.getSession();
        Person person = (Person) session.getAttribute("person");
        return "redirect:/harvest";

    }

    /****
     * 保存
     *
     * @return
     */
    @RequestMapping(value = "/harvest_save", method = RequestMethod.POST)
    public String save(Harvest harvest, HttpServletRequest request) {

        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
        SimpleDateFormat df1 = new SimpleDateFormat("HH:mm:ss");//设置时间点格式
        harvest.setDate(df1.format(new Date()));
        harvest.setTime(df.format(new Date()));// new Date()为获取当前系统时间
        if (!harvest.getFileId().equals("")) {
            String[] ids = harvest.getFileId().split(",");
            for (String id : ids) {
                filesService.updateTimeAndEditor(Integer.valueOf(id), harvest.getTime(), harvest.getDate(), harvest.getEditor().getId(), harvest.getSystem().getId(), "通知公告");
            }
        }
        harvestService.save(harvest);
        HttpSession session = request.getSession();
        Person person = (Person) session.getAttribute("person");
        return "redirect:/harvest";

    }

    /****
     * 修改
     *
     * @return
     */
    @RequestMapping(value = "/harvest_save", method = RequestMethod.PUT)
    public String update(Harvest harvest) {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
        SimpleDateFormat df1 = new SimpleDateFormat("HH:mm:ss");//设置时间点格式
        harvest.setTime(df.format(new Date()));// new Date()为获取当前系统时间
        harvest.setDate(df1.format(new Date()));

        if (!harvest.getFileId().equals("")) {
            String[] ids = harvest.getFileId().split(",");
            for (String id : ids) {
                filesService.updateTimeAndEditor(Integer.valueOf(id), harvest.getTime(), harvest.getDate(), harvest.getEditor().getId(), harvest.getSystem().getId(), "通知公告");
            }
        }
        harvestService.save(harvest);
        return "redirect:/harvest";

    }

    /**
     * 更新状态
     *
     * @param id
     * @param val
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/harvest_state", method = RequestMethod.POST)
    @ResponseBody
    public String updateState(@RequestParam("id") Integer id, @RequestParam("val") Integer val) throws Exception {
        ObjectMapper mapper = new ObjectMapper();// json对象建立
        harvestService.updateState(id, val);
        String json = mapper.writeValueAsString(val);// 将map转换成json字符串
        return json;

    }

    @RequestMapping(value = "/harvest_set_flag/{idList}", method = RequestMethod.POST)
    @ResponseBody
    public String updateFlag(@PathVariable("idList") String idList) {
        System.out.println(idList);
        harvestService.updateFlag(idList);
        return "ok";
    }


    @RequestMapping(value = "harvest_fileId", method = RequestMethod.POST)
    @ResponseBody
    public String deleteFileId(@RequestParam("fileId") String fileId, @RequestParam("id") Integer id) throws Exception {
        ObjectMapper mapper = new ObjectMapper();// json对象建立
        List<Integer> idList = mapper.readValue(fileId, List.class);
        filesService.deletes(idList);
        harvestService.updateFileId(id);
        String json = mapper.writeValueAsString("删除成功");// 将map转换成json字符串
        return json;
    }

    /**
     * 查询所有
     *
     * @param model
     * @return
     */

    @RequestMapping(value = "/harvest", method = RequestMethod.GET)
    public String findAll(Model model) {
        List<Harvest> harvests = this.harvestService.findAll();
        model.addAttribute("harvests", harvests);
        return "harvest";
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

        List<Harvest> harvests = this.harvestService.findAll();

        // 查到的总用户数
        model.addAttribute("harvestNum", harvests.size());

        // 总页数
        int pageTimes;
        if (harvests.size() % pageSize == 0) {
            pageTimes = harvests.size() / pageSize;
        } else {
            pageTimes = harvests.size() / pageSize + 1;
        }
        model.addAttribute("pageTimes", pageTimes);

        // 每页开始的第几条记录
        int startRow = (Integer.parseInt(page) - 1) * pageSize;
        harvests = this.harvestService.findByPage(startRow, pageSize);

        model.addAttribute("currentPage", Integer.parseInt(page));
        model.addAttribute("harvests", harvests);

        return "harvest";
    }


}
