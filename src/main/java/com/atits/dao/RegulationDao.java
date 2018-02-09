package com.atits.dao;

import java.util.List;

import com.atits.entity.System;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.atits.entity.Regulation;
/**
 *
 * @author YXX
 * @Date   2017年6月20日
 * @类型    DynamicDao
 */
@Repository
public class RegulationDao {
	//实例化：私有实体类，类的实例化
	private Regulation regulation;//实例

	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession(){//获取session
		return sessionFactory.getCurrentSession();
	}

	/*以下：是系统动态显示：相关方法*/	 
	/*
	 * 查询所有的动态：方法
	 */
	public List<Regulation> findAll() {
		String hql = "from t_regulation order by time desc,date desc ,system.id asc ";
		return getSession().createQuery(hql).list();
	}

	/*根据ID查询*/
	public Regulation findById(Integer id){
		String hql= "from t_regulation where id =:id";
		return (Regulation)getSession().createQuery(hql).setParameter("id",id).uniqueResult();
	}

	/*分页功能：根据起始页和分页大小，采用id进行分页*/
	public List<Regulation> findByPage(int startRow,int pageSize){
		String hql = "from  t_regulation order by id";
		return  getSession().createQuery(hql).setFirstResult(startRow).setMaxResults(pageSize).list();

	}

	/*保存和更新方法：id=0 是保存，id≠0是更新*/
	public void save(Regulation regulation){
		if(regulation.getId()==0){
			getSession().save(regulation);
		}else{
			getSession().update(regulation);
		}

	}

	/* 删除方法：deletes---批量删除，避免页面删除不了 */
	public void deletes(List<Integer> idList) {// idList：id列表参数
		String hql = "";// 初始化为空
		for (int i = 0; i < idList.size(); i++) {
			if (i == 0) {
				hql = "id=" + idList.get(i);
			} else {
				hql = hql + "or id=" + idList.get(i);
			}
		}
		// 执行为删除方法
		getSession().createQuery("delete from  t_regulation where " + hql).executeUpdate();
	}


	public void updateState(Integer id,Integer val) {
		// TODO Auto-generated method stub
		String hql = "update t_regulation set state=:state where id=:id";
		getSession().createQuery(hql).setParameter("state", val).setParameter("id", id).executeUpdate();

	}

	public List<Regulation> findAllBySysId(Integer sysId) {
		String hql = "from t_regulation where system.id =:sysId";
		return getSession().createQuery(hql).setParameter("sysId",sysId).list();
	}

	public void updateFileId(Integer id) {
		java.lang.System.out.print("dao:"+id);
		String hql = "update t_regulation set fileId=:fileId where id=:id";
		getSession().createQuery(hql).setParameter("fileId", "").setParameter("id", id).executeUpdate();
	}
}
