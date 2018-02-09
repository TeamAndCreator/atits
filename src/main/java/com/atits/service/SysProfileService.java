package com.atits.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.atits.dao.LaboratoryDao;
import com.atits.dao.PersonDao;
import com.atits.dao.RoleDao;
import com.atits.dao.StationDao;
import com.atits.dao.SystemDao;
import com.atits.entity.Laboratory;
import com.atits.entity.Station;
import com.atits.entity.System;;

@Transactional
@Service
public class SysProfileService {

	@Resource
	private PersonDao personDao;

	@Resource
	private SystemDao systemDao;

	@Resource
	private LaboratoryDao laboratoryDao;

	@Resource
	private StationDao stationDao;

//	public Map<String, Object> sysPerson(Integer sysId) {
//		Map<String, Object> sysPerson = new HashMap<String, Object>();
//		System system = systemDao.findById(sysId);
//
//		sysPerson.put("chief", personDao.findChief(system));
//		sysPerson.put("postExpert", personDao.findPostExpert(system));
//		sysPerson.put("webmaster", personDao.findWebmaster(system));
//		return sysPerson;
//	}

	public List<Laboratory> sysLab(Integer sysId) {
		List<Laboratory> laboratorys = laboratoryDao.findBySysId(sysId);
		return laboratorys;
	}

	public List<Station> sysSta(Integer sysId) {
		List<Station> stations = stationDao.findBySysId(sysId);
		return stations;
	}

//	public List<String> findWebmasterOfLab(Integer sysId, String labName) {
//		System system = systemDao.findById(sysId);
//		return personDao.findWebmasterOfLab(system, labName);
//	}

}
