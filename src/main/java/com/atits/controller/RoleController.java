package com.atits.controller;

import java.util.List;

import com.atits.entity.Dynamic;
import com.atits.entity.Role;
import com.atits.service.DynamicService;
import com.atits.service.RoleService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

@Controller
public class RoleController {

    @Resource
    private RoleService roleService;// 注入业务层


    public void role_add(Integer id, Model model) {
        // TODO Auto-generated method stub

    }

    public void add(Model model) {
        // TODO Auto-generated method stub

    }

    @RequestMapping(value = "role_detail", method = RequestMethod.POST)
    @ResponseBody
    public Role findById(@RequestParam("id") Integer id,Model model) {
        Role role = roleService.findById(id);
//        model.addAttribute("role",role);
//        ObjectMapper mapper = new ObjectMapper();
//        String json = mapper.writeValueAsString(role);
        return role;

    }

    @RequestMapping(value = "/role_deletes/{idList}", method = RequestMethod.DELETE)
    public String deletes(@PathVariable("idList") List<Integer> idList) {
        roleService.deletes(idList);
        return "redirect:/role";
    }

    @RequestMapping(value = "/role_save", method = RequestMethod.POST)
    public String save(Role role) {
        roleService.save(role);
        return "redirect:/role";
    }



    /**
     * 修改方法：update
     *
     * @param role
     * @return
     */
    @RequestMapping(value = "role_save",method = RequestMethod.PUT)
    public String update(Role role) {
        roleService.save(role);
        return "redirect:/role";
    }

    public void updateState(Integer id) {
        // TODO Auto-generated method stub

    }


    @RequestMapping(value = "/role", method = RequestMethod.GET)
    public String findAll(Model model) {
        List<Role> roles = roleService.findAll();
        model.addAttribute("roles", roles);
        model.addAttribute("role", new Role());
        return "role";
    }

    public String findAll(Integer sysId, Model model) {
        // TODO Auto-generated method stub
        return null;
    }


}
