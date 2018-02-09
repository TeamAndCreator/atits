package com.atits.service;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;

import com.atits.dao.FilesDao;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.atits.dao.DynamicDao;
import com.atits.entity.Dynamic;
/**
 * 
 * @author YXX
 * @Date   2017年6月20日
 * @类型    DynamicService
 */
/*@Service业务层，事务型：@Transactional*/
@Transactional
@Service
public class DynamicService {
	
	@Resource
	private DynamicDao dynamicDao;//注入dao数据
	@Resource
	private FilesDao filesDao;


	/*DynamicDao的get和set方法*/
	public void setDynamicDao(DynamicDao dynamicDao){
		this.dynamicDao = dynamicDao;
	}
	
	public void getDynamicDao(DynamicDao dynamicDao){
		this.dynamicDao = dynamicDao;
	}
	
	/*查询所有方法：findAll*/
	public List<Dynamic> findAll(){//与集合不同，列表通常允许重复元素
		return dynamicDao.findAll();
	}
	/*根据id进行查询*/
	public Dynamic findById(Integer id){
		return dynamicDao.findById(id);//调用dao的方法
	}
	
	/*根据页数：进行分页*/
	public List<Dynamic> findByPage(int startRow,int pageSize){
		return  dynamicDao.findByPage(startRow, pageSize);//调用dao的方法
	}
	
	/*Dynamic:是实体类*/	
	public void save(Dynamic dynamic){
		dynamicDao.save(dynamic);//
		
	}
	
	/*批量删除：*/
	public void deletes(List<Integer> idList) throws IOException {
		for (int i = 0; i < idList.size(); i++) {
			Dynamic dynamic=dynamicDao.findById(idList.get(i));
			String fileId=dynamic.getFileId();
			ObjectMapper mapper = new ObjectMapper();// json对象建立
			List<Integer> fileIdList = mapper.readValue("["+fileId+"]", List.class);
			if (fileIdList.size()!=0){
				filesDao.deletes(fileIdList);
			}
		}
		dynamicDao.deletes(idList);
	}
	
	/*更新方法：update*/
	public void update(Dynamic dynamic){
		dynamicDao.save(dynamic);
	}
	
	
	/*更新状态： update state of dynamic*/
	public void updateState(Integer id,Integer val) throws IOException {
		// TODO Auto-generated method stub
		dynamicDao.updateState(id,val);
		Dynamic dynamic = dynamicDao.findById(id);
		String fileId=dynamic.getFileId();
		ObjectMapper mapper = new ObjectMapper();// json对象建立
		List<Integer> fileIdList = mapper.readValue("["+fileId+"]", List.class);
		for (int i = 0;i< fileIdList.size();i ++){
			filesDao.updateState(fileIdList.get(i),val);
		}
	}

	public List<Dynamic> findAllBySysId(Integer sysId) {
		// TODO Auto-generated method stub
		return dynamicDao.findAllBySysId(sysId);
	}

    public void updateFileId(Integer id) {
		dynamicDao.updateFileId(id);
    }

    public List<Dynamic> findByState() {
		return  dynamicDao.findByState();
    }
}
