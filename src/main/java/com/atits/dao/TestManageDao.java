package com.atits.dao;

import com.atits.entity.TestManage;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TestManageDao {

    @Autowired
    private SessionFactory sessionFactory;

    public Session getSession() {//获取session
        return sessionFactory.getCurrentSession();
    }

    public List<TestManage> findAll() {
        String hql = "from t_test_manage order by id";
        return getSession().createQuery(hql).list();
    }




    /*根据ID查询*/
    public TestManage findById(Integer id) {
        String hql = "from t_test_manage where id =:id";
        return (TestManage) getSession().createQuery(hql).setParameter("id", id).uniqueResult();
    }

    /*保存和更新方法：id=0 是保存，id≠0是更新*/
    public void save(TestManage testManage) {
        if (testManage.getId() == 0) {
            getSession().save(testManage);
        } else {
            getSession().update(testManage);
        }

    }


    /*更改考评状态：updateState 0是考评，1是已考评*/
    public void updateState(Integer id, Integer val) {
        String hql = "update t_test_manage set mstate=:mstate where id=:id";
        getSession().createQuery(hql).setParameter("mstate", val).setParameter("id", id).executeUpdate();

    }

    public Long findByPageCunnt() {

    String hql="select count(*) from t_test_manage";
    List persons=getSession().createQuery(hql).list();
		return (Long) persons.get(0);
}

    /* 分页功能：根据起始页和分页大小，采用id进行分页 */
    public List<TestManage> findByPage(int startRow, int pageSize) {
        String hql = "from  t_test_manage order by id";
        return getSession().createQuery(hql).setFirstResult(startRow).setMaxResults(pageSize).list();
    }
}
