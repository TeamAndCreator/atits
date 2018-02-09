package com.atits.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.atits.entity.Task;

/**
 * @author James
 * @Date 2017年7月12日
 * @类型 TaskDao
 */
@Repository
public class TaskDao {
    //实例化：私有实体类，类的实例化
    private Task task;//实例

    @Autowired
    private SessionFactory sessionFactory;

    public Session getSession() {//获取session
        return sessionFactory.getCurrentSession();
    }

    /*以下：是系统动态显示：相关方法*/
    /*
     * 查询所有的动态：方法
	 */
    public List<Task> findAll() {
        String hql = "from t_task order by time desc ,date desc,system.id ";
        return getSession().createQuery(hql).list();
    }

    public List<Task> findAllBySysId(Integer sysId) {
        String hql = "from t_task where system.id =:sysId";
        return getSession().createQuery(hql).setParameter("sysId", sysId).list();
    }

    /*根据ID查询*/
    public Task findById(Integer id) {
        String hql = "from t_task where id =:id";
        return (Task) getSession().createQuery(hql).setParameter("id", id).uniqueResult();
    }

    /*分页功能：根据起始页和分页大小，采用id进行分页*/
    public List<Task> findByPage(int startRow, int pageSize) {
        String hql = "from  t_task order by id";
        return getSession().createQuery(hql).setFirstResult(startRow).setMaxResults(pageSize).list();
    }

    /*保存和更新方法：id=0 是保存，id≠0是更新*/
    public void save(Task task) {
        if (task.getId() == 0) {
            getSession().save(task);
        } else {
            getSession().update(task);
        }
    }

    /*删除方法：deletes---批量删除，避免页面删除不了*/
    public void deletes(List<Integer> idList) {//idList：id列表参数
        for (int i = 0; i < idList.size(); i++) {
            Task task = findById(idList.get(i));
            getSession().delete(task);
            }
        }


    public void delete(int id) {
        Task task = findById(id);
        getSession().delete(task);
    }

    public List<Task> findByBearer(Integer sysId, String bearer) {
        String hql = "from t_task where system.id =:sysId and bearer=:bearer";
        return getSession().createQuery(hql).setParameter("sysId", sysId).setParameter("bearer", bearer).list();
    }

    /* 更新状态：0 是未审核，1是通过,2是未通过 */
    public void updateState(Integer id, Integer val) {
        String hql = "update t_task set state=:state where id=:id";
        getSession().createQuery(hql).setParameter("state", val).setParameter("id", id).executeUpdate();

    }

    public void updateFileId(Integer id) {
        String hql = "update t_task set fileId=:fileId where id=:id";
        getSession().createQuery(hql).setParameter("fileId", "").setParameter("id", id).executeUpdate();
    }

    public List<Object[]> taskNum() {
//        String hql = "select t_system.id, t_system.sysName,COUNT(t_task.system.id) from t_system left join t_task where t_system.id=t_task.system.id group by t_system.id";
//        String hql = "select t_system.id, t_system.sysName,COUNT(t_task.system.id) from Photo p left join p.album a left join a.user u where u.id="+user_id;
//        String hql="select t_system.id, t_system.sysName,COUNT(t_task.system.id) from t_task where t_task.system.id in (from t_system ) group by t_system.id";
        return (List<Object[]>) getSession().createSQLQuery("select t_system.id, t_system.sys_name,COUNT(t_task.sys_id) from t_system left join t_task on t_system.id=t_task.sys_id group by t_system.id").list();
//        return getSession().createQuery(hql).list();
    }
}
