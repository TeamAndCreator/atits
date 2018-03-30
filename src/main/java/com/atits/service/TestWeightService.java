package com.atits.service;


import com.atits.dao.TestWeightDao;
import com.atits.entity.TestWeight;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Transactional
@Service
public class TestWeightService {

    @Resource
    private TestWeightDao testWeightDao;



    public void save(TestWeight testWeight) {
        testWeightDao.save(testWeight);
    }

    public List<TestWeight> findByPage(int iDisplayStart, int iDisplayLength) {
        List<TestWeight> testWeights=testWeightDao.findByPage(iDisplayStart,iDisplayLength);
        return testWeights;
    }

    public Long findByPageCunnt() {
        return testWeightDao.findByPageCunnt();
    }

    public void deletes(List<Integer> idList) {
        testWeightDao.deletes(idList);
    }
}
