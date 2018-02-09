package com.atits.service;

import com.atits.dao.FilesDao;
import com.atits.dao.SubTaskDao;
import com.atits.dao.SystemDao;
import com.atits.dao.TaskDao;
import com.atits.entity.SubTask;
import com.atits.entity.Task;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.io.IOException;
import java.util.List;

@Transactional
@Service
public class SubTaskService {

    @Resource
    private SubTaskDao subTaskDao;// 注入dao数据

    @Resource
    private FilesDao filesDao;// 注入dao数据

    @Resource
    private SystemDao systemDao;

    public SubTaskDao getTaskDao() {
        return subTaskDao;
    }

    public void setTaskDao(TaskDao taskDao) {
        this.subTaskDao = subTaskDao;
    }

    /* 根据id进行查询 */
    public SubTask findById(Integer id) {
        return subTaskDao.findById(id);// 调用dao的方法
    }


    /* Task:是实体类 */
    public void save(SubTask subTask) {
        subTaskDao.save(subTask);//

    }

    /* 查询所有方法：findAll */
    public List<SubTask> findAll(Integer taskId) {
        // TODO Auto-generated method stub
        return subTaskDao.findAll(taskId);
    }

    /* 查询所有方法：findAll */
    public List<SubTask> findAll() {
        // TODO Auto-generated method stub
        return subTaskDao.findAll();
    }

    public List<SubTask> findByBearerId(Integer bearerId){
        return subTaskDao.findByBearerId(bearerId);
    }

    public void deletes(List<Integer> idList) throws IOException {
        for (int i = 0; i < idList.size(); i++) {
            SubTask subTask=subTaskDao.findById(idList.get(i));
            String fileId=subTask.getFileId();
            ObjectMapper mapper = new ObjectMapper();// json对象建立
            List<Integer> fileIdList = mapper.readValue("["+fileId+"]", List.class);
            if (fileIdList.size()!=0){
                filesDao.deletes(fileIdList);
            }
        }
        subTaskDao.deletes(idList);
    }


    public void updateState(Integer id, Integer val) {
        subTaskDao.updateState(id, val);
    }

    public void updateFileId(Integer id) {
        subTaskDao.updateFileId(id);
    }
}


