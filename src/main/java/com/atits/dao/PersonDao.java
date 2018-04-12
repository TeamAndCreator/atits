package com.atits.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.atits.entity.Files;
import com.atits.entity.Person;
import com.atits.entity.System;;

/**
 * 
 * @author YXX
 * @Date 2017年6月20日
 * @类型 PersonDao
 */
@Repository
public class PersonDao {
	// 实例化：私有实体类，类的实例化

	// 实例

	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {// 获取session
		return sessionFactory.getCurrentSession();
	}

	/* 以下：是系统动态显示：相关方法 */
	/*
	 * 查询所有的动态：方法
	 */
	public List<Person> findAll() {
		String hql = "from t_person order by state, system.id asc,id";
		return getSession().createQuery(hql).list();
	}

	/* 根据ID查询 */
	public Person findById(Integer id) {
		String hql = "from t_person where id =:id";
		return (Person) getSession().createQuery(hql).setParameter("id", id).uniqueResult();
	}

	/*根据username查询*/
	public Person findByUserName(String username){
		String hql = "from t_person where userName=:username";
		return (Person)getSession().createQuery(hql).setParameter("username",username).uniqueResult();
	}


	/* 分页功能：根据起始页和分页大小，采用id进行分页 */
	public List<Person> findByPage(int startRow, int pageSize) {
		String hql = "from  t_person order by id";
		return getSession().createQuery(hql).setFirstResult(startRow).setMaxResults(pageSize).list();
	}

	/* 保存和更新方法：id=0 是保存，id≠0是更新 */
	public void save(Person person) {
		if (person.getId() == 0) {
			getSession().save(person);
		} else {
			getSession().update(person);
		}

	}
	
	
	
	/* 保存和更新方法：id=0 是保存，id≠0是更新 */
	public int getIdOfSave(Person person) {
		if (person.getId() == 0) {
			getSession().save(person);
		} else {
			getSession().update(person);
		}
		return person.getId();

	}

	/* 更新用户状态：0 是未激活，1是激活 */
	public void updateState(Integer id) {
		String hql = "update t_person set state=:state where id=:id";
		getSession().createQuery(hql).setParameter("state", 1).setParameter("id", id).executeUpdate();
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
		getSession().createQuery("delete from  t_person where " + hql).executeUpdate();
	}

	/* 删除方法：delete---单个删除，避免页面删除不了 */
	public void delete(Integer id) {
		Person person=findById(id);
		getSession().delete(person);
	}

	/* 查询体系中的所有成员 */
	public List<String> findAllName(Integer sysId) {
		String hql = "select  name from t_person where system.id=:sysId";
		return getSession().createQuery(hql).setParameter("sysId", sysId).list();
	}

	/* 选出参评人员：--批量选中-- */
	public void savePers(List<Integer> idList) {// idList：id列表参数
		String hql = "";// 初始化为空
		for (int i = 0; i < idList.size(); i++) {
			if (i == 0) {
				hql = "id=" + idList.get(i);
			} else {
				hql = hql + "or id=" + idList.get(i);
			}
		}
		getSession().createQuery("from  t_person where " + hql).executeUpdate();
	}

	/* 根据多个ID查询 */
	public List<Person> findSysperById(String ids) {

		String hql="from t_person where id in ("+ids+")";

		return getSession().createQuery(hql).list();
	}

//	/* 查询体系中的首席专家 */
//	public List<String> findChief(System system) {
//		String hql = "select name from t_person where role.name='首席专家' and system.id=:sysId";
//		return getSession().createQuery(hql).setParameter("sysId", system.getId()).list();
//	}
//
//	/* 查询体系中的岗位专家 */
//	public List<String> findPostExpert(System system) {
//		String hql = "select name from t_person where role.name='岗位专家' and system.id=:sysId";
//		return getSession().createQuery(hql).setParameter("sysId", system.getId()).list();
//	}
//
//	/* 查询体系中的试验站站长 */
//	public List<String> findWebmaster(System system) {
//		String hql = "select name from t_person where role.name='综合试验站站长' and system.id=:sysId";
//		return getSession().createQuery(hql).setParameter("sysId", system.getId()).list();
//	}
//
//	/* 查询体系中每个研究室的岗位专家 */
//	public List<String> findWebmasterOfLab(System system, String labName) {
//		String hql = "select name from t_person where laboratory.id=:labName and system.id=:sysId";
//		return getSession().createQuery(hql).setParameter("labName", labName)
//				.setParameter("sysId", system.getId()).list();
//	}

	/* 查询体系中每个研究室的岗位专家 */
    public List<Person> findAllLabId(Integer labId) {
		String hql = "from t_person where laboratory.id=:labId";
		return getSession().createQuery(hql).setParameter("labId", labId).list();
	}

	/* 查询体系中的试验站站长 */
	public List<Person> findAllStaId(Integer staId) {
		String hql = "from t_person where station.id=:staId";
		return getSession().createQuery(hql).setParameter("staId", staId).list();
	}

    public List<Person> findSysId(Integer sysId) {
		String hql = "from t_person where system.id=:sysId";
		return getSession().createQuery(hql).setParameter("sysId", sysId).list();
    }

    public Person findByName(Integer sysId, String chief) {
		String hql="from t_person where system.id=:sysId and name=:chief";
		return (Person) getSession().createQuery(hql).setParameter("sysId", sysId).setParameter("chief",chief).uniqueResult();
    }

	public Long findByPageCunnt() {
		String hql="select count(*) from t_person";
			List persons=getSession().createQuery(hql).list();
		return (Long) persons.get(0);
	}
}
