package com.atits.entity;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "t_test_weight")
public class TestWeight {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String year;// 考评年度

    private String testObject;

    private double nongWei;
    private double expert;
    private double subChief_sta_lib;
    private double sta_lib;
    private double chief;
    private double nongwei_expert;
    private double chief_subChief;

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

    public String getTestObject() {
        return testObject;
    }

    public void setTestObject(String testObject) {
        this.testObject = testObject;
    }

    public double getNongWei() {
        return nongWei;
    }

    public void setNongWei(double nongWei) {
        this.nongWei = nongWei;
    }

    public double getExpert() {
        return expert;
    }

    public void setExpert(double expert) {
        this.expert = expert;
    }

    public double getSubChief_sta_lib() {
        return subChief_sta_lib;
    }

    public void setSubChief_sta_lib(double subChief_sta_lib) {
        this.subChief_sta_lib = subChief_sta_lib;
    }

    public double getSta_lib() {
        return sta_lib;
    }

    public void setSta_lib(double sta_lib) {
        this.sta_lib = sta_lib;
    }

    public double getChief() {
        return chief;
    }

    public void setChief(double chief) {
        this.chief = chief;
    }

    public double getNongwei_expert() {
        return nongwei_expert;
    }

    public void setNongwei_expert(double nongwei_expert) {
        this.nongwei_expert = nongwei_expert;
    }

    public double getChief_subChief() {
        return chief_subChief;
    }

    public void setChief_subChief(double chief_subChief) {
        this.chief_subChief = chief_subChief;
    }


    @Override
    public String toString() {
        return "TestWeight{" +
                "id=" + id +
                ", year='" + year + '\'' +
                ", testObject='" + testObject + '\'' +
                ", nongWei=" + nongWei +
                ", expert=" + expert +
                ", subChief_sta_lib=" + subChief_sta_lib +
                ", sta_lib=" + sta_lib +
                ", chief=" + chief +
                ", nongwei_expert=" + nongwei_expert +
                ", chief_subChief=" + chief_subChief +
                '}';
    }


}
