package com.atits.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

/**
 * 2017年---体系动态表:
 * 字段：ID、Title、Content、Time、Person、File_dir、State
 *
 * @author YXX
 * @Date 2017年6月20日
 * @类型 Task
 */

@Entity(name = "t_task")
public class Task {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @ManyToOne(targetEntity = System.class)
    @JoinColumn(name = "sys_id", referencedColumnName = "id", nullable = true)
    private System system;//所属体系

    @Column(name = "title")
    private String title;//任务合同

    @Column(name = "content", length = 100000)
    private String content;//细化安排

    @Column(name = "time")
    private String time;

    @Column(name = "date")
    private String date;

    @Column(name = "startDate")
    private String startDate;
    @Column(name = "endDate")
    private String endDate;

    @ManyToOne
    @JoinColumn(name = "bearer", referencedColumnName = "id", nullable = true)
    private Person bearer;//负责人

    @Column(name = "file_id")
    private String fileId;//相关文件

    @Column(name = "state")
    private int state;

    @OneToMany(mappedBy = "task",cascade = {CascadeType.REMOVE},fetch = FetchType.LAZY)
    @JsonIgnore
    private Set<SubTask> subTask=new HashSet<SubTask>();


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public System getSystem() {
        return system;
    }

    public void setSystem(System system) {
        this.system = system;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }



    public String getFileId() {
        return fileId;
    }

    public Person getBearer() {
        return bearer;
    }

    public void setBearer(Person bearer) {
        this.bearer = bearer;
    }

    public void setFileId(String fileId) {
        this.fileId = fileId;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public Set<SubTask> getSubTask() {
        return subTask;
    }

    public void setSubTask(Set<SubTask> subTask) {
        this.subTask = subTask;
    }

    @Override
    public String toString() {
        return "Task{" +
                "id=" + id +
                ", system=" + system.getId() +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", time='" + time + '\'' +
                ", date='" + date + '\'' +
                ", startDate='" + startDate + '\'' +
                ", endDate='" + endDate + '\'' +
                ", bearer='" + bearer.getId() + '\'' +
                ", fileId='" + fileId + '\'' +
                ", state=" + state +
                ", subTask=" + subTask.toString() +
                '}';
    }
}
