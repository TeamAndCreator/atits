package com.atits.service;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;

import com.atits.dao.FilesDao;
import com.atits.entity.Notice;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.atits.dao.RegulationDao;
import com.atits.entity.Regulation;

@Transactional
@Service
public class RegulationService {
	@Resource
	private RegulationDao regulationDao;

	@Resource
	private FilesDao filesDao;


	public RegulationDao getRegulationDao() {
		return regulationDao;
	}

	public void setRegulationDao(RegulationDao regulationDao) {
		this.regulationDao = regulationDao;
	}

	public List<Regulation> findAll() {
		return regulationDao.findAll();

	}

	public Regulation findById(Integer id) {
		return regulationDao.findById(id);

	}

	public List<Regulation> findByPage(int startRow, int pageSize) {
		return regulationDao.findByPage(startRow, pageSize);

	}

	public void save(Regulation regulation) {
		regulationDao.save(regulation);
	}

	public void deletes(List<Integer> idList) throws IOException {
		for (int i = 0; i < idList.size(); i++) {
			Regulation regulation=regulationDao.findById(idList.get(i));
			String fileId=regulation.getFileId();
			ObjectMapper mapper = new ObjectMapper();// json对象建立
			List<Integer> fileIdList = mapper.readValue("["+fileId+"]", List.class);
			if (fileIdList.size()!=0){
				filesDao.deletes(fileIdList);
			}
		}
		regulationDao.deletes(idList);
	}

	public void update(Regulation regulation) {
		regulationDao.save(regulation);

	}

	public void updateState(Integer id,Integer val) throws IOException {
		// TODO Auto-generated method stub
		regulationDao.updateState(id,val);
		Regulation regulation = regulationDao.findById(id);
		String fileId=regulation.getFileId();
		ObjectMapper mapper = new ObjectMapper();// json对象建立
		List<Integer> fileIdList = mapper.readValue("["+fileId+"]", List.class);
		for (int i = 0;i< fileIdList.size();i ++){
			filesDao.updateState(fileIdList.get(i),val);
		}
	}

	public List<Regulation> findAllBySysId(Integer sysId) {
		// TODO Auto-generated method stub
		return regulationDao.findAllBySysId(sysId);
	}

    public void updateFileId(Integer id) {
		regulationDao.updateFileId(id);
    }
}
