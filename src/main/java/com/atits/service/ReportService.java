package com.atits.service;

import com.atits.dao.FilesDao;
import com.atits.dao.ReportDao;
import com.atits.entity.Report;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.io.IOException;
import java.util.List;


@Transactional
@Service
public class ReportService {

    @Resource
    private ReportDao reportDao;

    @Resource
    private FilesDao filesDao;

    public Report findById(Integer id) {
        return reportDao.findById(id);
    }

    public void deletes(List<Integer> idList) throws IOException {
        for (Integer anIdList : idList) {
            Report notice = reportDao.findById(anIdList);
            String fileId = notice.getFileId();
            ObjectMapper mapper = new ObjectMapper();// json对象建立
            List<Integer> fileIdList = mapper.readValue("[" + fileId + "]", List.class);
            if (fileIdList.size() != 0) {
                filesDao.deletes(fileIdList);
            }
        }
        reportDao.deletes(idList);
    }

    public void save(Report report) {
        reportDao.save(report);
    }

    public void updateState(Integer id, Integer val) throws IOException {
        reportDao.updateState(id,val);
        Report notice = reportDao.findById(id);
        String fileId=notice.getFileId();
        ObjectMapper mapper = new ObjectMapper();// json对象建立
        List<Integer> fileIdList = mapper.readValue("["+fileId+"]", List.class);
        for (Integer aFileIdList : fileIdList) {
            filesDao.updateState(aFileIdList, val);
        }
    }

    public void updateFlag(String idList) {
        reportDao.updateFlag(idList);
    }

    public void updateFileId(Integer id) {
        reportDao.updateFileId(id);
    }

    public List<Report> findAll() {
        return reportDao.findAll();
    }

    public List<Report> findByPage(int startRow, int pageSize) {
        return reportDao.findByPage(startRow, pageSize);
    }
}
