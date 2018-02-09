package com.atits.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.atits.entity.Person;

@Repository
public class LoginDao {

	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public Session getSession() {

		return sessionFactory.getCurrentSession();

	}

	public Person login(Integer sysId,String userName, String password) {
		String hql = "from t_person where userName=:user_name or name=:name and password =:password and system.id=:sysId";

		List<Person> list = getSession().createQuery(hql).setParameter("user_name", userName).setParameter("name",userName)
				.setParameter("password", password).setParameter("sysId",sysId).list();
		if (list != null && list.size() > 0) {
			return list.get(0);
		} else {
			return null;
		}
	}

}
