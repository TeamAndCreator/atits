package com.atits.service;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.atits.dao.FilesDao;
import com.atits.entity.Files;


/**
 * @author YXX
 * @Date 2017年6月20日
 * @类型 filesService
 */
/* @Service业务层，事务型：@Transactional */
@Transactional
@Service
public class FilesService {

    @Resource
    private FilesDao filesDao;// 注入dao数据

    /* filesDao的get和set方法 */
    public void setfilesDao(FilesDao filesDao) {
        this.filesDao = filesDao;
    }

    public void getfilesDao(FilesDao filesDao) {
        this.filesDao = filesDao;
    }

    /* 查询所有方法：findAll */
    public List<Files> findAll() {// 与集合不同，列表通常允许重复元素
        return filesDao.findAll();
    }

    /* 根据id进行查询 */
    public Files findById(Integer id) {
        return filesDao.findById(id);// 调用dao的方法
    }

    /* 根据多个id进行查询 */
    public List<Files> findByIds(Integer[] ids) {
        return filesDao.findByIds(ids);
    }

    /* 根据页数：进行分页 */
    public List<Files> findByPage(int startRow, int pageSize) {
        return filesDao.findByPage(startRow, pageSize);// 调用dao的方法
    }

    /* files:是实体类 */
    public void save(Files files) {
        filesDao.save(files);//

    }

    /* files:是实体类 */
//    public int upload(MultipartFile[] multipartFiles) throws IOException {
//        byte[] data = null;
//        BASE64Encoder encoder = new BASE64Encoder();
//        String title = null;
//        String fileName = null;
//        for (MultipartFile multipartFile : multipartFiles) {
//            if (multipartFile.isEmpty()) {
//                System.out.println("文件未上传");
//            } else {
//                InputStream in = multipartFile.getInputStream();
//                data = new byte[in.available()];
//                in.read(data);
//                in.close();
//                title = multipartFile.getOriginalFilename();// 获得文件名
//
//                //检查文件后缀格式
//                String fileEnd = title.substring(title.lastIndexOf(".") + 1).toLowerCase();
//                //创建文件唯一名称
//                String uuid = UUID.randomUUID().toString();
//                fileName = uuid + "." + fileEnd;
//                System.out.println(fileName);
//            }
//        }
//        Files files = new Files();
//        files.setTitle(title);
//        files.setFileName(fileName);
//        files.setContent(encoder.encode(data));
//        return filesDao.getIdOfSave(files);
//
//    }


    /* files:是实体类 */
    public int upload(MultipartFile[] multipartFiles, HashMap map) throws IOException {
        String title = null;
        String fileName = null;
        for (MultipartFile multipartFile : multipartFiles) {
            if (multipartFile.isEmpty()) {
                System.out.println("文件未上传");
            } else {

                title = multipartFile.getOriginalFilename();// 获得文件名

                //检查文件后缀格式
                String fileEnd = title.substring(title.lastIndexOf(".") + 1).toLowerCase();
                //创建文件唯一名称
                String uuid = UUID.randomUUID().toString();
                fileName = uuid + "." + fileEnd;
                String filePath = "C:/file/" + map.get("sysId") + "/" + map.get("type") + "/" + map.get("personId") + "/" + fileName;
                System.out.println(filePath);
                File file = new File(filePath);

                //判断目标文件所在的目录是否存在
                if (!file.getParentFile().exists()) {
                    //如果目标文件所在的目录不存在，则创建父目录
                    System.out.println("目标文件所在目录不存在，准备创建它！");
                    if (!file.getParentFile().mkdirs()) {
                        System.out.println("创建目标文件所在目录失败！");
                    }
                }
                if (file.createNewFile()) {
                    System.out.println("创建单个文件" + fileName + "成功！");
                } else {
                    System.out.println("创建单个文件" + fileName + "失败！");
                }
                multipartFile.transferTo(file);
            }
        }
        Files files = new Files();
        files.setTitle(title);
        files.setFileName(fileName);
        return filesDao.getIdOfSave(files);

    }


    /* 批量删除： */
    public void deletes(List<Integer> idList) {
        filesDao.deletes(idList);
    }


    public void updateTimeAndEditor(Integer id, String time, String date, Integer editor_id, Integer sysId, String fileType) {
        filesDao.updateTimeAndEditor(id, time, date, editor_id, sysId, fileType);
    }

    /* 更新方法：update */
    public void update(Files files) {
        filesDao.save(files);
    }

    /* 更新状态：files state update */
    public void updateState(Integer id, Integer val) {
        filesDao.updateState(id, val);

    }

    public List<Files> findAllBySysId(Integer sysId) {
        // TODO Auto-generated method stub
        return filesDao.findAllBySysId(sysId);
    }
}
