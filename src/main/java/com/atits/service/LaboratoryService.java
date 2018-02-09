package com.atits.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.atits.dao.LaboratoryDao;
import com.atits.entity.Laboratory;
/**
 * 
 * @author YXX
 * @Date   2017年6月20日
 * @类型    DynamicService
 */
/*@Service业务层，事务型：@Transactional*/
@Transactional
@Service
public class LaboratoryService {
	
	@Resource
	private LaboratoryDao laboratoryDao;//注入dao数据
	
	/*DynamicDao的get和set方法*/
	public void setDynamicDao(LaboratoryDao laboratoryDao){
		this.laboratoryDao = laboratoryDao;
	}
	
	public void getDynamicDao(LaboratoryDao laboratoryDao){
		this.laboratoryDao = laboratoryDao;
	}
	
	/*查询所有方法：findAll*/
	public List<Laboratory> findAll(){//与集合不同，列表通常允许重复元素
		return laboratoryDao.findAll();
	}
	public List<Laboratory> findSysId(Integer sysId){//与集合不同，列表通常允许重复元素
		return laboratoryDao.findSysId(sysId);
	}
	
	/*根据id进行查询*/
	public Laboratory findById(Integer id){
		return laboratoryDao.findById(id);//调用dao的方法
	}
	
	/*根据体系id进行查询*/
	public List<String> findNameBySysId(Integer sysId){
		return laboratoryDao.findNameBySysId(sysId);
		
	}
	
	
	/*Dynamic:是实体类*/	
	public void save(Laboratory laboratory){
		laboratoryDao.save(laboratory);//
		
	}
	
	/*批量删除：*/
	public void  deletes(List<Integer> idList){//void 可以不用返回参数，int要返回参数
		laboratoryDao.deletes(idList);
	}
	
	/*更新方法：update*/
	public void update(Laboratory laboratory){
		laboratoryDao.save(laboratory);
	}

	public Laboratory findByName(Integer sysId, String labName) {
		// TODO Auto-generated method stub
		return laboratoryDao.findByName(sysId,labName);
	}

	public void updateState(Integer id,Integer val) {
		// TODO Auto-generated method stub
		laboratoryDao.updateState(id,val);
	}
}
