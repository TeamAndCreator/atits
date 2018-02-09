package com.atits.entity;


import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.Set;

@Entity(name = "t_expert")
public class Expert {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "user_name")
    private String userName;// 用户名

    @Column(name = "password")
    private String password;

    @Column(name = "confirmPassword")
    private String confirmPassword;// 请再次输入密码

    @Column(name = "name")
    private String name;

    @Column(name = "department")
    private String department;// 工作单位

    @Column(name = "post")
    private String post;//岗位

    @Column(name = "phone_number")
    private String phoneNumber;// 手机号码

    @Column(name = "email")
    private String email;// 电子邮箱

    @Column(name = "time")
    private String time;//注册时间

    @ManyToOne(fetch = FetchType.EAGER,cascade={CascadeType.PERSIST,CascadeType.MERGE})
    @JoinColumn(name = "sys_id", referencedColumnName = "id",nullable = true)
    @JsonIgnore
    private System system;// 体系名称

//    @OneToMany(mappedBy = "eptExaminer",cascade = CascadeType.REMOVE)
//    @JsonIgnore
//    private Set<TestManage> TestManageEptExaminers;
//
//    @OneToMany(mappedBy = "eptExaminer",cascade = CascadeType.REMOVE)
//    @JsonIgnore
//    private Set<TestManage> TestManageEptExaminers;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public System getSystem() {
        return system;
    }

    public void setSystem(System system) {
        this.system = system;
    }

//    public Set<TestManage> getTestManageEptExaminers() {
//        return TestManageEptExaminers;
//    }
//
//    public void setTestManageEptExaminers(Set<TestManage> testManageEptExaminers) {
//        TestManageEptExaminers = testManageEptExaminers;
//    }

    @Override
    public String toString() {
        return "Expert{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", confirmPassword='" + confirmPassword + '\'' +
                ", name='" + name + '\'' +
                ", department='" + department + '\'' +
                ", post='" + post + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", email='" + email + '\'' +
                ", time='" + time + '\'' +
                ", system=" + system +
//                ", TestManageEptExaminers=" + TestManageEptExaminers +
                '}';
    }
}
