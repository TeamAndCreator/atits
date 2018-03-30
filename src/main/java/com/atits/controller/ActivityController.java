package com.atits.controller;


import com.atits.entity.Activity;
import com.atits.service.ActivityService;
import com.atits.service.FilesService;
import com.atits.utils.PageUtil;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Controller
public class ActivityController {
    @Resource
    private FilesService filesService;// 注入业务层

    @Resource
    private ActivityService activityService;// 注入业务层


    @RequestMapping(value = "/activity_find_all_ajax", method = RequestMethod.GET)
    @ResponseBody
    public String findAll(@RequestParam("params") String params) throws JsonProcessingException {
        PageUtil pageUtil = new PageUtil();
        Map<String, String> map = pageUtil.pageParams(params);
        //为操作次数加1
        int initEcho = Integer.parseInt(map.get("sEcho")) + 1;
        List<Activity> activities = activityService.findByPage(Integer
                .parseInt(map.get("iDisplayStart")), Integer.parseInt(map.get("iDisplayLength")));
        Long count = activityService.findByPageCunnt(); //查询出来的数量

        // 执行搜索，把不属于关键字部分内容remove掉
//        String sSearch = map.get("sSearch");
//        if (sSearch != null && !sSearch.equals("")) {
//            Iterator it = persons.iterator();
//            while (it.hasNext()) {
//                String[] s = (String[]) it.next();
//
//                if (!s[0].contains(sSearch) || !s[1].contains(sSearch)) {
//                    it.remove();
//                }
//            }
//        }


        ObjectMapper mapper = new ObjectMapper();// json对象建立
        JSONObject getObj = new JSONObject();
        //HashMap<String,Object> getObj=new HashMap<>();
        getObj.put("aaData", mapper.writeValueAsString(activities));
        getObj.put("sEcho", initEcho);// 不知道这个值h有什么用,有知道的请告知一下
        getObj.put("iTotalRecords", count);//实际的行数
        getObj.put("iTotalDisplayRecords", count);//显示的行数,这个要和上面写的一样

        return getObj.toString();

    }


    @RequestMapping(value = "/activity_save", method = RequestMethod.POST)
    public String save(Activity activity) {
        return null;
    }


}
