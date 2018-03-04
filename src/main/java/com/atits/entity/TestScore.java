package com.atits.entity;

import javax.persistence.*;

@Entity(name = "t_test_score")
public class TestScore {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @OneToOne
    @JoinColumn(name = "test_manage_id", referencedColumnName = "id")
    private TestManage testManage;
    private int A1;
    private int A2;
    private int A3;
    private int A4;
    private int A5;
    private int A6;
    private int sum;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public TestManage getTestManage() {
        return testManage;
    }

    public void setTestManage(TestManage testManage) {
        this.testManage = testManage;
    }

    public int getA1() {
        return A1;
    }

    public void setA1(int a1) {
        A1 = a1;
    }

    public int getA2() {
        return A2;
    }

    public void setA2(int a2) {
        A2 = a2;
    }

    public int getA3() {
        return A3;
    }

    public void setA3(int a3) {
        A3 = a3;
    }

    public int getA4() {
        return A4;
    }

    public void setA4(int a4) {
        A4 = a4;
    }

    public int getA5() {
        return A5;
    }

    public void setA5(int a5) {
        A5 = a5;
    }

    public int getA6() {
        return A6;
    }

    public void setA6(int a6) {
        A6 = a6;
    }

    public int getSum() {
        return sum;
    }

    public void setSum(int sum) {
        this.sum = sum;
    }

    @Override
    public String toString() {
        return "TestScore{" +
                "id=" + id +
                ", testManage=" + testManage +
                ", A1=" + A1 +
                ", A2=" + A2 +
                ", A3=" + A3 +
                ", A4=" + A4 +
                ", A5=" + A5 +
                ", A6=" + A6 +
                ", sum=" + sum +
                '}';
    }
}
