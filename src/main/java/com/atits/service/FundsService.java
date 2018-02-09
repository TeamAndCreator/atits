package com.atits.service;

import com.atits.dao.FundsDao;
import com.atits.entity.Funds;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;


@Transactional
@Service
public class FundsService {

    @Resource
    private FundsDao fundsDao;//注入dao数据

    /*DynamicDao的get和set方法*/
    public void setDynamicDao(FundsDao fundsDao){
        this.fundsDao = fundsDao;
    }

    public void getDynamicDao(FundsDao fundsDao){
        this.fundsDao = fundsDao;
    }

    /*查询所有方法：findAll*/
    public List<Funds> findAll(){//与集合不同，列表通常允许重复元素
        return fundsDao.findAll();
    }

    /*根据id进行查询*/
    public Funds findById(Integer id){
        return fundsDao.findById(id);//调用dao的方法
    }

    /*根据页数：进行分页*/
    public List<Funds> findByPage(int startRow,int pageSize){
        return  fundsDao.findByPage(startRow, pageSize);//调用dao的方法
    }

    /*Dynamic:是实体类*/
    public void save(Funds funds){
        fundsDao.save(funds);//

    }

    /*批量删除：*/
    public void  deletes(List<Integer> idList){//void 可以不用返回参数，int要返回参数
        fundsDao.deletes(idList);
    }

    /*更新方法：update*/
    public void update(Funds funds){
        fundsDao.save(funds);
    }


    /*更新状态： update state of dynamic*/
    public void updateState(Integer id,Integer val) {
        fundsDao.updateState(id,val);

    }

    public List<Funds> findAllBySysId(Integer sysId) {
        // TODO Auto-generated method stub
        return fundsDao.findAllBySysId(sysId);
    }

    public List<Funds> findAllByBearer(Integer sysId, String bearer) {
        return fundsDao.findAllByBearer(sysId,bearer);
    }

    public void updateFileId(Integer id) {
        fundsDao.updateFileId(id);
    }
}
