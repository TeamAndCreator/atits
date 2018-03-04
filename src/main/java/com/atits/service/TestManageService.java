package com.atits.service;

import com.atits.dao.TestManageDao;
import com.atits.entity.TestManage;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Transactional
@Service
public class TestManageService {

    @Resource
    private TestManageDao testManageDao;

    /*查询所有方法：findAll*/
    public List<TestManage> findAll() {//与集合不同，列表通常允许重复元素
        return testManageDao.findAll();
    }



    /* 根据id进行查询 */
    public TestManage findById(Integer id) {
        return testManageDao.findById(id);// 调用dao的方法
    }

    public void save(TestManage testManage) {
        testManageDao.save(testManage);
    }

    public Long findByPageCunnt() {
        return testManageDao.findByPageCunnt();
    }

    /*根据页数：进行分页*/
    public List<TestManage> findByPage(int startRow,int pageSize){
        return  testManageDao.findByPage(startRow, pageSize);//调用dao的方法
    }


    public void updateState(Integer id, int val) {
        testManageDao.updateState(id,val);
    }
}
