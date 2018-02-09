package com.atits.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.atits.entity.Laboratory;
import com.atits.entity.Station;

/**
 *
 * @author YXX
 * @Date 2017年6月20日
 * @类型 DynamicDao
 */
@Repository
public class LaboratoryDao {
	// 实例化：私有实体类，类的实例化
	private Laboratory laboratory;// 实例

	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {// 获取session
		return sessionFactory.getCurrentSession();
	}

	/* 以下：是系统动态显示：相关方法 */
	/*
	 * 查询所有的动态：方法
	 */
	public List<Laboratory> findAll() {
		String hql = "from t_lab order by state, system.id asc ,id asc ";
		return getSession().createQuery(hql).list();
	}

	public List<Laboratory> findSysId(Integer sysId) {
		String hql = "from t_lab where system.id=:sysId order by id asc ";
		return getSession().createQuery(hql).setParameter("sysId",sysId).list();
	}

	//根据ID查询
	public Laboratory findById(Integer id) { //仅能显示表内信息，不包含岗位专家（没有用上）
		String hql = "from t_lab where id =:id";
		return (Laboratory) getSession().createQuery(hql).setParameter("id", id).uniqueResult();
	}
	/*
	public List<Laboratory> findById(Integer id) { //仅能显示表内信息，不包含岗位专家
		String hql = "from t_lab where id =:id";
		return getSession().createQuery(hql).setParameter("id", id).list();
	}*/



	public Laboratory findByName(Integer sysId, String labName) {
		String hql = "from t_lab where system.id =:sysId  and labName=:labName";
		return (Laboratory) getSession().createQuery(hql).setParameter("sysId", sysId).setParameter("labName", labName)
				.uniqueResult();
	}

	/* 根据体系ID查询 */
	public List<Laboratory> findBySysId(Integer sysId) {
		String hql = "from t_lab where system.id =:sysId and state=1";
		return getSession().createQuery(hql).setParameter("sysId", sysId).list();
	}


	/* 根据体系ID查询研究室名称 */
	public List<String> findNameBySysId(Integer sysId) {
		String hql = "select labName from t_lab where system.id =:sysId";
		return getSession().createQuery(hql).setParameter("sysId", sysId).list();
	}

	/* 分页功能：根据起始页和分页大小，采用id进行分页 */
	public List<Laboratory> findByPage(int startRow, int pageSize) {
		String hql = "from  t_lab order by id";
		return getSession().createQuery(hql).setFirstResult(startRow).setMaxResults(pageSize).list();

	}

	/* 保存和更新方法：id=0 是保存，id≠0是更新 */
	public void save(Laboratory laboratory) {
		if (laboratory.getId() == 0) {
			getSession().save(laboratory);
		} else {
			getSession().update(laboratory);
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
		getSession().createQuery("delete from  t_lab where " + hql).executeUpdate();
	}

	public void updateState(Integer id,Integer val) {
		// TODO Auto-generated method stub
		String hql = "update t_lab set state=:state where id=:id";
		getSession().createQuery(hql).setParameter("state", val).setParameter("id", id).executeUpdate();

	}

}
