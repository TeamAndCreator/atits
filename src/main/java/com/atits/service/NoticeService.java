package com.atits.service;

import com.atits.dao.FilesDao;
import com.atits.dao.NoticeDao;
import com.atits.entity.Notice;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.io.IOException;
import java.util.List;

@Transactional
@Service
public class NoticeService {
	@Resource
	private NoticeDao noticeDao;

    @Resource
    private FilesDao filesDao;



	public List<Notice> findAll() {
		return noticeDao.findAll();

	}

	public Notice findById(Integer id) {
		return noticeDao.findById(id);

	}

	public List<Notice> findByPage(int startRow, int pageSize) {
		return noticeDao.findByPage(startRow, pageSize);

	}

	public void save(Notice notice) {
		noticeDao.save(notice);
	}

	public void deletes(List<Integer> idList) throws IOException {
		for (int i = 0; i < idList.size(); i++) {
			Notice notice=noticeDao.findById(idList.get(i));
			String fileId=notice.getFileId();
            ObjectMapper mapper = new ObjectMapper();// json对象建立
            List<Integer> fileIdList = mapper.readValue("["+fileId+"]", List.class);
            if (fileIdList.size()!=0){
            	filesDao.deletes(fileIdList);
			}
		}
		noticeDao.deletes(idList);
	}

	public void update(Notice notice) {
		noticeDao.save(notice);

	}

	public void updateState(Integer id,Integer val) throws IOException {
		// TODO Auto-generated method stub
		noticeDao.updateState(id,val);
		Notice notice = noticeDao.findById(id);
		String fileId=notice.getFileId();
		ObjectMapper mapper = new ObjectMapper();// json对象建立
		List<Integer> fileIdList = mapper.readValue("["+fileId+"]", List.class);
		for (int i = 0;i< fileIdList.size();i ++){
			filesDao.updateState(fileIdList.get(i),val);
		}
	}

	public List<Notice> findAllBySysId(Integer sysId) {
		// TODO Auto-generated method stub
		return noticeDao.findAllBySysId(sysId);
	}

	public void updateFileId(Integer id) {
		noticeDao.updateFileId(id);
	}

    public List<Notice> findByState() {
		return noticeDao.findByState();
    }

    public void updateFlag(String idList) {
		noticeDao.updateFlag(idList);
    }
}
