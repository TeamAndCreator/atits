package com.atits.controller;

import com.atits.entity.Files;
import com.atits.entity.Person;
import com.atits.service.FilesService;
import com.atits.service.SystemService;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

/**
 * 说明：是控制层--页面显示层
 *
 * @author YXX
 * @Date 2017年6月20日
 * @类型 filesController
 */
@Controller
public class FilesController {

    /**
     * 资源注入：实例化业务层
     */
    @Resource
    private FilesService filesService;// 注入业务层

    @Resource
    private SystemService systemService;

    private final String FILE_PATH = "C:/file/";

    // get和set方法：

    public FilesService getfilesService() {
        return filesService;
    }

    public void setfilesService(FilesService filesService) {
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
     * @return uri：files_setting 请求方式：GET 方法：files_add 页面：files_add.jsp
     * 请求方式和参数：@RequestParam("id")是id
     */

    @RequestMapping(value = "/files_setting", method = RequestMethod.GET)
    public String files_add(@RequestParam("id") Integer id, Model model) {
        model.addAttribute("system", systemService.findAll());
        model.addAttribute("files", filesService.findById(id));
        return "files_add";// 添加页面：返回到dynamic_add.jsp视图
    }

    @RequestMapping(value = "/files_add", method = RequestMethod.GET)
    public String files_add(Model model) {// model理解为一个Map
        // 把files的实体：赋值给files：files=new files()
        model.addAttribute("files", new Files());
        model.addAttribute("system", systemService.findAll());
        return "files_add";
    }

    /**
     * 批量删除方法：deteles idList可通过 @Pathvariable注解绑定它传过来的值到方法deteles的参数上
     *
     * @param idList
     * @return
     */
    @RequestMapping(value = "/files_delete/{idList}", method = RequestMethod.DELETE)
    public String deteles(@PathVariable("idList") List<Integer> idList, HttpServletRequest request) {
        filesService.deletes(idList);//
        HttpSession session = request.getSession();
        Person person = (Person) session.getAttribute("person");
        return "redirect:/files";
    }

    @RequestMapping(value = "files_fileId", method = RequestMethod.POST)
    @ResponseBody
    public String deleteFileId(@RequestParam("fileId") String fileId, @RequestParam("id") Integer id) throws Exception {
        ObjectMapper mapper = new ObjectMapper();
        List<Integer> idList = mapper.readValue(fileId, List.class);
        filesService.deletes(idList);
        String json = mapper.writeValueAsString("删除成功");
        return json;
    }


    /**
     * 修改方法：update
     *
     * @param files
     * @return
     */
    @RequestMapping(value = "/files_save", method = RequestMethod.PUT)
    public String update(Files files, HttpServletRequest request) {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
        SimpleDateFormat df1 = new SimpleDateFormat("HH:mm:ss");//设置时间点格式
        files.setTime(df.format(new Date()));// new Date()为获取当前系统时间
        files.setDate(df1.format(new Date()));//为获取当前系统时间点

        filesService.save(files);// 调用保存方法
        HttpSession session = request.getSession();
        Person person = (Person) session.getAttribute("person");
        return "redirect:/files";
    }

    /**
     * 更新状态
     *
     * @param id
     */
    @RequestMapping(value = "/files_state/{id}", method = RequestMethod.GET)
    public String updateState(@RequestParam("id") Integer id, @RequestParam("val") Integer val) throws Exception {
        ObjectMapper mapper = new ObjectMapper();// json对象建立
        filesService.updateState(id, val);
        String json = mapper.writeValueAsString(val);// 将map转换成json字符串
        return json;

    }


    /**
     * 保存方法：save方法
     *
     * @param files
     * @return
     */
    @RequestMapping(value = "/files_save", method = RequestMethod.POST)
    public String save(Files files, HttpServletRequest request) {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
        SimpleDateFormat df1 = new SimpleDateFormat("HH:mm:ss");//设置时间点格式
        files.setTime(df.format(new Date()));// new Date()为获取当前系统时间
        files.setDate(df1.format(new Date()));//为获取当前系统时间点

        filesService.save(files);// 封装到service层
        HttpSession session = request.getSession();
        Person person = (Person) session.getAttribute("person");
        return "redirect:/files";
    }


    /**
     * 查询所有的方法：findAll
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/files", method = RequestMethod.GET)
    public String findAll(Model model) {
        List<Files> filess = filesService.findAll();
        model.addAttribute("filess", filess);// 所有的实体：filess
        return "files";
    }

    /**
     * 查询当前体系所有的方法：findAllBySysId
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/sys_files", method = RequestMethod.GET)
    public String findAll(@RequestParam("sysId") Integer sysId, Model model) {
        List<Files> filess = filesService.findAllBySysId(sysId);
        model.addAttribute("filess", filess);// 所有的实体：filess
        return "files";

    }


    /**
     * 文件转变为字符编码
     *
     * @param multipartFiles
     * @return json对象是文件id
     * @throws IOException
     */

    @ResponseBody
    @RequestMapping(value = "/files_upload/{params}", method = RequestMethod.POST)
    public String upload(@RequestParam("files") MultipartFile[] multipartFiles, @PathVariable("params") String params)
            throws IOException {
        ObjectMapper mapper = new ObjectMapper();// json对象建立
        HashMap map = mapper.readValue(params, HashMap.class);
        int id = filesService.upload(multipartFiles, map);
        String json = mapper.writeValueAsString(id);// 将map转换成json字符串
        return json;

    }


    /**
     * 文件下载
     *
     * @param id
     * @param response
     * @throws IOException
     */
    @RequestMapping(value = "/files_download/{id}", method = RequestMethod.GET)
    public void download(@PathVariable("id") Integer id, HttpServletResponse response) throws IOException {
        Files files = filesService.findById(id);

        String filePath = FILE_PATH + files.getSystem().getId() + "/" + files.getFileType() + "/" + files.getEditor().getId() + "/" + files.getFileName();
        File file = new File(filePath);
        if (file.exists()) {
            String filename = URLEncoder.encode(files.getFileName(), "UTF-8");
            //response.setContentType("application/pdf");
            response.setHeader("Content-disposition", "attachment;filename=" + filename);
            byte[] buffer = new byte[1024];
            FileInputStream fis = null;
            BufferedInputStream bis = null;
            fis = new FileInputStream(file);
            bis = new BufferedInputStream(fis);
            OutputStream os = response.getOutputStream();
            int i = bis.read(buffer);
            while (i != -1) {
                os.write(buffer, 0, i);
                i = bis.read(buffer);
            }
            os.flush();
            os.close();
            bis.close();
            fis.close();

        } else {
            response.setContentType("text/html");
            response.setCharacterEncoding("UTF-8");
            PrintWriter pwt = response.getWriter();
            pwt.println("文件不存在");
            pwt.close();
        }

    }

    @RequestMapping(value = "/files_ajax", method = RequestMethod.GET)
    @ResponseBody
    public Files findById() {
        Files files = filesService.findById(4);
        return files;
    }

}
