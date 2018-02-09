package com.atits.entity;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnore;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity(name = "t_lab")
public class Laboratory {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	
	@Column(name = "lab_name")
	private String labName;// 研究室名称
	
	@ManyToOne
	@JoinColumn(name = "sys_id", referencedColumnName = "id",nullable = true)
	private System system;//  系统名称
	
	
	@Column(name = "content", length = 100000)
	private String content;//研究室基本信息

	@Column(name = "manager")
	private String manager;// 研究室主任姓名

	@OneToMany(mappedBy = "laboratory",fetch = FetchType.LAZY)
	@JsonIgnore
	private List<Person> persons;// 研究室主任姓名
	
	
	@Column(name = "company")
	private String company;// 建设依托单位
	
	
	@Column(name = "time")
	private String time;//上传时间
	
	
	@Column(name = "state")
	private int state;//状态



	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getLabName() {
		return labName;
	}


	public void setLabName(String labName) {
		this.labName = labName;
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




	public String getCompany() {
		return company;
	}


	public void setCompany(String company) {
		this.company = company;
	}


	public String getTime() {
		return time;
	}


	public void setTime(String time) {
		this.time = time;
	}


	public int getState() {
		return state;
	}


	public void setState(int state) {
		this.state = state;
	}


	public String getManager() {
		return manager;
	}

	public void setManager(String manager) {
		this.manager = manager;
	}

	public List<Person> getPersons() {
		return persons;
	}

	public void setPersons(List<Person> persons) {
		this.persons = persons;
	}

	@Override
	public String toString() {
		return "Laboratory{" +
				"id=" + id +
				", labName='" + labName + '\'' +
				", system=" + system.getId() +
				", content='" + content + '\'' +
				", manager='" + manager+ '\'' +
				", company='" + company + '\'' +
				", time='" + time + '\'' +
				", state=" + state +
				'}';
	}


}
