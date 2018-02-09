package com.atits.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;



@Entity(name = "t_person")
public class Person implements Serializable {
	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;


	@OneToOne(cascade=CascadeType.ALL ,mappedBy ="person",fetch = FetchType.EAGER)
	@JsonIgnore
	private Profile profile;

	@Column(name = "user_name")
	private String userName;// 用户名

	@Column(name = "password")
	private String password;// 密码

	@Column(name = "confirmPassword")
	private String confirmPassword;// 请再次输入密码

	@Column(name = "name")
	private String name;// 姓名

	@Column(name = "phone_number")
	private String phoneNumber;// 手机号码

	@Column(name = "offce_phone")
	private String offcePhone;// 办公室电话

	@Column(name = "email")
	private String email;// 电子邮箱

	@Column(name = "department")
	private String department;// 工作单位

	@Column(name = "job")
	private String job;

	@Column(name = "permission")
	private String permission;

	@OneToMany(mappedBy = "bearer",cascade = CascadeType.REMOVE)
	@JsonIgnore
	private Set<Task> task;

	@OneToMany(mappedBy = "editor",cascade = CascadeType.REMOVE)
	@JsonIgnore
	private Set<Files> files;


//	@OneToMany(mappedBy = "examedner",cascade = CascadeType.REMOVE)
//	@JsonIgnore
//	private Set<TestManage> TestManageExamedners;


//	@OneToMany(mappedBy = "perExaminer",cascade = CascadeType.REMOVE)
//    @JsonIgnore
//    private Set<TestManage> TestManagePerExaminers;

//	@ManyToMany(fetch = FetchType.EAGER)
//	private Set<Role> role;// 组织机构角色

	@ManyToOne(fetch = FetchType.EAGER,cascade={CascadeType.PERSIST,CascadeType.MERGE})
	@JoinColumn(name = "lab_id",referencedColumnName = "id",nullable = true)
	@JsonIgnore
	private  Laboratory laboratory;//该人所在研究室

	@OneToOne(fetch = FetchType.EAGER,optional=true,cascade={CascadeType.PERSIST,CascadeType.MERGE})
	@JsonIgnore
	@JoinColumn(name = "sta_id",referencedColumnName = "id")
	private Station station;





	@ManyToOne(fetch = FetchType.EAGER,cascade={CascadeType.PERSIST,CascadeType.MERGE})
	@JoinColumn(name = "sys_id", referencedColumnName = "id",nullable = true)
	private System system;// 体系名称



	@Column(name = "time")
	private String time;

	@Column(name = "state")
	private int state;

	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Profile getProfile() {
        return profile;
    }

    public void setProfile(Profile profile) {
        this.profile = profile;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getOffcePhone() {
        return offcePhone;
    }

    public void setOffcePhone(String offcePhone) {
        this.offcePhone = offcePhone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getPermission() {
        return permission;
    }

    public void setPermission(String permission) {
        this.permission = permission;
    }

    public Set<Task> getTask() {
        return task;
    }

    public void setTask(Set<Task> task) {
        this.task = task;
    }

    public Set<Files> getFiles() {
        return files;
    }

    public void setFiles(Set<Files> files) {
        this.files = files;
    }

//    public Set<TestManage> getTestManageExamedners() {
//        return TestManageExamedners;
//    }
//
//    public void setTestManageExamedners(Set<TestManage> testManageExamedners) {
//        TestManageExamedners = testManageExamedners;
//    }
//
//    public Set<TestManage> getTestManagePerExaminers() {
//        return TestManagePerExaminers;
//    }
//
//    public void setTestManagePerExaminers(Set<TestManage> testManagePerExaminers) {
//        TestManagePerExaminers = testManagePerExaminers;
//    }

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

    public System getSystem() {
        return system;
    }

    public void setSystem(System system) {
        this.system = system;
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
        return "Person{" +
                "id=" + id +
                ", profile=" + profile +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", confirmPassword='" + confirmPassword + '\'' +
                ", name='" + name + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", offcePhone='" + offcePhone + '\'' +
                ", email='" + email + '\'' +
                ", department='" + department + '\'' +
                ", job='" + job + '\'' +
                ", permission='" + permission + '\'' +
                ", task=" + task +
                ", files=" + files +
//                ", TestManageExamedners=" + TestManageExamedners +
//                ", TestManagePerExaminers=" + TestManagePerExaminers +
                ", laboratory=" + laboratory +
                ", station=" + station +
                ", system=" + system +
                ", time='" + time + '\'' +
                ", state=" + state +
                '}';
    }
}
