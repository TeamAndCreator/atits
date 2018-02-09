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
public class StationDao {
	// 实例化：私有实体类，类的实例化
	private Station station;// 实例

	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {// 获取session
		return sessionFactory.getCurrentSession();
	}

	/* 以下：是系统动态显示：相关方法 */
	/*
	 * 查询所有的动态：方法
	 */
	public List<Station> findAll() {
		String hql = "from t_sta order by state, system.id asc ,id asc ";
		return getSession().createQuery(hql).list();
	}

	public List<Station> findAll(Integer sysId) {
		String hql = "from t_sta where system.id=:sysId order by id asc ";
		return getSession().createQuery(hql).setParameter("sysId",sysId).list();
	}

	/* 根据ID查询 */
	public Station findById(Integer id) {
		String hql = "from t_sta where id =:id";
		return (Station) getSession().createQuery(hql).setParameter("id", id).uniqueResult();
	}

	public Station findByName(Integer sysId, String staName) {
		String hql = "from t_sta where system.id =:sysId and staName=:staName";
		return (Station) getSession().createQuery(hql).setParameter("sysId", sysId).setParameter("staName", staName)
				.uniqueResult();
	}

	/* 根据体系ID查询 */
	public List<Station> findBySysId(Integer sysId) {
		String hql = "from t_sta where system.id =:sysId and state=1";
		return getSession().createQuery(hql).setParameter("sysId", sysId).list();
	}

	/* 根据体系ID查询试验站名称 */
	public List<String> findNameBySysId(Integer sysId) {
		String hql = "select staName from t_sta where system.id =:sysId";
		return getSession().createQuery(hql).setParameter("sysId", sysId).list();
	}

	/* 分页功能：根据起始页和分页大小，采用id进行分页 */
	public List<Laboratory> findByPage(int startRow, int pageSize) {
		String hql = "from t_sta order by id";
		return getSession().createQuery(hql).setFirstResult(startRow).setMaxResults(pageSize).list();

	}

	/* 保存和更新方法：id=0 是保存，id≠0是更新 */
	public void save(Station station) {
		if (station.getId() == 0) {
			getSession().save(station);
		} else {
			getSession().update(station);
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
		getSession().createQuery("delete from  t_sta where " + hql).executeUpdate();
	}

	public void updateState(Integer id,Integer val) {
		// TODO Auto-generated method stub
		String hql = "update t_sta set state=:state where id=:id";
		getSession().createQuery(hql).setParameter("state", val).setParameter("id", id).executeUpdate();

	}

}
