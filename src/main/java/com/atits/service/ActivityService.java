package com.atits.service;

import com.atits.dao.FilesDao;
import com.atits.dao.ActivityDao;
import com.atits.entity.Activity;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.io.IOException;
import java.util.List;


@Transactional
@Service
public class ActivityService {

    @Resource
    private ActivityDao activityDao;

    @Resource
    private FilesDao filesDao;

    public Activity findById(Integer id) {
        return activityDao.findById(id);
    }

    public void deletes(List<Integer> idList) throws IOException {
        for (Integer anIdList : idList) {
            Activity notice = activityDao.findById(anIdList);
            String fileId = notice.getFileId();
            ObjectMapper mapper = new ObjectMapper();// json对象建立
            List<Integer> fileIdList = mapper.readValue("[" + fileId + "]", List.class);
            if (fileIdList.size() != 0) {
                filesDao.deletes(fileIdList);
            }
        }
        activityDao.deletes(idList);
    }

    public void save(Activity activity) {
        activityDao.save(activity);
    }

    public void updateState(Integer id, Integer val) throws IOException {
        activityDao.updateState(id,val);
        Activity notice = activityDao.findById(id);
        String fileId=notice.getFileId();
        ObjectMapper mapper = new ObjectMapper();// json对象建立
        List<Integer> fileIdList = mapper.readValue("["+fileId+"]", List.class);
        for (Integer aFileIdList : fileIdList) {
            filesDao.updateState(aFileIdList, val);
        }
    }



    public void updateFileId(Integer id) {
        activityDao.updateFileId(id);
    }

    public List<Activity> findAll() {
        return activityDao.findAll();
    }

    public List<Activity> findByPage(int startRow, int pageSize) {
        return activityDao.findByPage(startRow, pageSize);
    }

    public Long findByPageCunnt() {
        return activityDao.findByPageCunnt();
    }
}
