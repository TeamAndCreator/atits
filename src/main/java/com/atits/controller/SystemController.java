package com.atits.controller;

import com.atits.entity.Laboratory;
import com.atits.entity.Person;
import com.atits.entity.Station;
import com.atits.entity.System;
import com.atits.service.SysProfileService;
import com.atits.service.SystemService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
public class SystemController {

    @Resource
    private SystemService systemService;

    @Resource
    private SysProfileService sysProfileService;

    /**
     * 查询所有的方法：findAll
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/system", method = RequestMethod.GET)
    public String findAll(Model model) {
        List<System> systems = this.systemService.findAll();
        model.addAttribute("systems", systems);// 所有的实体：systems
        model.addAttribute("system", new System());
        return "system";
    }


    /**
     * 添加 修改 方法
     *
     * @return
     */

//    @RequestMapping(value = "/system_setting", method = RequestMethod.GET)
//    public String system_add(@RequestParam("sysId") Integer sysId, Model model) {
//        model.addAttribute("system",systemService.findById(sysId));
//        return "system_add";// 添加页面：返回到dynamic_add.jsp视图
//    }
    @RequestMapping(value = "/system_setting", method = RequestMethod.GET)
    public String system_add(@RequestParam("id") Integer id, Model model) {
        model.addAttribute("system", systemService.findById(id));
        return "system_add";// 添加页面：返回到dynamic_add.jsp视图
    }

    @RequestMapping(value = "/system_add", method = RequestMethod.GET)
    public String system_add(Model model) {// model理解为一个Map
        model.addAttribute("system", new System());
        return "system_add";
    }

    @RequestMapping(value = "/system_ajax", method = RequestMethod.GET)
    @ResponseBody
    public List<System> findAll() {
        List<System> systems = this.systemService.findAll();
        return systems;
    }


    /**
     * 保存方法：save方法
     *
     * @param system
     * @return
     */
    @RequestMapping(value = "/system_save", method = RequestMethod.POST)
    public String save(System system) {
        systemService.save(system);
        return "redirect:/system";
    }


    /**
     * 修改方法：save方法
     *
     * @param system
     * @return
     */
    @RequestMapping(value = "/system_save", method = RequestMethod.PUT)
    public String update(System system, HttpServletRequest request) {

        systemService.save(system);
        HttpSession session = request.getSession();
        Person person = (Person) session.getAttribute("person");
        if (person.getSystem().getId() == 1) {
            return "redirect:/system";
        }
        return "redirect:/system_detail1?id=" + system.getId();
    }


    @RequestMapping(value = "system_detail_ajax", method = RequestMethod.POST)
    @ResponseBody
    public System findByIdAjax(@RequestParam("id") Integer id, Model model) {
        System system = systemService.findById(id);
//        model.addAttribute("role",role);
//        ObjectMapper mapper = new ObjectMapper();
//        String json = mapper.writeValueAsString(role);
        return system;

    }

    @RequestMapping(value = "system_detail", method = RequestMethod.GET)
    public String findById(@RequestParam("id") Integer id, Model model) {
        //体系
        System system = systemService.findById(id);
        model.addAttribute("system", system);
        Map<String, Integer> num = new HashMap<String, Integer>();


        List<Laboratory> laboratories = system.getLaboratories();
        int labManagerNum = 0;
        int labNum = 0;
        int staNum = 0;
        int staManagerNum = 0;
        for (Laboratory laboratory : laboratories) {
            if (laboratory.getState() == 1) {
                labNum++;
                for (Person person : laboratory.getPersons()) {
                    if (person.getState() == 1) {
                        labManagerNum++;
                    }
                }
            }
        }
        model.addAttribute("laboratories", laboratories);


        List<Station> stations = system.getStations();
        for (Station station : stations) {
            if (station.getState() == 1) {
                staNum++;
                if (station.getPerson().getState() == 1) {
                    staManagerNum++;
                }
            }
        }
        num.put("labManagerNum", labManagerNum);
        num.put("labNum", labNum);
        num.put("staManagerNum", staManagerNum);
        num.put("staNum", staNum);

        model.addAttribute("stations", stations);
        model.addAttribute("num", num);
        // 查到的总数
        return "system_detail";
    }

    @RequestMapping(value = "system_id", method = RequestMethod.GET)
    public String findByIds(@RequestParam("sysId") Integer sysId, Model model) {
        //体系
        System system = systemService.findById(sysId);
        model.addAttribute("system", system);
        Map<String, Integer> num = new HashMap<String, Integer>();


        List<Laboratory> laboratories = system.getLaboratories();
        int labManagerNum = 0;
        int staManagerNum = 0;
        for (Laboratory laboratory : laboratories) {
            if (laboratory.getState() == 1) {
                for (Person person : laboratory.getPersons()) {
                    if (person.getState() == 1) {
                        labManagerNum++;
                    }
                }
            }
        }
        model.addAttribute("laboratories", laboratories);


        List<Station> stations = system.getStations();
        for (Station station : stations) {
            if (station.getState() == 1) {
                if (station.getPerson().getState() == 1) {
                    staManagerNum++;
                }
            }
        }
        num.put("labManagerNum", labManagerNum);
        num.put("staManagerNum", staManagerNum);

        model.addAttribute("stations", stations);
        model.addAttribute("num", num);
        return "sys_person";
    }


    @RequestMapping(value = "system_detail1", method = RequestMethod.GET)
    public String sysProfile(@RequestParam("id") Integer id, Model model) {
        //体系
        System system = systemService.findById(id);
        model.addAttribute("system", system);
        return "system_detail1";
    }

    @RequestMapping(value = "/system_deletes/{idList}", method = RequestMethod.DELETE)
    public String deletes(@PathVariable("idList") List<Integer> idList) {
        systemService.deletes(idList);
        return "redirect:/system";
    }

}
