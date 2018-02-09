package com.atits.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;

@Entity(name = "t_files")
public class Files {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "title")
    private String title;// 文件名


    @Column(name = "file_name")
    private String fileName;

    @Column(name = "file_type")
    private String fileType;

    @ManyToOne(targetEntity = System.class)
    @JoinColumn(name = "sys_id", referencedColumnName = "id", nullable = true)
    @JsonIgnore
    private System system;// 系统名称

    @Column(name = "content", length = 100000)
    private String content;

    @Column(name = "time")
    private String time;

    @Column(name = "date")
    private String date;

    @ManyToOne
    @JoinColumn(name = "editor", referencedColumnName = "id", nullable = true)
    private Person editor;

    @Column(name = "state")
    private int state;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getFileType() {
        return fileType;
    }

    public void setFileType(String fileType) {
        this.fileType = fileType;
    }

    public System getSystem() {
        return system;
    }

    public void setSystem(System system) {
        this.system = system;
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

    public String getDate() { return date; }

    public void setDate(String date) { this.date = date; }



    public int getState() {
        return state;
    }

    public Person getEditor() {
        return editor;
    }

    public void setEditor(Person editor) {
        this.editor = editor;
    }

    public void setState(int state) {
        this.state = state;
    }

    @Override
    public String toString() {
        return "Files{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", fileName='" + fileName + '\'' +
                ", fileType='" + fileType + '\'' +
                ", system=" + system.getId() +
                ", content='" + content + '\'' +
                ", time='" + time + '\'' +
                ", date='" + date + '\'' +
                ", editor='" + editor.getId() + '\'' +
                ", state=" + state +
                '}';
    }
}
