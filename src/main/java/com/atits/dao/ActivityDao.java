package com.atits.dao;


import com.atits.entity.Activity;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ActivityDao {

    @Autowired
    private SessionFactory sessionFactory;

    public Session getSession() {//获取session
        return sessionFactory.getCurrentSession();
    }


    /*以下：是重大活动显示：相关方法*/
    /*
     * 查询所有的活动：方法
     */
    public List findAll() {
        String hql = "from t_activity order by time desc,date desc ,system.id";
        List list = getSession().createQuery(hql).list();
        return list;
    }

    /*根据ID查询*/
    public Activity findById(Integer id) {
        String hql = "from t_activity where id =:id";
        return (Activity) getSession().createQuery(hql).setParameter("id", id).uniqueResult();
    }

    /*分页功能：根据起始页和分页大小，采用id进行分页*/
    public List<Activity> findByPage(int startRow, int pageSize) {
        String hql = "from  t_activity order by id";
        return getSession().createQuery(hql).setFirstResult(startRow).setMaxResults(pageSize).list();

    }

    /*保存和更新方法：id=0 是保存，id≠0是更新*/
    public void save(Activity activity) {
        if (activity.getId() == 0) {
            getSession().save(activity);
        } else {
            getSession().update(activity);
        }

    }

    /*删除方法：deletes---批量删除，避免页面删除不了*/
    public void deletes(List<Integer> idList) {//idList：id列表参数
        for (Integer anIdList : idList) {
            Activity activity = findById(anIdList);
            //执行为删除方法
            getSession().delete(activity);
        }
    }

    /* 更新状态：0 是未审核，1是通过,2是未通过 */
    public void updateState(Integer id, Integer val) {
        String hql = "update t_activity set state=:state where id=:id";
        getSession().createQuery(hql).setParameter("state", val).setParameter("id", id).executeUpdate();

    }

    public List<Activity> findAllBySysId(Integer sysId) {
        String hql = "from t_activity where system.id =:sysId and state=:state order by time desc";
        return getSession().createQuery(hql).setParameter("sysId", sysId).setParameter("state", 1).list();
    }

    public void updateFileId(Integer id) {
        String hql = "update t_activity set fileId=:fileId where id=:id";
        getSession().createQuery(hql).setParameter("fileId", "").setParameter("id", id).executeUpdate();
    }

    public List<Activity> findByState() {
        String hql = "from t_activity where state=:state order by time desc";
        return getSession().createQuery(hql).setParameter("state", 1).list();
    }

    public Long findByPageCunnt() {
        String hql="select count(*) from t_activity ";
        List activity=getSession().createQuery(hql).list();
        return (Long) activity.get(0);
    }
}
