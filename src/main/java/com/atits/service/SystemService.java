package com.atits.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.atits.dao.StationDao;
import com.atits.dao.SystemDao;
import com.atits.entity.System;
/**
 * 
 * @author YXX
 * @Date   2017年6月20日
 * @类型    DynamicService
 */
/*@Service业务层，事务型：@Transactional*/
@Transactional
@Service
public class SystemService {
	
	@Resource
	private SystemDao systemDao;//注入dao数据
	
	/*DynamicDao的get和set方法*/
	public SystemDao getSystemDao() {
		return systemDao;
	}

	public void setSystemDao(SystemDao systemDao) {
		this.systemDao = systemDao;
	}

	
	
	/*查询所有方法：findAll*/
	public List<System> findAll(){//与集合不同，列表通常允许重复元素
		return systemDao.findAll();
	}
	
	/*根据id进行查询*/
	public System findById(Integer id){
		return systemDao.findById(id);//调用dao的方法
	}
	
	
	/*Dynamic:是实体类*/	
	public void save(System system){
		systemDao.save(system);//
		
	}
	
	/*批量删除：*/
	public void  deletes(List<Integer> idList){//void 可以不用返回参数，int要返回参数
		systemDao.deletes(idList);
	}
	
	/*更新方法：update*/
	public void update(System system){
		systemDao.save(system);
	}


}
