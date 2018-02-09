package com.atits.entity;


import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;


@Entity(name="t_sub_task")
public class SubTask {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private int id;

    @ManyToOne
    @JoinColumn(name = "bearer", referencedColumnName = "id",nullable = true)
    private Person bearer;//承担人

    @Column(name="content",length= 100000)
    private String content;//任务内容介绍

    @Column(name="file_id")
    private String fileId;//相关文件

    @Column(name="state")
    private int state;

    @Column(name= "title")
    private String title;//子任务名称

    @ManyToOne(targetEntity = Task.class)
    @JoinColumn(name = "task_id", referencedColumnName = "id",nullable = true)
    private Task task;

    @Column(name = "time")
    private String time;

    @Column(name = "date")
    private String date;

    @Column(name = "startDate")
    private String startDate;
    @Column(name = "endDate")
    private String endDate;

    @OneToMany(mappedBy = "subTask",cascade = {CascadeType.REMOVE},fetch =FetchType.LAZY)
    @JsonIgnore
    private Set<TaskProgress> taskProgress=new HashSet<TaskProgress>();

    public Set<TaskProgress> getTaskProgress() {
        return taskProgress;
    }

    public void setTaskProgress(Set<TaskProgress> taskProgress) {
        this.taskProgress = taskProgress;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }



    public String getContent() {
        return content;
    }

    public Person getBearer() {
        return bearer;
    }

    public void setBearer(Person bearer) {
        this.bearer = bearer;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getFileId() {
        return fileId;
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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Task getTask() {
        return task;
    }

    public void setTask(Task task) {
        this.task = task;
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

    @Override
    public String toString() {
        return "SubTask{" +
                "id=" + id +
                ", bearer=" + bearer.getId() +
                ", content='" + content + '\'' +
                ", fileId='" + fileId + '\'' +
                ", state=" + state +
                ", title='" + title + '\'' +
                ", task=" + task.getId() +
                ", time='" + time + '\'' +
                ", date='" + date + '\'' +
                ", startDate='" + startDate + '\'' +
                ", endDate='" + endDate + '\'' +
                '}';
    }
}
