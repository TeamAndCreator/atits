package com.atits.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.atits.entity.Profile;

/**
 * 
 * @author YXX
 * @Date 2017年6月20日
 * @类型 profileDao
 */
@Repository
public class ProfileDao {
	// 实例化：私有实体类，类的实例化
	private Profile profile;// 实例

	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {// 获取session
		return sessionFactory.getCurrentSession();
	}

	/* 以下：是系统动态显示：相关方法 */
	/*
	 * 查询所有的动态：方法
	 */
	public List<Profile> findAll() {
		String hql = "from t_profile";
		return getSession().createQuery(hql).list();
	}

	/* 根据ID查询 */
	public Profile findById(Integer id) {
		String hql = "from t_profile where id =:id";
		return (Profile) getSession().createQuery(hql).setParameter("id", id).uniqueResult();
	}
	
	/* 根据多个ID查询 */
	public List<Profile> findByIds(Integer[] ids) {
		String hql = "";//初始化为空
		for(int i = 0;i< ids.length;i++){
			if(i == 0){
				hql = "id="+ids[i];
			}else{
				hql = hql +"or id="+ids[i];
			}
		}
		//执行为查询方法
		return getSession().createQuery("from t_profile where "+hql).list();
	}

	/* 分页功能：根据起始页和分页大小，采用id进行分页 */
	public List<Profile> findByPage(int startRow, int pageSize) {
		String hql = "from  t_profile order by id";
		return getSession().createQuery(hql).setFirstResult(startRow).setMaxResults(pageSize).list();

	}

	/* 保存和更新方法：id=0 是保存，id≠0是更新 */
	public void save(Profile profile) {
		if (profile.getId() == 0) {
			getSession().save(profile);
		} else {
			getSession().update(profile);
		}

	}



	/* 保存和更新方法：id=0 是保存，id≠0是更新 */
	public int getIdOfSave(Profile profile) {
		if (profile.getId() == 0) {
			getSession().save(profile);
		} else {
			getSession().update(profile);
		}
		return profile.getId();

	}

	/* 删除方法：deletes---删除，避免页面删除不了 */
	public void delete(Integer id) {// idList：id列表参数
		String hql = "delete from  t_profile where id=:id";// 初始化为空
		// 执行为删除方法
		getSession().createQuery(hql).setParameter("id", id).executeUpdate();
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
		getSession().createQuery("delete from  t_profile where "+hql).executeUpdate();
	}

}
