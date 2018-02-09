package com.atits.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.atits.entity.TestScore;

import javax.persistence.criteria.CriteriaBuilder;

@Repository
public class TestScoreDao {
    //实例化：私有实体类，类的实例化
    private TestScore testScore;//实例

    @Autowired
    private SessionFactory sessionFactory;

    public Session getSession() {//获取session
        return sessionFactory.getCurrentSession();
    }

    /*以下：是系统动态显示：相关方法*/
    /*
     * 查询所有的动态：方法
	 */
    public List<TestScore> findAll(){
        String hql = "from t_test_score where testManage.id=: id";
        return getSession().createQuery(hql).list();
    }

//    public List<TestScore> findAllById(Integer id) {
//        String hql = "from t_test_score where id =:test_manage_id";
//        return getSession().createQuery(hql).setParameter("test_manage_id", id).list();
//    }

    /*根据ID查询*/
    public TestScore findById(Integer id) {
        String hql = "from t_test_score where id =:id";
        return (TestScore) getSession().createQuery(hql).setParameter("id", id).uniqueResult();
    }

    /*保存和更新方法：id=0 是保存，id≠0是更新*/
    public void save(TestScore testScore) {
        if (testScore.getId() == 0) {
            getSession().save(testScore);
        } else {
            getSession().update(testScore);
        }
    }

    /*删除方法：deletes---批量删除，避免页面删除不了*/
    public void deletes(List<Integer> idList) {//idList：id列表参数
        for (int i = 0; i < idList.size(); i++) {
            TestScore testScore = findById(idList.get(i));
            getSession().delete(testScore);
        }
    }


}
