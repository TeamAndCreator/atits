package com.atits.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.atits.dao.TaskProgressDao;
import com.atits.entity.Task;
import com.atits.entity.TaskProgress;;

@Transactional
@Service
public class TaskProgressService {
	
	@Resource
	private TaskProgressDao taskProgressDao;//注入dao数据
	
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

    public void deletes(List<Integer> idList){
		taskProgressDao.deletes(idList);
	}

    public void updateState(Integer id, Integer val) {
		taskProgressDao.updateState(id,val);
    }

    public void updateFileId(Integer id) {
		taskProgressDao.updateFileId(id);

    }
}
