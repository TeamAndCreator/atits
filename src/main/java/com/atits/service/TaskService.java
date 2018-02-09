package com.atits.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.atits.dao.SystemDao;
import com.atits.dao.TaskDao;
import com.atits.entity.Task;

@Transactional
@Service
public class TaskService {

	@Resource
	private TaskDao taskDao;// 注入dao数据

	@Resource
	private SystemDao systemDao;

	public TaskDao getTaskDao() {
		return taskDao;
	}

	public void setTaskDao(TaskDao taskDao) {
		this.taskDao = taskDao;
	}

	/* 根据id进行查询 */
	public Task findById(Integer id) {
		return taskDao.findById(id);// 调用dao的方法
	}

	/* 查询所有方法：findAllBySysId */
	public List<Task> findAllBySysId(Integer sysId) {// 与集合不同，列表通常允许重复元素
		return taskDao.findAllBySysId(sysId);
	}

	/* Task:是实体类 */
	public void save(Task task) {
		taskDao.save(task);//

	}

	/* 查询所有方法：findAll */
	public List<Task> findAll() {
		// TODO Auto-generated method stub
		return taskDao.findAll();
	}

	public void deletes(List<Integer> idList) {
		// TODO Auto-generated method stub
		taskDao.deletes(idList);
	}

    public List<Task> findByBearer(Integer sysId, String bearer) {
	    return taskDao.findByBearer(sysId,bearer);
    }


    public void updateState(Integer id, Integer val) {
		taskDao.updateState(id,val);
    }

    public void updateFileId(Integer id) {
		taskDao.updateFileId(id);
    }

    public List taskNum() {
	return 	taskDao.taskNum();
    }
}
