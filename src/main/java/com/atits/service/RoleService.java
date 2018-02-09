package com.atits.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.atits.dao.RoleDao;
import com.atits.entity.Role;
/**
 * 
 * @author YXX
 * @Date   2017年6月20日
 * @类型    DynamicService
 */
/*@Service业务层，事务型：@Transactional*/
@Transactional
@Service
public class RoleService {
	
	@Resource
	private RoleDao roleDao;//注入dao数据
	
	/*DynamicDao的get和set方法*/
	public void setDynamicDao(RoleDao roleDao){
		this.roleDao = roleDao;
	}
	
	public void getDynamicDao(RoleDao roleDao){
		this.roleDao = roleDao;
	}
	
	/*查询所有方法：findAll*/
	public List<Role> findAll(){//与集合不同，列表通常允许重复元素
		return roleDao.findAll();
	}
	
	/*根据id进行查询*/
	public Role findById(Integer id){
		return roleDao.findById(id);//调用dao的方法
	}


    public void save(Role role) {
	    roleDao.save(role);
    }

    public void deletes(List<Integer> idList) {
	    roleDao.deletes(idList);
    }
}
