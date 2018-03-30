package com.atits.dao;

import com.atits.entity.Notice;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class NoticeDao {

	private Notice notice;

	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public Session getSession() {

		return sessionFactory.getCurrentSession();

	}

	public List<Notice> findAll() {
		String hql = "from t_notice order by time desc,date desc,system.id";
		return getSession().createQuery(hql).list();

	}

	public Notice findById(Integer id) {
		String hql = "from t_notice where id=:id";
		return (Notice) getSession().createQuery(hql).setParameter("id", id).uniqueResult();
	}

	public List<Notice> findByPage(int startRow, int pageSize) {
		String hql = "from t_notice order by id";

		return getSession().createQuery(hql).setFirstResult(startRow).setMaxResults(pageSize).list();
	}

	public void save(Notice notice) {
		if (notice.getId()==0) {
			getSession().save(notice);
		}else {
			getSession().update(notice);
		}
		
	}

	public void deletes(List<Integer> idList) {
        String hql = "";//初始化为空
        for (int i = 0; i < idList.size(); i++) {
            if (i == 0) {
                hql = "id=" + idList.get(i);
            } else {
                hql = hql + "or id=" + idList.get(i);
            }
        }
        //执行为删除方法
        getSession().createQuery("delete from  t_notice where " + hql).executeUpdate();


    }

	public void updateState(Integer id,Integer val) {
		// TODO Auto-generated method stub
		String hql = "update t_notice set state=:state where id=:id";
		getSession().createQuery(hql).setParameter("state", val).setParameter("id", id).executeUpdate();

	}

	public List<Notice> findAllBySysId(Integer sysId) {
		String hql = "from t_notice where system.id =:sysId and state=:state";
		return getSession().createQuery(hql).setParameter("sysId",sysId).setParameter("state",1).list();
	}


	public void updateFileId(Integer id) {
		String hql = "update t_notice set fileId=:fileId where id=:id";
		getSession().createQuery(hql).setParameter("fileId", "").setParameter("id", id).executeUpdate();
	}

    public List<Notice> findByState() {
		String hql = "from t_notice where state=:state order by time desc";
		return getSession().createQuery(hql).setParameter("state", 1).list();

    }

    public void updateFlag(String idList) {
		String sql="update t_notice set flag=? where id in ("+idList+")";
		getSession().createQuery(sql).setParameter(0,1).executeUpdate();
		
    }
}
