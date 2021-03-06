package com.atits.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;

@Entity(name = "t_test_manage")
public class TestManage {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;


    private String year;//考评年度

    @OneToOne
    @JoinColumn(name = "perExaminer_id",referencedColumnName = "id")
    private Person perExaminer;//评分人

    @OneToOne
    @JoinColumn(name = "eptExaminer_id",referencedColumnName = "id")
    private Expert eptExaminer;//评分人

    @OneToOne
    @JoinColumn(name = "examedner_id",referencedColumnName = "id")
    private Person examedner; //被评分人

    private String examinerOfJob;//评分人的职位
    private String examednerOfJob; //被评分人的职位

//    @ManyToOne
//    private System system;//所属体系

    @ManyToOne
    @JoinColumn(name = "sys_id", referencedColumnName = "id",nullable = true)
    private System system;

//    private String time;//考评时间

    private String date;//考评日期

    private int mstate;//考评状态：0是未考评，1是已考评

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }



    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public Person getPerExaminer() {
        return perExaminer;
    }

    public void setPerExaminer(Person perExaminer) {
        this.perExaminer = perExaminer;
    }

    public Expert getEptExaminer() {
        return eptExaminer;
    }

    public void setEptExaminer(Expert eptExaminer) {
        this.eptExaminer = eptExaminer;
    }

    public Person getExamedner() {
        return examedner;
    }

    public void setExamedner(Person examedner) {
        this.examedner = examedner;
    }

    public String getExaminerOfJob() {
        return examinerOfJob;
    }

    public void setExaminerOfJob(String examinerOfJob) {
        this.examinerOfJob = examinerOfJob;
    }


    public String getExamednerOfJob() {
        return examednerOfJob;
    }

    public void setExamednerOfJob(String examednerOfJob) {
        this.examednerOfJob = examednerOfJob;
    }

    public System getSystem() {
        return system;
    }

    public void setSystem(System system) {
        this.system = system;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getMstate() {
        return mstate;
    }

    public void setMstate(int mstate) {
        this.mstate = mstate;
    }

    @Override
    public String toString() {
        return "TestManage{" +
                "id=" + id +
                ", year='" + year + '\'' +
                ", perExaminer=" + perExaminer +
                ", eptExaminer=" + eptExaminer +
                ", examinerOfJob=" + examinerOfJob +
                ", examednerOfJob=" + examednerOfJob +
                ", examedner=" + examedner +
                ", system=" + system +
                ", date='" + date + '\'' +
                ", mstate=" + mstate +
                '}';
    }
}
