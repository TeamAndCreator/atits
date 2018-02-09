package com.atits.entity;

import javax.persistence.*;

@Entity(name = "t_notice")
public class Notice {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "title")
	private String title;

	@Column(name = "content", length = 100000)
	private String content;

	@Column(name = "time")
	private String time;

	@Column(name = "date")
	private String date;

	@ManyToOne(targetEntity = Person.class)
	@JoinColumn(name = "editor",referencedColumnName = "id",nullable = true)
	private Person editor;

	@Column(name = "file_id")
	private String fileId;
	
	@ManyToOne(targetEntity = System.class,cascade = CascadeType.REMOVE)
	@JoinColumn(name = "sys_id", referencedColumnName = "id")
	private System  system;// 体系名称
	

	@Column(name = "state")
	private int state;

	private int flag;

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

	public void setFileId(String fileId) {
		this.fileId = fileId;
	}

	public Person getEditor() {
		return editor;
	}

	public void setEditor(Person editor) {
		this.editor = editor;
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

	public int getFlag() {
		return flag;
	}

	public void setFlag(int flag) {
		this.flag = flag;
	}

	@Override
	public String toString() {
		return "Notice{" +
				"id=" + id +
				", title='" + title + '\'' +
				", content='" + content + '\'' +
				", time='" + time + '\'' +
				", date='" + date + '\'' +
				", fileId='" + fileId + '\'' +
				", system=" + system.getId() +
				", state=" + state +
				", flag=" + flag +
				'}';
	}
}
