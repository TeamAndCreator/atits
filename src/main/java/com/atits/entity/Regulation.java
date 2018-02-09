package com.atits.entity;

import javax.persistence.*;
//规章制度
@Entity(name = "t_regulation")
public class Regulation {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "title")
	private String title;

	@Basic
	@Column(name = "content", length = 100000)
	private String content;

	@Column(name = "time")//年月日时分秒
	private String time;

	@Column(name = "date")//年月日
	private String date;

	@ManyToOne
	@JoinColumn(name = "editor", referencedColumnName = "id",nullable = true)
	private Person editor;

	@Column(name = "file_id")
	private String fileId;


	@ManyToOne(targetEntity = System.class)
	@JoinColumn(name = "sys_id", referencedColumnName = "id")
	private System  system;// 体系名称

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

	public Person getEditor() {
		return editor;
	}

	public void setEditor(Person editor) {
		this.editor = editor;
	}

	public void setFileId(String fileId) {
		this.fileId = fileId;
	}

	public System getSystem() {
		return system;
	}

	public void setSystem(System system) {
		this.system = system;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	@Override
	public String toString() {
		return "Regulation{" +
				"id=" + id +
				", title='" + title + '\'' +
				", content='" + content + '\'' +
				", time='" + time + '\'' +
				", date='" + date + '\'' +
				", editor='" + editor.getId() + '\'' +
				", fileId='" + fileId + '\'' +
				", system=" + system.getId() +
				", state=" + state +
				'}';
	}
}
