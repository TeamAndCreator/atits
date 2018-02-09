package com.atits.controller;

import com.atits.entity.Expert;
import com.atits.service.ExpertService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class ExpertController {

    @Resource
    private ExpertService expertService;

    @RequestMapping(value = "/test_people", method = RequestMethod.GET)
    public String findAll(Model model) {
        List<Expert> experts = expertService.findAll();
        model.addAttribute("experts", experts);
        return "test_people";
    }


    @RequestMapping(value = "/test_people_add", method = RequestMethod.GET)
    public String expert_add(Model model) {
        model.addAttribute("expert", new Expert());
        return "test_people_add";
    }

    @RequestMapping(value = "/expert_save", method = RequestMethod.POST)
    public String save(Expert expert) {
        expertService.save(expert);
        return "redirect:/test_people";
    }

    /****
     * 删除
     *
     * @return
     */

    @RequestMapping(value = "expert_deletes/{idList}", method = RequestMethod.DELETE)
    public String deletes(@PathVariable("idList") List<Integer> idList, HttpServletRequest request) throws IOException {
        expertService.deletes(idList);
        HttpSession session = request.getSession();
//        Expert expert = (Expert)session.getAttribute("expert");
        return "redirect:/test_people";
    }

    /*
     * 返回String类型的结果
     * 检查用户名的合法性,如果用户已经存在，返回false，否则返回true(返回json数据，格式为{"valid",true})
     * 用户已存在--》返回该用户名的姓名????
     *
     */
    @RequestMapping(value = "/checkNameExists", produces = "application/json;charset=UTF-8")
    public @ResponseBody
    String checkNameExists(@RequestParam String userName) {
        boolean result = true;
        List<Expert> lstExperts = expertService.findAll();
        for (Expert expert : lstExperts) {
            if (expert.getUserName().equals(userName)) {
                result = false;
                JOptionPane.showMessageDialog(null, expert.getName(), "用户姓名", JOptionPane.INFORMATION_MESSAGE);
                break;
            }
        }
        Map<String, Boolean> map = new HashMap<String, Boolean>();
        map.put("valid", result);
        ObjectMapper mapper = new ObjectMapper();
        String resultString = "";
        try {
            resultString = mapper.writeValueAsString(map);
        } catch (com.fasterxml.jackson.core.JsonProcessingException e) {
            e.printStackTrace();
        }
        return resultString;
    }

}
