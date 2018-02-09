package com.atits.service;

import com.atits.dao.SystemDao;
import com.atits.dao.TestScoreDao;
import com.atits.entity.TestScore;
import com.atits.entity.TestManage;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.io.IOException;
import java.util.List;

@Transactional
@Service
public class TestScoreService {
    @Resource
    private TestScoreDao testScoreDao;

    public TestScoreDao getTestScoreDao(){return testScoreDao;}
    public void setTestScoreDao(TestScoreDao testScoreDao) {
        this.testScoreDao = testScoreDao;
    }

    /* 查询所有方法：findAll */
    public List<TestScore> findAll() {
        // TODO Auto-generated method stub
        return testScoreDao.findAll();
    }

    /* 根据id进行查询 */
    public TestScore findById(Integer id) {
        return testScoreDao.findById(id);// 调用dao的方法
    }

    public void save(TestScore testScore) {
        testScoreDao.save(testScore);//
    }

    public void deletes(List<Integer> idList) throws IOException {
        testScoreDao.deletes(idList);
    }

}
