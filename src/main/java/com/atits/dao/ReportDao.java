package com.atits.dao;

import com.atits.entity.Report;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class ReportDao {

    @Autowired
    private SessionFactory sessionFactory;

    public Session getSession() {//获取session
        return sessionFactory.getCurrentSession();
    }


    /*以下：是重大成果显示：相关方法*/
    /*
     * 查询所有的活动：方法
     */
    public List<Report> findAll() {
        String hql = "from t_report order by time desc,date desc ,system.id";
        return getSession().createQuery(hql).list();
    }

    /*根据ID查询*/
    public Report findById(Integer id) {
        String hql = "from t_report where id =:id";
        return (Report) getSession().createQuery(hql).setParameter("id", id).uniqueResult();
    }

    /*分页功能：根据起始页和分页大小，采用id进行分页*/
    public List<Report> findByPage(int startRow, int pageSize) {
        String hql = "from  t_report order by id";
        return getSession().createQuery(hql).setFirstResult(startRow).setMaxResults(pageSize).list();

    }

    /*保存和更新方法：id=0 是保存，id≠0是更新*/
    public void save(Report report) {
        if (report.getId() == 0) {
            getSession().save(report);
        } else {
            getSession().update(report);
        }

    }

    /*删除方法：deletes---批量删除，避免页面删除不了*/
    public void deletes(List<Integer> idList) {//idList：id列表参数
        for (Integer anIdList : idList) {
            Report report = findById(anIdList);
            //执行为删除方法
            getSession().delete(report);
        }
    }

    /* 更新状态：0 是未审核，1是通过,2是未通过 */
    public void updateState(Integer id, Integer val) {
        String hql = "update t_report set state=:state where id=:id";
        getSession().createQuery(hql).setParameter("state", val).setParameter("id", id).executeUpdate();

    }

    public List<Report> findAllBySysId(Integer sysId) {
        String hql = "from t_report where system.id =:sysId and state=:state order by time desc";
        return getSession().createQuery(hql).setParameter("sysId", sysId).setParameter("state", 1).list();
    }

    public void updateFileId(Integer id) {
        String hql = "update t_report set fileId=:fileId where id=:id";
        getSession().createQuery(hql).setParameter("fileId", "").setParameter("id", id).executeUpdate();
    }

    public List<Report> findByState() {
        String hql = "from t_report where state=:state order by time desc";
        return getSession().createQuery(hql).setParameter("state", 1).list();
    }

    public Long findByPageCunnt() {
        String hql="select count(*) from t_report ";
        List report=getSession().createQuery(hql).list();
        return (Long) report.get(0);
    }

    public void updateFlag(String idList) {
    }
}
