package com.atits.dao;

import com.atits.entity.Files;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author YXX
 * @Date 2017年6月20日
 * @类型 filesDao
 */
@Repository
public class FilesDao {
    // 实例化：私有实体类，类的实例化
    private Files files;// 实例

    @Autowired
    private SessionFactory sessionFactory;

    public Session getSession() {// 获取session
        return sessionFactory.getCurrentSession();
    }

    /* 以下：是系统动态显示：相关方法 */
    /*
     * 查询所有的动态：方法
	 */
    public List<Files> findAll() {
        String hql = "from t_files where state=:state1 or state =:state2 order by time desc,date desc,system.id ";

        return getSession().createQuery(hql).setParameter("state1",1).setParameter("state2",3).list();
    }

    /* 根据ID查询 */
    public Files findById(Integer id) {
        String hql = "from t_files where id =:id";
        return (Files) getSession().createQuery(hql).setParameter("id", id).uniqueResult();
//        Files files = (Files) getSession().load(Files.class, id);
//        return files;

    }

    /* 根据多个ID查询 */
    public List<Files> findByIds(Integer[] ids) {
        String hql = "";//初始化为空
        for (int i = 0; i < ids.length; i++) {
            if (i == 0) {
                hql = "id=" + ids[i];
            } else {
                hql = hql + "or id=" + ids[i];
            }
        }
        //执行为查询方法
        return getSession().createQuery("from t_files where " + hql).list();
    }

    /* 分页功能：根据起始页和分页大小，采用id进行分页 */
    public List<Files> findByPage(int startRow, int pageSize) {
        String hql = "from  t_files order by id";
        return getSession().createQuery(hql).setFirstResult(startRow).setMaxResults(pageSize).list();

    }

    /* 保存和更新方法：id=0 是保存，id≠0是更新 */
    public void save(Files files) {
        if (files.getId() == 0) {
            getSession().save(files);
        } else {
            getSession().update(files);
        }

    }

    /* 更新时间与编辑人 */
    public void updateTimeAndEditor(Integer id, String time, String date,Integer editor_id, Integer sysId, String fileType) {
        String hql = "update t_files set time=:time,date=:date,editor.id=:editor_id,system.id=:sysId,fileType=:fileType where id=:id";
        getSession().createQuery(hql).setParameter("time", time).setParameter("date",date).setParameter("editor_id", editor_id).setParameter("sysId", sysId).setParameter("id", id).setParameter("fileType", fileType).executeUpdate();
    }

    /* 保存和更新方法：id=0 是保存，id≠0是更新 */
    public int getIdOfSave(Files files) {
        if (files.getId() == 0) {
            getSession().save(files);
        } else {
            getSession().update(files);
        }
        return files.getId();

    }

//    /* 删除方法：deletes---删除，避免页面删除不了 */
//    public void delete(Integer id) {// idList：id列表参数
//        String hql = "delete from  t_files where id=:id";// 初始化为空
//        // 执行为删除方法
//        getSession().createQuery(hql).setParameter("id", id).executeUpdate();
//    }


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
        getSession().createQuery("delete from  t_files where " + hql).executeUpdate();
    }


    public void delete(Integer id) {//idList：id列表参数
        Files files = (Files) getSession().load(Files.class, id);
        getSession().delete(files);
    }


    /*更新状态*/
    public void updateState(Integer id,Integer val) {
        String hql = "update t_files set state=:state where id=:id";
        getSession().createQuery(hql).setParameter("state", val).setParameter("id", id).executeUpdate();

    }

    public List<Files> findAllBySysId(Integer sysId) {
        String hql = "from t_files where system.id =:sysId";
        return getSession().createQuery(hql).setParameter("sysId", sysId).list();
    }

}
