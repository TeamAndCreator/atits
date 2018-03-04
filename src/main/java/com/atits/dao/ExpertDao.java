package com.atits.dao;

import com.atits.entity.Expert;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ExpertDao {

    @Autowired
    private SessionFactory sessionFactory;

    public Session getSession() {// 获取session
        return sessionFactory.getCurrentSession();
    }

    public List<Expert> findAll() {
        String hql = "from t_expert order by id";
        return getSession().createQuery(hql).list();
    }

//    /* 根据ID查询 */
//    public Expert findById(Integer id) {
//        String hql = "from t_expert where id =:id";
//        return (Expert) getSession().createQuery(hql).setParameter("id", id).uniqueResult();
//    }
//
//    /* 分页功能：根据起始页和分页大小，采用id进行分页 */
//    public List<Expert> findByPage(int startRow, int pageSize) {
//        String hql = "from  t_expert order by id";
//        return getSession().createQuery(hql).setFirstResult(startRow).setMaxResults(pageSize).list();
//    }

    /* 保存和更新方法：id=0 是保存，id≠0是更新 */
    public void save(Expert expert) {
        if (expert.getId() == 0) {
            getSession().save(expert);
        } else {
            getSession().update(expert);
        }
    }


//    /* 保存和更新方法：id=0 是保存，id≠0是更新 */
//    public int getIdOfSave(Expert expert) {
//        if (expert.getId() == 0) {
//            getSession().save(expert);
//        } else {
//            getSession().update(expert);
//        }
//        return expert.getId();
//    }

//    /* 更新用户状态：0 是未激活，1是激活 */
//    public void updateState(Integer id) {
//        String hql = "update t_expert set state=:state where id=:id";
//        getSession().createQuery(hql).setParameter("state", 1).setParameter("id", id).executeUpdate();
//    }

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
        getSession().createQuery("delete from  t_expert where " + hql).executeUpdate();
    }

    //    public List<Expert> findById(Integer[] idList) {
//        String hql = "from t_expert where id in ("+idList.toString()+")order by id";
//        return getSession().createQuery(hql).list();
//
//    }
    /* 根据多个ID查询 */
    public List<Expert> findById(String ids) {
        String hql = "from t_expert where id in (" + ids + ")";
        return getSession().createQuery(hql).list();
    }
}
