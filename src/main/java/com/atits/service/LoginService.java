package com.atits.service;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.atits.dao.LoginDao;
import com.atits.dao.PersonDao;
import com.atits.dao.RoleDao;
import com.atits.dao.SystemDao;
import com.atits.entity.Person;

@Transactional
@Service
public class LoginService {
	@Resource
	private LoginDao loginDao;
	@Resource
	private RoleDao roleDao;
	@Resource
	private SystemDao systemDao;
	@Resource
	private PersonDao personDao;

	public LoginDao getLoginDao() {
		return loginDao;
	}

	public RoleDao getRoleDao() {
		return roleDao;
	}

	public SystemDao getSystemDao() {
		return systemDao;
	}

	public Person login(Integer sysId,String userName, String password) {
		return loginDao.login(sysId,userName, password);
	}

	public Map<String, Object> toRegister() {
		Map<String, Object> register = new HashMap<String, Object>();
		register.put("role", roleDao.findAll());
		register.put("system", systemDao.findAll());
		return register;
	}

	public void register(Person person) {
		personDao.save(person);

	}

}
