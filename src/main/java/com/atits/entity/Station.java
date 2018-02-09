package com.atits.entity;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnore;

import java.util.HashSet;
import java.util.Set;

@Entity(name = "t_sta")
public class Station {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "sta_name")
	private String staName;// 实验站名称

	@ManyToOne
	@JoinColumn(name = "sys_id", referencedColumnName = "id",nullable = true)
	private System system;// 系统名称

	@Column(name = "content", length = 100000)
	private String content;// 试验站基本信息

	@Column(name = "manager")
	private String manager;// 实验站站长姓名

	@Column(name = "company")
	private String company;// 建设依托单位

	@Column(name = "time")
	private String time;// 上传时间

	@Column(name = "state")
	private int state;// 状态

	@OneToOne(mappedBy = "station",fetch = FetchType.EAGER,cascade={CascadeType.PERSIST,CascadeType.MERGE})
	private Person person;

	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStaName() {
		return staName;
	}

	public void setStaName(String staName) {
		this.staName = staName;
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

	public String getManager() {
		return manager;
	}

	public void setManager(String manager) {
		this.manager = manager;
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

	@Override
	public String toString() {
		return "Station{" +
				"id=" + id +
				", staName='" + staName + '\'' +
				", system=" + system.getId() +
				", content='" + content + '\'' +
				", manager='" + manager + '\'' +
				", company='" + company + '\'' +
				", time='" + time + '\'' +
				", state=" + state +
				'}';
	}

}
