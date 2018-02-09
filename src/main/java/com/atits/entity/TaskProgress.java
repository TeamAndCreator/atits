package com.atits.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity(name = "t_task_progress")
public class TaskProgress {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @ManyToOne
    @JoinColumn(name = "sub_task_id", referencedColumnName = "id", nullable = true)
    private SubTask subTask;// 任务

//	@ManyToOne(targetEntity = Person.class)
//	@JoinColumn(name = "editor",referencedColumnName = "id",nullable = true)
//	private Person editor;

    @Column(name = "title")
    private String title;//进展标题

    @Column(name = "content", length = 100000)
    private String content;//进展主要内容

    @Column(name = "time")
    private String time;

    @Column(name = "date")
    private String date;

    @Column(name = "file_id")
    private String fileId;//相关文件

    @Column(name = "state")
    private int state;

//	public Person getEditor() {
//		return editor;
//	}
//
//	public void setEditor(Person editor) {
//		this.editor = editor;
//	}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public SubTask getSubTask() {
        return subTask;
    }

    public void setSubTask(SubTask subTask) {
        this.subTask = subTask;
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

    @Override
    public String toString() {
        return "TaskProgress{" +
                "id=" + id +
                ", subTask=" + subTask.getId() + '\'' +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", time='" + time + '\'' +
                ", date='" + date + '\'' +
                ", fileId='" + fileId + '\'' +
                ", state=" + state +
                '}';
    }
}
