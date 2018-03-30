package com.atits.controller;


import com.atits.entity.Funds;
import com.atits.entity.Person;
import com.atits.service.FilesService;
import com.atits.service.FundsService;
import com.atits.service.SystemService;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/****
 *
 */
@Controller
public class FundsController {

    @Resource
    private FundsService fundsService;

    @Resource
    private SystemService systemService;

    @Resource
    private FilesService filesService;


    /**
     * 跳转添加页面
     *
     * @param id
     * @param model
     * @return uri：funds_setting 请求方式：GET 方法：funds_add 页面：funds_add.jsp
     *         请求方式和参数：@RequestParam("id")是id
     */
    @RequestMapping(value = "/funds_setting", method = RequestMethod.GET)
    public String funds_add(@RequestParam("id") Integer id, Model model) {
        model.addAttribute("system", systemService.findAll());
        model.addAttribute("funds", fundsService.findById(id));
        return "funds_add";// 添加页面：返回到dynamic_add.jsp视图
    }

    /**
     * 跳转添加页面
     *
     * @param model
     * @return
     */

    @RequestMapping(value = "/funds_add", method = RequestMethod.GET)
    public String funds_add(Model model) {// model理解为一个Map
        // 把dynamic的实体：赋值给dynamic：dynamic=new Dynamic()
        model.addAttribute("system", systemService.findAll());
        model.addAttribute("funds", new Funds());
        return "funds_add";
    }

    /**
     * 查看详情：
     *
     * @param id
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/funds_detail", method = RequestMethod.GET)
    public String findById(@RequestParam("id") Integer id, Model model) throws Exception {
        Funds funds = fundsService.findById(id);

        // 封装视图显示数据，封装到model中
        model.addAttribute("funds", funds);
        return "funds_detail";
    }

    /**
     * 批量删除方法：deteles idList可通过 @Pathvariable注解绑定它传过来的值到方法deteles的参数上
     *
     * @param idList
     * @return
     */
    @RequestMapping(value = "/funds_deletes/{idList}", method = RequestMethod.DELETE)
    public String deteles(@PathVariable("idList") List<Integer> idList,HttpServletRequest request) {
        fundsService.deletes(idList);//
        HttpSession session = request.getSession();
        Person person = (Person) session.getAttribute("person");
//        if (person.getRole().getPermission()==1){
            return "redirect:/funds";
//        }
//        return "redirect:/sys_funds?sysId=" + person.getSystem().getId();// 转发到：funds.jsp视图
    }

    /**
     * 保存方法：save方法
     *
     * @param funds
     * @return
     */
    @RequestMapping(value = "/funds_save", method = RequestMethod.POST)
    public String save(Funds funds,HttpServletRequest request) {
        fundsService.save(funds);// 封装到service层
        HttpSession session = request.getSession();
        Person person = (Person) session.getAttribute("person");
//        if (person.getRole().getPermission()==1){
            return "redirect:/funds";
//        }
//        return "redirect:/sys_funds?sysId=" + person.getSystem().getId();// 转发到：funds.jsp视图
    }

    /**
     * 修改方法：update
     *
     * @param funds
     * @return
     */
    @RequestMapping(value = "/funds_save", method = RequestMethod.PUT)
    public String update(Funds funds,HttpServletRequest request) {
        fundsService.save(funds);// 调用保存方法
        HttpSession session = request.getSession();
        Person person = (Person) session.getAttribute("person");
//        if (person.getRole().getPermission()==1){
            return "redirect:/funds";
//        }
//        return "redirect:/sys_funds?sysId=" + person.getSystem().getId();// 转发到：funds.jsp视图
    }


    /**
     * 更新状态
     * @param id
     * @param val
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/funds_state", method = RequestMethod.POST)
    @ResponseBody
    public String updateState(@RequestParam("id") Integer id, @RequestParam("val") Integer val) throws Exception {
        ObjectMapper mapper = new ObjectMapper();// json对象建立
        fundsService.updateState(id, val);
        String json = mapper.writeValueAsString(val);// 将map转换成json字符串
        return json;

    }
    /**
     * 查询所有的方法：findAll
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/funds", method = RequestMethod.GET)
    public String findAll(Model model) {
        List<Funds> fundses = this.fundsService.findAll();
        model.addAttribute("fundses", fundses);// 所有的实体：dynamics
        return "funds";
    }


    /**
     * 查询当前体系所有的方法：findAllBySysId
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/sys_funds", method = RequestMethod.GET)
    public String findAllBySysId(@RequestParam("sysId") Integer sysId, Model model) {
        List<Funds> fundses = fundsService.findAllBySysId(sysId);
        model.addAttribute("fundses", fundses);
        return "funds";

    }


    /**
     * 查询当前体系所有的方法：findAllByBearer
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/per_funds", method = RequestMethod.GET)
    public String findAllByBearer(@RequestParam("sysId") Integer sysId, @RequestParam("bearer") String bearer, Model model) {
        List<Funds> fundses = fundsService.findAllByBearer(sysId,bearer);
        model.addAttribute("fundses", fundses);
        return "funds";

    }

    @RequestMapping(value = "funds_fileId", method = RequestMethod.POST)
    @ResponseBody
    public String deleteFileId(@RequestParam("fileId") String fileId, @RequestParam("id") Integer id) throws Exception {
        ObjectMapper mapper = new ObjectMapper();// json对象建立
        List<Integer> idList = mapper.readValue(fileId, List.class);
        filesService.deletes(idList);//
        fundsService.updateFileId(id);


        String json = mapper.writeValueAsString("删除成功");// 将map转换成json字符串

        return json;
    }


}
