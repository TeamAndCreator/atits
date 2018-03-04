package com.atits.controller;
import java.util.List;

import javax.annotation.Resource;

import com.atits.entity.Laboratory;
import com.atits.entity.Station;
import com.atits.entity.System;
import com.atits.service.*;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.atits.entity.Person;
import com.atits.entity.Profile;

@Controller
public class PersonController {

    @Resource
    private PersonService personService;

    @Resource
    private SystemService systemService;

    @Resource
    private LaboratoryService laboratoryService;

    @Resource
    private StationService stationService;

    @Resource
    private ProfileService profileService;

    @Resource
    private RoleService roleService;


    public PersonService getPersonService() {
        return personService;
    }

    public void setPersonService(PersonService personService) {
        this.personService = personService;
    }

    public SystemService getSystemService() {
        return systemService;
    }

    public void setSystemService(SystemService systemService) {
        this.systemService = systemService;
    }

    public ProfileService getProfileService() {
        return profileService;
    }

    public void setProfileService(ProfileService profileService) {
        this.profileService = profileService;
    }

    public RoleService getRoleService() {
        return roleService;
    }

    public void setRoleService(RoleService roleService) {
        this.roleService = roleService;
    }

    /**
     * 跳转添加页面
     *
     * @param id
     * @param model
     * @return
     */

    @RequestMapping(value = "/person_setting", method = RequestMethod.GET)
    public String person_add(@RequestParam("id") Integer id, Model model) {

        Person person = personService.findById(id);
        Integer sysId = person.getSystem().getId();
        model.addAttribute("personal", personService.findById(id));
        System system=systemService.findById(sysId);

        model.addAttribute("system", systemService.findAll());
        model.addAttribute("laboratories", system.getLaboratories());
        model.addAttribute("stations", system.getStations());
        model.addAttribute("role", roleService.findAll());
        return "personal_add";
    }

    /**
     * 查询所有
     *
     * @param params
     * @return
     */

   /* @RequestMapping(value = "/person", method = RequestMethod.GET)
    public String findAll(Model model) {
        List<Person> persons = personService.findAll();
        model.addAttribute("persons", persons);
        return "person";
    }*/


    @RequestMapping(value = "/person_ajax/{params}", method = RequestMethod.GET)
    @ResponseBody
    public String findAll(@PathVariable("params") String params) throws JsonProcessingException {

        JSONArray jsonarray = JSONArray.fromObject(params);

        String sEcho = "";// 记录操作的次数  每次加1
        String iDisplayStart = "";// 起始
        String iDisplayLength = "";// size
        String sSearch = "";// 搜索的关键字
        Long count = 0L ;  //查询出来的数量

        for (int i = 0; i < jsonarray.size(); i++) {
            JSONObject obj = (JSONObject) jsonarray.get(i);
            if (obj.get("name").equals("sEcho"))
                sEcho = obj.get("value").toString();
            if (obj.get("name").equals("iDisplayStart"))
                iDisplayStart = obj.get("value").toString();
            if (obj.get("name").equals("iDisplayLength"))
                iDisplayLength = obj.get("value").toString();
            if (obj.get("name").equals("sSearch"))
                sSearch = obj.get("value").toString();
        }





        //为操作次数加1
        int  initEcho = Integer.parseInt(sEcho)+1;
        count = personService.findByPageCunnt();
        List<Person> persons = personService.findByPage(Integer
                .parseInt(iDisplayStart), Integer.parseInt(iDisplayLength));


        /*// 执行搜索，把不属于关键字部分内容remove掉
        if(sSearch != null  && !sSearch.equals(""))
        {
            Iterator it = persons.iterator();
            while(it.hasNext())
            {
                String[] s = (String[])it.next();
                if(!s[0].contains(sSearch) || !s[1].contains(sSearch))
                {
                    it.remove();
                }
            }
        }*/


        ObjectMapper mapper = new ObjectMapper();// json对象建立
        JSONObject getObj = new JSONObject();
        //HashMap<String,Object> getObj=new HashMap<>();
        getObj.put("aaData", mapper.writeValueAsString(persons));
        getObj.put("sEcho", initEcho);// 不知道这个值h有什么用,有知道的请告知一下
        getObj.put("iTotalRecords", count);//实际的行数
        getObj.put("iTotalDisplayRecords", count);//显示的行数,这个要和上面写的一样
        java.lang.System.out.println(getObj.toString());
        return getObj.toString();

    }




    @RequestMapping(value = "/person_ajax", method = RequestMethod.GET)
    @ResponseBody
    public List<Person> findAll() {
        List<Person> persons = personService.findAll();
        return persons;

    }

    @RequestMapping(value = "/person_system_ajax", method = RequestMethod.GET)
    @ResponseBody
    public List<Person> findAll(@RequestParam("sysId") Integer sysId) {
        List<Person> persons = personService.findSysId(sysId);
        return persons;

    }


    //更新状态
    @RequestMapping(value = "/person_state/{id}", method = RequestMethod.GET)

    public void updateState(@PathVariable("id") Integer id) {
        personService.updateState(id);
    }

    @RequestMapping(value = "/person_delete/{id}", method = RequestMethod.DELETE)
    public String delete(@PathVariable("id") Integer id) {
        profileService.deletes(id);
        personService.delete(id);
        return "redirect:/person";
    }

    @RequestMapping(value = "/person_detail", method = RequestMethod.GET)
    public String findById(@RequestParam("id") Integer id, Model model) {
        Person person = personService.findById(id);
        model.addAttribute("personal", person);
        return "personal_profile";
    }

    /**
     * 修改方法：update
     *
     * @param person
     * @return
     */
    @RequestMapping(value = "/person_save", method = RequestMethod.PUT)
    public String update(Person person) {
        Station station=person.getStation();
        Laboratory laboratory=person.getLaboratory();
        if (station.getId()==0){
            station=null;
        }
        person.setStation(station);
        if (laboratory.getId()==0){
            laboratory=null;
        }
        person.setLaboratory(laboratory);

        Profile profile = person.getProfile();
        profile.setId(person.getId());
        person.setProfile(profile);
        person.setStation(station);
        profile.setPerson(person);

//        Station station = person.getStation();
//        station.setPerson(person);
//        person.setStation(station);
//
//		Laboratory laboratory=person.getLaboratory();
//		List<Person> personList = new ArrayList<>();
//		personList.add(person);
//		person.setLaboratory(laboratory);
//		laboratory.setPersons(personList);
        personService.save(person);// 调用保存方法
        return "redirect:/person_detail?id=" + person.getId();
    }


    /* 查询体系中的所有成员 */
    @RequestMapping(value = "/person_name", method = RequestMethod.POST)
    @ResponseBody
    public List<String> findAllName(Integer sysId) {
        List<String> names = personService.findAllName(sysId);
        return names;
    }


    @RequestMapping(value = "/person_system_chief_ajax", method = RequestMethod.GET)
    @ResponseBody
    private Person findByName(@RequestParam("sysId") Integer sysId, @RequestParam("chief") String chief) {
        Person person = personService.findByName(sysId, chief);
        return person;
    }


}
