package com.atits.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.atits.entity.Dynamic;

/**
 * @author YXX
 * @Date 2017年6月20日
 * @类型 DynamicDao
 */
@Repository
public class DynamicDao {
    //实例化：私有实体类，类的实例化
    private Dynamic dynamic;//实例

    @Autowired
    private SessionFactory sessionFactory;

    public Session getSession() {//获取session
        return sessionFactory.getCurrentSession();
    }

    /*以下：是系统动态显示：相关方法*/
    /*
     * 查询所有的动态：方法
	 */
    public List<Dynamic> findAll() {
        String hql = "from t_dynamic order by time desc,date desc ,system.id";
        return getSession().createQuery(hql).list();
    }

    /*根据ID查询*/
    public Dynamic findById(Integer id) {
        String hql = "from t_dynamic where id =:id";
        return (Dynamic) getSession().createQuery(hql).setParameter("id", id).uniqueResult();
    }

    /*分页功能：根据起始页和分页大小，采用id进行分页*/
    public List<Dynamic> findByPage(int startRow, int pageSize) {
        String hql = "from  t_dynamic order by id";
        return getSession().createQuery(hql).setFirstResult(startRow).setMaxResults(pageSize).list();

    }

    /*保存和更新方法：id=0 是保存，id≠0是更新*/
    public void save(Dynamic dynamic) {
        if (dynamic.getId() == 0) {
            getSession().save(dynamic);
        } else {
            getSession().update(dynamic);
        }

    }

    /*删除方法：deletes---批量删除，避免页面删除不了*/
    public void deletes(List<Integer> idList) {//idList：id列表参数
        String hql = "";//初始化为空
        for (int i = 0; i < idList.size(); i++) {
            if (i == 0) {
                hql = "id=" + idList.get(i);
            } else {
                hql = hql + "or id=" + idList.get(i);
            }
        }
        //执行为删除方法
        getSession().createQuery("delete from  t_dynamic where " + hql).executeUpdate();
    }

    /* 更新状态：0 是未审核，1是通过,2是未通过 */
    public void updateState(Integer id, Integer val) {
        String hql = "update t_dynamic set state=:state where id=:id";
        getSession().createQuery(hql).setParameter("state", val).setParameter("id", id).executeUpdate();

    }

    public List<Dynamic> findAllBySysId(Integer sysId) {
        String hql = "from t_dynamic where system.id =:sysId and state=:state order by time desc";
        return getSession().createQuery(hql).setParameter("sysId", sysId).setParameter("state", 1).list();
    }

    public void updateFileId(Integer id) {
        String hql = "update t_dynamic set fileId=:fileId where id=:id";
        getSession().createQuery(hql).setParameter("fileId", "").setParameter("id", id).executeUpdate();
    }

    public List<Dynamic> findByState() {
        String hql = "from t_dynamic where state=:state order by time desc";
        return getSession().createQuery(hql).setParameter("state", 1).list();
    }
}
