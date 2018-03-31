package com.atits.dao;


import com.atits.entity.TestWeight;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class TestWeightDao {

    @Autowired
    private SessionFactory sessionFactory;

    public Session getSession() {//获取session
        return sessionFactory.getCurrentSession();
    }


    /*保存和更新方法：id=0 是保存，id≠0是更新*/
    public void save(TestWeight testWeight) {
        if (testWeight.getId() == 0) {
            getSession().save(testWeight);
        } else {
            getSession().update(testWeight);
        }

    }

    public List<TestWeight> findByPage(int startRow, int pageSize) {
        String hql = "from  t_test_weight order by id";
        return getSession().createQuery(hql).setFirstResult(startRow).setMaxResults(pageSize).list();
    }

    public Long findByPageCunnt() {
        String hql = "select count(*) from t_test_weight";
        List count = getSession().createQuery(hql).list();
        return (Long) count.get(0);
    }

    public void deletes(List<Integer> idList) {
        for (Integer id : idList) {
            TestWeight testWeight = findById(id);
            //执行为删除方法
            getSession().delete(testWeight);
        }
    }

    private TestWeight findById(Integer id) {
        String hql = "from t_test_weight where id =:id";
        return (TestWeight) getSession().createQuery(hql).setParameter("id", id).uniqueResult();
    }
}
