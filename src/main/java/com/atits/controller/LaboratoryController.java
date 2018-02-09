package com.atits.controller;

import java.text.SimpleDateFormat;
import java.util.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.atits.entity.Person;
import com.atits.service.SysProfileService;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.atits.entity.Laboratory;
import com.atits.service.LaboratoryService;
import com.atits.service.SystemService;

@Controller
public class LaboratoryController {

	/**
	 * 资源注入：实例化业务层
	 */
	@Resource
	private LaboratoryService laboratoryService;// 注入业务层
	@Resource
	private SysProfileService sysProfileService;
	@Resource
	private SystemService systemService;// 注入业务层
	// get和set方法：

	public LaboratoryService getLaboratoryService() {
		return laboratoryService;
	}

	public void setLaboratoryService(LaboratoryService laboratoryService) {
		this.laboratoryService = laboratoryService;
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
	 * @return uri：laboratory_setting 请求方式：GET 方法：laboratory_add 页面：laboratory_add.jsp
	 *         请求方式和参数：@RequestParam("id")是id
	 */
	@RequestMapping(value = "/laboratory_setting", method = RequestMethod.GET)
	public String dynamic_add(@RequestParam("id") Integer id, Model model) {
		model.addAttribute("system", systemService.findAll());
		model.addAttribute("laboratory", laboratoryService.findById(id));
		return "laboratory_add";// 添加页面：返回到laboratory_setting.jsp视图
	}

	/**
	 * 跳转添加页面
	 *

	 * @param model
	 * @return uri：laboratory_setting 请求方式：GET 方法：dynamic_add 页面：dynamic_add.jsp
	 *         请求方式和参数：@RequestParam("id")是id
	 */
	@RequestMapping(value = "/laboratory_add", method = RequestMethod.GET)
	public String laboratory_add(Model model) {// model理解为一个Map
		// 把laboratory的实体：赋值给laboratory：laboratory=new Laboratory()
		model.addAttribute("system", systemService.findAll());
		model.addAttribute("laboratory", new Laboratory());
		return "laboratory_add";
	}


	@RequestMapping(value = "laboratory_detail", method = RequestMethod.GET)
	public String findById(@RequestParam("id") Integer id,Model model){
		Laboratory laboratory = laboratoryService.findById(id);
		List<Person> persons=laboratory.getPersons();
//		Set<Person> personSet=new HashSet<>(persons) ;
		model.addAttribute("laboratory", laboratory);
		model.addAttribute("persons", persons);
		return "laboratory_detail";
	}

	@RequestMapping(value = "laboratory_detail_ajax", method = RequestMethod.GET)
	@ResponseBody
	public Laboratory findByIdd(@RequestParam("id") Integer id,Model model){
		Laboratory laboratory = laboratoryService.findById(id);
//		List<Person> persons=laboratory.getPersons();
		model.addAttribute("laboratory", laboratory);
//		model.addAttribute("persons", persons);
		return laboratory;
	}

	/* *
     * 批量删除方法：deteles idList可通过 @Pathvariable注解绑定它传过来的值到方法deteles的参数上
     *
     * @param idList
     * @return
     */
	@RequestMapping(value = "/laboratory_deletes/{idList}", method = RequestMethod.DELETE)
	public String deteles(@PathVariable("idList") List<Integer> idList) {
		laboratoryService.deletes(idList);
		return "redirect:/laboratory";// 转发到：laboratory.jsp视图
	}

	/**
	 * 保存方法：save方法
	 *
	 * @param laboratory
	 * @return
	 */
	@RequestMapping(value = "/laboratory_save", method = RequestMethod.POST)
	public String save(Laboratory laboratory) {
		//上传时间为系统时间
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		laboratory.setTime(df.format(new Date()));//new Date()为获取当前系统时间
		laboratoryService.save(laboratory);// 封装到service层
		return "redirect:/laboratory";
	}

	/**
	 * 修改方法：update
	 * @param laboratory
	 * @return
	 */
	@RequestMapping(value = "/laboratory_save", method = RequestMethod.PUT)
	public String update(Laboratory laboratory,HttpServletRequest request) {
		laboratoryService.save(laboratory);// 调用保存方法
		HttpSession session = request.getSession();
		Person person = (Person) session.getAttribute("person");
		if (person.getJob().contains("研究室主任")){

		return "redirect:/laboratory_detail?id="+person.getLaboratory().getId();
		}
		return "redirect:/laboratory";
	}

	/**
	 * 更新状态
	 * @param id
	 * @param val
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/laboratory_state", method = RequestMethod.POST)
	@ResponseBody
	public String updateState(@RequestParam("id") Integer id, @RequestParam("val") Integer val) throws Exception {
		ObjectMapper mapper = new ObjectMapper();// json对象建立
		laboratoryService.updateState(id, val);
		String json = mapper.writeValueAsString(val);// 将map转换成json字符串
		return json;

	}

	/**
	 * 查询所有的方法：findAll
	 *
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/laboratory", method = RequestMethod.GET)
	public String findAll(Model model) {
		List<Laboratory> laboratorys = this.laboratoryService.findAll();
		model.addAttribute("laboratorys", laboratorys);// 所有的实体：laboratorys
		return "laboratory";
	}

	@RequestMapping(value = "/laboratory_ajax", method = RequestMethod.GET)
	@ResponseBody
	public List<Laboratory> findSysId(@RequestParam("sysId") Integer sysId) {
		List<Laboratory> laboratorys = this.laboratoryService.findSysId(sysId);
		return laboratorys;
	}

}
