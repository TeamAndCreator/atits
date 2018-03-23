package com.atits.service;


import com.atits.dao.ActivityDao;
import com.atits.entity.Activity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Transactional
@Service
public class ActivityService {

    @Resource
    private ActivityDao activityDao;//注入dao数据


    public void save(Activity activity) {
    }

    public List<Activity> findByPage(int startRow, int pageSize) {
        return activityDao.findByPage(startRow, pageSize);
    }

    public Long findByPageCunnt() {
        return activityDao.findByPageCunnt();
    }
}
