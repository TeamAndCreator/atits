package com.atits.service;


import com.atits.dao.TestSartDao;
import com.atits.entity.TestStart;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.io.IOException;
import java.util.List;

@Transactional
@Service
public class TestStartService {
    @Resource
    private TestSartDao testSartDao;

    public List<TestStart> findAll() {
        return testSartDao.findAll();
    }

    public List<TestStart> findAll(Integer state){//与集合不同，列表通常允许重复元素
        return testSartDao.findAll(state);
    }

    public List<TestStart> findByPage(int startRow, int pageSize) {
        return testSartDao.findByPage(startRow,pageSize);
    }

    public void save(TestStart testStart){
        testSartDao.save(testStart);
    }

    /*批量删除：*/
    public void  deletes(List<Integer> idList){//void 可以不用返回参数，int要返回参数
        testSartDao.deletes(idList);
    }

    public void updateState(Integer id,Integer val) throws IOException {
        // TODO Auto-generated method stub
        testSartDao.updateState(id,val);
//        TestStart testStart = testSartDao.findById(id);
//        String fileId=notice.getFileId();
//        ObjectMapper mapper = new ObjectMapper();// json对象建立
//        List<Integer> fileIdList = mapper.readValue("["+fileId+"]", List.class);
//        for (int i = 0;i< fileIdList.size();i ++){
//            filesDao.updateState(fileIdList.get(i),val);
//        }
    }
}
