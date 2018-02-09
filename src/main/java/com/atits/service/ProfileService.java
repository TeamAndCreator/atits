package com.atits.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.atits.dao.ProfileDao;
import com.atits.entity.Profile;
/**
 * 
 * @author YXX
 * @Date   2017年6月20日
 * @类型    DynamicService
 */
/*@Service业务层，事务型：@Transactional*/
@Transactional
@Service
public class ProfileService {
	
	@Resource
	private ProfileDao profileDao;//注入dao数据
	
	/*profileDao的get和set方法*/
	public void setprofileDao(ProfileDao profileDao){
		this.profileDao = profileDao;
	}
	
	public void getprofileDao(ProfileDao profileDao){
		this.profileDao = profileDao;
	}
	
	/*查询所有方法：findAll*/
	public List<Profile> findAll(){//与集合不同，列表通常允许重复元素
		return profileDao.findAll();
	}
	
	/*根据id进行查询*/
	public Profile findById(Integer id){
		return profileDao.findById(id);//调用dao的方法
	}
	
	/*根据页数：进行分页*/
	public List<Profile> findByPage(int startRow,int pageSize){
		return  profileDao.findByPage(startRow, pageSize);//调用dao的方法
	}
	
	/*Dynamic:是实体类*/	
	public void save(Profile profile){
		profileDao.save(profile);//
		
	}
	
	/*单个删除：*/
	public void  deletes(Integer id){//void 可以不用返回参数，int要返回参数
		profileDao.delete(id);
	}
	
	/*批量删除：*/
	public void  deletes(List<Integer> idList){//void 可以不用返回参数，int要返回参数
		profileDao.deletes(idList);
	}
	
	/*更新方法：update*/
	public void update(Profile profile){
		profileDao.save(profile);
	}
}
