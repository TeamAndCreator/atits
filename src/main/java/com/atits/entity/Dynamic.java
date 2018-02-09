package com.atits.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

/**
 * 2017年---体系动态表: 字段：ID、Title、Content、Time、Person、File_dir、State
 * 
 * @author YXX
 * @Date 2017年6月20日
 * @类型 Dynamic
 */
@Entity(name = "t_dynamic")
public class Dynamic {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "title")
	private String title;

	@ManyToOne(targetEntity = System.class)
	@JoinColumn(name = "sys_id", referencedColumnName = "id")
	private System system;// 系统名称

	@ManyToOne(targetEntity = Laboratory.class)
	@JoinColumn(name = "lab_id",referencedColumnName = "id",nullable = true)
	private  Laboratory laboratory;//该人所在研究室

	@ManyToOne(targetEntity = Station.class)
	@JoinColumn(name = "sta_id",referencedColumnName = "id")
	private Station station;

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

	@Column(name = "state")
	private int state;

	public Laboratory getLaboratory() {
		return laboratory;
	}

	public void setLaboratory(Laboratory laboratory) {
		this.laboratory = laboratory;
	}

	public Station getStation() {
		return station;
	}

	public void setStation(Station station) {
		this.station = station;
	}

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

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	@Override
	public String toString() {
		return "Dynamic{" +
				"id=" + id +
				", title='" + title + '\'' +
				", system=" + system.getId() +
				", laboratory=" + laboratory.getId() +
				", station=" + station.getId() +
				", content='" + content + '\'' +
				", time='" + time + '\'' +
				", date='" + date + '\'' +
				", editor='" + editor.getId() + '\'' +
				", fileId='" + fileId + '\'' +
				", state=" + state +
				'}';
	}
}