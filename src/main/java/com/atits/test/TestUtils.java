package com.atits.test;

import com.atits.dao.FilesDao;
import com.atits.dao.NoticeDao;
import com.atits.entity.Notice;
import com.atits.service.NoticeService;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class TestUtils {

    public void deletes() throws IOException {
        List<Integer> idList=new ArrayList<Integer>();
        idList.add(7);
        NoticeDao noticeDao =new NoticeDao();
        FilesDao filesDao=new FilesDao();
        for (int i = 0; i < idList.size(); i++) {
            System.out.println(idList.get(i));
            Notice notice=noticeDao.findById(idList.get(i));
            String fileId="["+notice.getFileId()+"]";
            ObjectMapper mapper = new ObjectMapper();// json对象建立
            List<Integer> fileIdList = mapper.readValue(fileId, List.class);
            System.out.println(fileIdList.toString());
            //filesDao.deletes(fileIdList);
        }
       // noticeDao.deletes(idList);

    }

}
