package com.atits.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.atits.entity.Person;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.atits.entity.Station;
import com.atits.service.StationService;
import com.atits.service.SystemService;

@Controller
public class StationController {

    /**
     * 资源注入：实例化业务层
     */
    @Resource
    private StationService stationService;// 注入业务层

    @Resource
    private SystemService systemService;// 注入业务层
    // get和set方法：

    public StationService getLaboratoryService() {
        return stationService;
    }

    public void setLaboratoryService(StationService stationService) {
        this.stationService = stationService;
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
    @RequestMapping(value = "/station_setting", method = RequestMethod.GET)
    public String dynamic_add(@RequestParam("id") Integer id, Model model) {
        model.addAttribute("system", systemService.findAll());
        model.addAttribute("station", stationService.findById(id));
        return "station_add";// 添加页面：返回到station_setting.jsp视图
    }


    /**
     * 跳转添加页面
     *
     * @param model
     * @return url：station_setting 请求方式：GET 方法：station_add 页面：station_add.jsp
     * 请求方式和参数：@RequestParam("id")是id
     */
    @RequestMapping(value = "/station_add", method = RequestMethod.GET)
    public String station_add(Model model) {// model理解为一个Map
        // 把station的实体：赋值给station：station=new Station()
        model.addAttribute("system", systemService.findAll());
        model.addAttribute("station", new Station());
        return "station_add";
    }

    /**
     * 查看详情：
     *
     * @param id
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/station_detail", method = RequestMethod.GET)
    public String findById(@RequestParam("id") Integer id, Model model)
            throws Exception {
        Station station = stationService.findById(id);

        // 封装视图显示数据，封装到model中
        model.addAttribute("station", station);
        return "station_detail";
    }


    @RequestMapping(value = "/per_station_detail", method = RequestMethod.GET)
    public String findById(@RequestParam("sysId") Integer sysId, @RequestParam("staName") String staName, Model model)
            throws Exception {
        Station station = stationService.findByName(sysId, staName);

        // 封装视图显示数据，封装到model中
        model.addAttribute("station", station);
        return "station_detail";
    }

    /**
     * 批量删除方法：deteles idList可通过 @Pathvariable注解绑定它传过来的值到方法deteles的参数上
     *
     * @param idList
     * @return
     */
    @RequestMapping(value = "/station_deletes/{idList}", method = RequestMethod.DELETE)
    public String deteles(@PathVariable("idList") List<Integer> idList) {
        stationService.deletes(idList);
        return "redirect:/station";// 转发到：dynamic.jsp视图
    }

    /**
     * 保存方法：save方法
     *
     * @param station
     * @return
     */
    @RequestMapping(value = "/station_save", method = RequestMethod.POST)
    public String save(Station station) {
        //上传时间为系统时间
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        station.setTime(df.format(new Date()));//new Date()为获取当前系统时间
        stationService.save(station);// 封装到service层
        return "redirect:/station";
    }

    /**
     * 修改方法：update
     *
     * @param Station
     * @return
     */
    @RequestMapping(value = "/station_save", method = RequestMethod.PUT)
    public String update(Station Station,HttpServletRequest request) {
        stationService.save(Station);// 调用保存方法
        HttpSession session = request.getSession();
        Person person = (Person) session.getAttribute("person");
        if (person.getJob().contains("综合试验站站长")){

        return "redirect:/station_detail?id="+person.getStation().getId();
        }
        return "redirect:/station";

    }

    /**
     * 更新状态
     *
     * @param id
     * @param val
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/station_state", method = RequestMethod.POST)
    @ResponseBody
    public String updateState(@RequestParam("id") Integer id, @RequestParam("val") Integer val) throws Exception {
        ObjectMapper mapper = new ObjectMapper();// json对象建立
        stationService.updateState(id, val);
        String json = mapper.writeValueAsString(val);// 将map转换成json字符串
        return json;

    }

    /**
     * 查询所有的方法：findAll
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/station", method = RequestMethod.GET)
    public String findAll(Model model) {
        List<Station> stations = this.stationService.findAll();
        model.addAttribute("stations", stations);// 所有的实体：laboratorys
        return "station";
    }


    @RequestMapping(value = "/station_ajax", method = RequestMethod.GET)
    @ResponseBody
    public List<Station> findAll(@RequestParam("sysId") Integer sysId) {
        List<Station> stations = this.stationService.findAll(sysId);
        return stations;
    }

}
