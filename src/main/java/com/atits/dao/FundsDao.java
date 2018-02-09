package com.atits.dao;

import com.atits.entity.Funds;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/***
 *
 */
@Repository
public class FundsDao {

    @Autowired
    private SessionFactory sessionFactory;
    private  List list;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public Session getSession(){
        return sessionFactory.getCurrentSession();
    }



    /*
      * 查询所有的动态：方法
      */
    public List<Funds> findAll() {
        String hql = "from t_funds ";
         list=getSession().createQuery(hql).list();
        return list;
    }

    /*根据ID查询*/
    public Funds findById(Integer id){
        String hql= "from t_funds where id =:id";
        return (Funds)getSession().createQuery(hql).setParameter("id",id).uniqueResult();
    }

    /*分页功能：根据起始页和分页大小，采用id进行分页*/
    public List<Funds> findByPage(int startRow,int pageSize){
        String hql = "from  t_funds order by id";
         list=getSession().createQuery(hql).setFirstResult(startRow).setMaxResults(pageSize).list();
        return  list;

    }

    /*保存和更新方法：id=0 是保存，id≠0是更新*/
    public void save(Funds funds){
        if(funds.getId()==0){
            System.err.println("save");
            getSession().save(funds);
        }else{
            System.out.println("update");
            getSession().update(funds);
        }

    }

    /*删除方法：deletes---批量删除，避免页面删除不了*/
    public void deletes(List<Integer> idList){//idList：id列表参数
        String hql = "";//初始化为空
        for(int i = 0;i< idList.size();i++){
            if(i == 0){
                hql = "id="+idList.get(i);
            }else{
                hql = hql +"or id="+idList.get(i);
            }
        }
        //执行为删除方法
        getSession().createQuery("delete from  t_funds where "+hql).executeUpdate();
    }

    /* 更新状态：0 是未激活，1是激活 */
    public void updateState(Integer id,Integer val) {
        String hql = "update t_funds set state=:state where id=:id";
        getSession().createQuery(hql).setParameter("state", val).setParameter("id", id).executeUpdate();

    }

    public List<Funds> findAllBySysId(Integer sysId) {
        String hql = "from t_funds where system.id =:sysId";
         list=getSession().createQuery(hql).setParameter("sysId",sysId).list();
        return list;
    }

    public List<Funds> findAllByBearer(Integer sysId, String bearer) {
        String hql = "from t_funds where system.id =:sysId and bearer=:bearer";
        list=getSession().createQuery(hql).setParameter("sysId",sysId).setParameter("bearer",bearer).list();
        return list;
    }

    public void updateFileId(Integer id) {
        String hql = "update t_funds set fileId=:fileId where id=:id";
        getSession().createQuery(hql).setParameter("fileId", "").setParameter("id", id).executeUpdate();
    }
}
