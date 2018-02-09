package com.atits.dao;

import com.atits.entity.SubTask;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author James
 * @Date 2017年7月12日
 * @类型 SubTaskDao
 */
@Repository
public class SubTaskDao {
    //实例化：私有实体类，类的实例化
    private SubTask subTask;//实例

    @Autowired
    private SessionFactory sessionFactory;

    public Session getSession() {//获取session
        return sessionFactory.getCurrentSession();
    }

    /*以下：是系统动态显示：相关方法*/
    /*
     * 查询所有的动态：方法
	 */
    public List<SubTask> findAll(Integer taskId) {//找到体系为taskId的子任务
        String hql = "from t_sub_task where task.id=:taskId order by time desc ,date desc ,task.system.id";
        return getSession().createQuery(hql).setParameter("taskId", taskId).list();
    }

    public List<SubTask> findAll() {//找到体系为taskId的子任务
        String hql = "from t_sub_task order by time desc ,date desc ,task.system.id";
        return getSession().createQuery(hql).list();
    }
    public List<SubTask> findByBearerId(Integer bearerId){
        String hql = "from t_sub_task where bearer.id =:bearerId order by time desc,date desc";
        return getSession().createQuery(hql).setParameter("bearerId",bearerId).list();
    }
//    public List<SubTask> findByBearerId(String name){
//        String hql = "from t_sub_task where bearer like :name order by time desc,date desc";
//        return getSession().createQuery(hql).setParameter("name","%"+name+"%").list();
//    }
    /*根据ID查询*/
    public SubTask findById(Integer id) {
        String hql = "from t_sub_task where id =:id";
        return (SubTask) getSession().createQuery(hql).setParameter("id", id).uniqueResult();
    }

    /*分页功能：根据起始页和分页大小，采用id进行分页*/
    public List<SubTask> findByPage(int startRow, int pageSize) {
        String hql = "from  t_sub_task order by id";
        return getSession().createQuery(hql).setFirstResult(startRow).setMaxResults(pageSize).list();
    }

    /*保存和更新方法：id=0 是保存，id≠0是更新*/
    public void save(SubTask SubTask) {
        if (SubTask.getId() == 0) {
            getSession().save(SubTask);
        } else {
            getSession().update(SubTask);
        }
    }

    /*删除方法：deletes---批量删除，避免页面删除不了*/
    public void deletes(List<Integer> idList) {//idList：id列表参数
        for (int i = 0; i < idList.size(); i++) {
            SubTask subTask = findById(idList.get(i));
            getSession().delete(subTask);
        }
    }


    /* 更新状态：0 是未审核，1是通过,2是未通过 */
    public void updateState(Integer id, Integer val) {
        String hql = "update t_sub_task set state=:state where id=:id";
        getSession().createQuery(hql).setParameter("state", val).setParameter("id", id).executeUpdate();

    }

    public void updateFileId(Integer id) {
        String hql = "update t_sub_task set fileId=:fileId where id=:id";
        getSession().createQuery(hql).setParameter("fileId", "").setParameter("id", id).executeUpdate();
    }


}
