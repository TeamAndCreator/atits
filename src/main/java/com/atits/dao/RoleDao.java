package com.atits.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.atits.entity.Role;

/**
 * @author YXX
 * @Date 2017年6月20日
 * @类型 RoleDao
 */
@Repository
public class RoleDao {
    //实例化：私有实体类，类的实例化
    private Role role;//实例

    @Autowired
    private SessionFactory sessionFactory;

    public Session getSession() {//获取session
        return sessionFactory.getCurrentSession();
    }

    /*以下：是系统动态显示：相关方法*/
    /*
     * 查询所有的动态：方法
	 */
    public List<Role> findAll() {
        String hql = "from t_role";
        List<Role> list = getSession().createQuery(hql).list();
        list.remove(0);
        return list;
    }

    /*根据ID查询*/
    public Role findById(Integer id) {
        String hql = "from t_role where id =:id";
        return (Role) getSession().createQuery(hql).setParameter("id", id).uniqueResult();
    }


    /*根据名称查询*/
    public Role findByName(String name) {
        String hql = "from t_role where name =:name";
        return (Role) getSession().createQuery(hql).setParameter("name", name).uniqueResult();
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
        getSession().createQuery("delete from  t_role where " + hql).executeUpdate();
    }

    /* 删除方法：delete---单个删除，避免页面删除不了 */
    public void delete(Integer id) {
        String hql = "delete from t_role where id=:id";
        getSession().createQuery(hql).setParameter("id", id).executeUpdate();
    }

    /*保存和更新方法：id=0 是保存，id≠0是更新*/
    public void save(Role role) {
        if (role.getId() == 0) {
            getSession().save(role);
        } else {
            getSession().update(role);
        }

    }
}
