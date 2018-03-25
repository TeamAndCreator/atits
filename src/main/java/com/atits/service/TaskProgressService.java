package com.atits.service;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.atits.dao.TaskProgressDao;
import com.atits.dao.FilesDao;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.atits.entity.TaskProgress;;

@Transactional
@Service
public class TaskProgressService {
	
	@Resource
	private TaskProgressDao taskProgressDao;//注入dao数据
	@Resource
	private FilesDao filesDao;
	
	public TaskProgressDao getTaskDao() {
		return taskProgressDao;
	}

	public void setTaskDao(TaskProgressDao taskProgressDao) {
		this.taskProgressDao = taskProgressDao;
	}


	
	
	/*查询所有方法：findAll*/
	public List<TaskProgress> findAllBySysId(Integer sysId){//与集合不同，列表通常允许重复元素
		return taskProgressDao.findAllBySysId(sysId);
	}

    public List<TaskProgress> findAll() {
		return taskProgressDao.findAll();
    }

    public List<TaskProgress> findAllByBearer(Integer id, String bearer) {
		return taskProgressDao.findAllByBearer(id,bearer);
    }

    public TaskProgress findById(Integer id) {
		return taskProgressDao.findById(id);
    }

    public void save(TaskProgress taskProgress) {
		taskProgressDao.save(taskProgress);
    }

    public void deletes(List<Integer> idList)throws IOException{
		for (int i = 0; i < idList.size(); i++) {
			TaskProgress taskProgress=taskProgressDao.findById(idList.get(i));
			String fileId=taskProgress.getFileId();
			ObjectMapper mapper = new ObjectMapper();// json对象建立
			List<Integer> fileIdList = mapper.readValue("["+fileId+"]", List.class);
			if (fileIdList.size()!=0){
				filesDao.deletes(fileIdList);
			}
		}
		taskProgressDao.deletes(idList);
	}

    public void updateState(Integer id, Integer val)throws IOException {
		// TODO Auto-generated method stub
		taskProgressDao.updateState(id,val);
		TaskProgress taskProgress = taskProgressDao.findById(id);
		String fileId=taskProgress.getFileId();
		ObjectMapper mapper = new ObjectMapper();// json对象建立
		List<Integer> fileIdList = mapper.readValue("["+fileId+"]", List.class);
		for (int i = 0;i< fileIdList.size();i ++){
			filesDao.updateState(fileIdList.get(i),val);
		}
    }

    public void updateFileId(Integer id) {
		taskProgressDao.updateFileId(id);

    }
}
