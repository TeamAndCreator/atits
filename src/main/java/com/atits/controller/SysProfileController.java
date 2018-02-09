package com.atits.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.atits.entity.Laboratory;
import com.atits.entity.Station;
import com.atits.service.SysProfileService;

@Controller
public class SysProfileController {

	@Resource
	private SysProfileService sysProfileService;

	/**
	 * 体系成员
	 *
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/sys_person", method = RequestMethod.GET)
	public String sysPerson(@RequestParam("sysId") Integer sysId, Model model) {
//		Map<String, Object> sysPerson = sysProfileService.sysPerson(sysId);
//		model.addAttribute("sysPerson", sysPerson);
		return "sys_person";
	}

	/**
	 * 体系中的功能研究室
	 *
	 * @param sysName
	 * @param model
	 * @return


	 @RequestMapping(value = "/sys_lab", method = RequestMethod.GET)
	 public String sysLab(@RequestParam("sysId") Integer sysId, Model model) {
	 List<Laboratory> list = sysProfileService.sysLab(sysId);
	 List<Map<String, Object>> laboratorys = new ArrayList<Map<String, Object>>();
	 for (int i = 0; i < list.size(); i++) {
	 Laboratory laboratory = list.get(i);
	 String labName = laboratory.getLabName();
	 List<String> names = sysProfileService.findWebmasterOfLab(sysId, labName);
	 Map<String, Object> lab = new HashMap<String, Object>();
	 lab.put("webmasterNames", names);
	 lab.put("laboratory", laboratory);
	 laboratorys.add(lab);
	 }
	 model.addAttribute("laboratorys", laboratorys);
	 model.addAttribute("laboratoryNum",laboratorys.size());
	 return "sys_lab";
	 }
	 */

	@RequestMapping(value = "/sys_lab", method = RequestMethod.GET)
	public String sysLab(@RequestParam("sysId") Integer sysId, Model model) {
		List<Laboratory> laboratorys = sysProfileService.sysLab(sysId);
		model.addAttribute("laboratorys", laboratorys);
		// 查到的总数
		model.addAttribute("laboratoryNum", laboratorys.size());
		return "sys_lab";
	}


	/**
	 * 体系中的综合实验站
	 *
	 * @param sysName
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/sys_sta", method = RequestMethod.GET)
	public String sysSta(@RequestParam("sysId") Integer sysId, Model model) {
		List<Station> stations = sysProfileService.sysSta(sysId);
		model.addAttribute("stations", stations);
		// 查到的总数
		model.addAttribute("stationNum", stations.size());
		return "sys_sta";
	}
}
