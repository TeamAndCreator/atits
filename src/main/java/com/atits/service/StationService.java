package com.atits.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.atits.dao.StationDao;
import com.atits.entity.Station;;

/**
 * 
 * @author YXX
 * @Date 2017年6月20日
 * @类型 DynamicService
 */
/* @Service业务层，事务型：@Transactional */
@Transactional
@Service
public class StationService {

	@Resource
	private StationDao stationDao;// 注入dao数据

	/* DynamicDao的get和set方法 */
	public void setDynamicDao(StationDao stationDao) {
		this.stationDao = stationDao;
	}

	public void getDynamicDao(StationDao stationDao) {
		this.stationDao = stationDao;
	}

	/* 查询所有方法：findAll */
	public List<Station> findAll() {// 与集合不同，列表通常允许重复元素
		return stationDao.findAll();
	}

	public List<Station> findAll(Integer sysId) {// 与集合不同，列表通常允许重复元素
		return stationDao.findAll(sysId);
	}



	/* 根据id进行查询 */
	public Station findById(Integer id) {
		return stationDao.findById(id);// 调用dao的方法
	}

	public List<String> findNameBySysId(Integer sysId) {
		return stationDao.findNameBySysId(sysId);

	}

	/* Dynamic:是实体类 */
	public void save(Station station) {
		stationDao.save(station);//

	}

	/* 批量删除： */
	public void deletes(List<Integer> idList) {// void 可以不用返回参数，int要返回参数
		stationDao.deletes(idList);
	}

	/* 更新方法：update */
	public void update(Station station) {
		stationDao.save(station);
	}

	public Station findByName(Integer sysId, String staName) {
		// TODO Auto-generated method stub
		return stationDao.findByName(sysId, staName);// 调用dao的方法;
	}

	public void updateState(Integer id,Integer val) {
		// TODO Auto-generated method stub
		stationDao.updateState(id,val);
	}

    public List<Station> findSysId(int sysId) {
		return  stationDao.findBySysId(sysId);
    }
}
