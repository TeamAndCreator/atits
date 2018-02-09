package com.atits.dao;

import com.atits.entity.TestStart;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TestSartDao {

    @Autowired
    private SessionFactory sessionFactory;

    public Session getSession() {//获取session
        return sessionFactory.getCurrentSession();
    }

    /*以下：是系统动态显示：相关方法*/
    /*
     * 查询所有的动态：方法
	 */
    public List<TestStart> findAll() {
        String hql = "from t_test_start order by system.id";
        return getSession().createQuery(hql).list();
    }
    public TestStart findById(Integer id) {
        String hql = "from t_test_start where id=:id";
        return (TestStart) getSession().createQuery(hql).setParameter("id", id).uniqueResult();
    }

    public List<TestStart> findAll(Integer state) {
        String hql = "from t_test_start where state=:state order by system.id";
        return getSession().createQuery(hql).setParameter("state",state).list();
    }


    public List<TestStart> findByPage(int startRow, int pageSize) {
        String hql = "from  t_test_start order by id";
        return getSession().createQuery(hql).setFirstResult(startRow).setMaxResults(pageSize).list();
    }

    /* 保存和更新方法：id=0 是保存，id≠0是更新 */
    public void save(TestStart testStart) {
        if (testStart.getId() == 0) {
            getSession().save(testStart);
        } else {
            getSession().update(testStart);
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
        getSession().createQuery("delete from  t_test_start where " + hql).executeUpdate();
    }

    public void updateState(Integer id,Integer val) {
        // TODO Auto-generated method stub
        String hql = "update t_test_start set state=:state where id=:id";
        getSession().createQuery(hql).setParameter("state", val).setParameter("id", id).executeUpdate();

    }

}
