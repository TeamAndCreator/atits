package com.atits.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.atits.dao.PersonDao;
import com.atits.entity.Person;
/**
 * 
 * @author YXX
 * @Date   2017年6月20日
 * @类型    DynamicService
 */
/*@Service业务层，事务型：@Transactional*/
@Transactional
@Service
public class PersonService {
	
	@Resource
	private PersonDao personDao;//注入dao数据
	
	/*PersonDao的get和set方法*/
	public void setDynamicDao(PersonDao personDao){
		this.personDao = personDao;
	}
	
	public void getDynamicDao(PersonDao personDao){
		this.personDao = personDao;
	}
	
	/*查询所有方法：findAll*/
	public List<Person> findAll(){//与集合不同，列表通常允许重复元素
		return personDao.findAll();
	}
	
	/*根据id进行查询*/
	public Person findById(Integer id){
		return personDao.findById(id);//调用dao的方法
	}
	
	/*根据页数：进行分页*/
	public List<Person> findByPage(int startRow,int pageSize){
		return  personDao.findByPage(startRow, pageSize);//调用dao的方法
	}
	
	/*Person:是实体类*/	
	public void save(Person Person){
		personDao.save(Person);//
	}
	
	/*根据id进行更新用户状态*/
	public void updateState(Integer id){
		personDao.updateState(id);
	}
	
	/*批量删除：*/
	public void  deletes(List<Integer> idList){//void 可以不用返回参数，int要返回参数
		personDao.deletes(idList);
	}
	/*单个删除：*/
	public void  delete(Integer id){//void 可以不用返回参数，int要返回参数
		personDao.delete(id);
	}
	
	/*更新方法：update*/
	public void update(Person Person){
		personDao.save(Person);
	}

    public List<String> findAllName(Integer sysId) {
		return personDao.findAllName(sysId);
    }

    public List<Person> findAllLabId(Integer labId) {
		return personDao.findAllLabId(labId);
    }

    public List<Person> findSysId(Integer sysId) {
		return personDao.findSysId(sysId);
    }

    public Person findByName(Integer sysId, String chief) {
		return personDao.findByName(sysId,chief);
    }

	public Long findByPageCunnt() {
		return personDao.findByPageCunnt();
	}

	public void savePers(List<Integer> idList){
		personDao.savePers(idList);
	}

	public List<Person> findSysperById(String idList) {
		return personDao.findSysperById(idList);
	}

}
