package com.atits.service;

import com.atits.dao.FilesDao;
import com.atits.dao.HarvestDao;
import com.atits.entity.Harvest;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.io.IOException;
import java.util.List;


@Transactional
@Service
public class HarvestService {

    @Resource
    private HarvestDao harvestDao;

    @Resource
    private FilesDao filesDao;

    public Harvest findById(Integer id) {
        return harvestDao.findById(id);
    }

    public void deletes(List<Integer> idList) throws IOException {
        for (Integer anIdList : idList) {
            Harvest notice = harvestDao.findById(anIdList);
            String fileId = notice.getFileId();
            ObjectMapper mapper = new ObjectMapper();// json对象建立
            List<Integer> fileIdList = mapper.readValue("[" + fileId + "]", List.class);
            if (fileIdList.size() != 0) {
                filesDao.deletes(fileIdList);
            }
        }
        harvestDao.deletes(idList);
    }

    public void save(Harvest harvest) {
        harvestDao.save(harvest);
    }

    public void updateState(Integer id, Integer val) throws IOException {
        harvestDao.updateState(id,val);
        Harvest notice = harvestDao.findById(id);
        String fileId=notice.getFileId();
        ObjectMapper mapper = new ObjectMapper();// json对象建立
        List<Integer> fileIdList = mapper.readValue("["+fileId+"]", List.class);
        for (Integer aFileIdList : fileIdList) {
            filesDao.updateState(aFileIdList, val);
        }
    }

    public void updateFlag(String idList) {
        harvestDao.updateFlag(idList);
    }

    public void updateFileId(Integer id) {
        harvestDao.updateFileId(id);
    }

    public List<Harvest> findAll() {
        return harvestDao.findAll();
    }

    public List<Harvest> findByPage(int startRow, int pageSize) {
        return harvestDao.findByPage(startRow, pageSize);
    }
}
