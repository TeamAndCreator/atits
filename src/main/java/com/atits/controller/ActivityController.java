package com.atits.controller;


import com.atits.entity.Activity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ActivityController {


   // @RequestMapping(value = "/activity", method = RequestMethod.GET)
   // @ResponseBody
    public String findAll() {

        return "ok";
    }

}
