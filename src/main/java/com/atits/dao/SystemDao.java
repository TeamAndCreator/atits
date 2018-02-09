package com.atits.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.atits.entity.Role;
import com.atits.entity.System;
/**
 * 
 * @author YXX
 * @Date   2017年6月20日
 * @类型    SystemDao
 */
@Repository
public class SystemDao {
	//实例化：私有实体类，类的实例化
	private System system;//实例
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){//获取session
		return sessionFactory.getCurrentSession();
	}
	
	/*保存和更新方法：id=0 是保存，id≠0是更新*/
	public void save(System system){
		if(system.getId()==0){
			getSession().save(system);
		}else{
			getSession().update(system);
		}
		
	}
	
	
	/*删除方法：deletes---批量删除，避免页面删除不了*/
	public void deletes(List<Integer> idList){//idList：id列表参数
		String hql = "";//初始化为空
		for(int i = 0;i< idList.size();i++){
			if(i == 0){
				hql = "id="+idList.get(i);
			}else{
				hql = hql +"or id="+idList.get(i);
			}
		}
		//执行为删除方法
		getSession().createQuery("delete from  t_system where "+hql).executeUpdate();
	}
	
	
	/*以下：是系统动态显示：相关方法*/	 
	/*
	 * 查询所有的动态：方法
	 */
	public List<System> findAll() {
		String hql = "from t_system";
		return getSession().createQuery(hql).list();
	}
	
	/*根据ID查询*/
	public System findById(Integer id){
		String hql= "from t_system where id =:id";
		return (System)getSession().createQuery(hql).setParameter("id",id).uniqueResult();
	}
	
	
	/*根据体系名称查询*/
	public System findByName(String sysName){
		String hql= "from t_system where sysName =:sys_name";
		return (System)getSession().createQuery(hql).setParameter("sys_name",sysName).uniqueResult();
	}
	
}
