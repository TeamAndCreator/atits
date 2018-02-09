package com.atits.service;

import com.atits.dao.ExpertDao;
import com.atits.entity.Expert;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Transactional
@Service
public class ExpertService {

    @Resource
    private ExpertDao expertDao;

    public List<Expert> findAll(){
        return expertDao.findAll();
    }

    public void save(Expert expert){
        expertDao.save(expert);
    }

    /*批量删除：*/
    public void  deletes(List<Integer> idList){//void 可以不用返回参数，int要返回参数
        expertDao.deletes(idList);
    }

    public List<Expert> findById(String idList) {
        return expertDao.findById(idList);
    }
}
