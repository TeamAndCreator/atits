package com.atits.dao;

import com.atits.entity.TestManage;
import com.atits.entity.TestStart;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.criteria.CriteriaBuilder;
import java.lang.reflect.Executable;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

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


    //评分人：外聘人员    被评分人：体系内人员
    public int findById1(Integer eptId, Integer sysedId, Integer yearId) {
        String sql = "INSERT IGNORE INTO t_test_manage (eptExaminer_id,examedner_id,year,sys_id,mstate,date)(SELECT t.id,p.id,s.year,p.sys_id,s.state,s.date FROM (t_expert t join t_person p on t.id = (" + eptId + ") AND p.id = (" + sysedId + ")) JOIN t_test_start s ON s.id=(" + yearId + "))";
        return getSession().createQuery(sql).executeUpdate();
    }

    //评分人、被评分人：体系内人员
    public int findById2(Integer sysedId1, Integer sysedId2, Integer yearId) {
        String sql = "INSERT IGNORE INTO t_test_manage (perExaminer_id,examedner_id,year,sys_id,mstate,date) (SELECT s.id,p.id,y.year,p.sys_id,y.state,y.date FROM (t_person s join t_person p ON s.id = (" + sysedId1 + ") AND p.id = (" + sysedId2 + "))JOIN t_test_start y ON y.id=(" + yearId + "))";
        return getSession().createQuery(sql).executeUpdate();
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
        String hql = "update t_test_score set state=:state where id=:id";
        getSession().createQuery(hql).setParameter("state", val).setParameter("id", id).executeUpdate();

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
