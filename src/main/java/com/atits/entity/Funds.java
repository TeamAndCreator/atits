package com.atits.entity;


import javax.persistence.*;

@Entity(name = "t_funds")
public class Funds {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;


    @Column(name = "bearer")
    private String bearer;//任务承担人

    @ManyToOne(targetEntity = System.class)
    @JoinColumn(name = "sys_id", referencedColumnName = "id" ,nullable = true)
    private System system; //体系编号

    @Column(name = "money")
    private float money ;//费用金额

    @Column(name = "year")
    private String year;//年份

    @Column(name = "file_id")
    private String fileId;

    @Column(name = "state")
    private int state;//状态

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBearer() {
        return bearer;
    }

    public void setBearer(String bearer) {
        this.bearer = bearer;
    }

    public System getSystem() {
        return system;
    }

    public void setSystem(System system) {
        this.system = system;
    }

    public float getMoney() {
        return money;
    }

    public void setMoney(float money) {
        this.money = money;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getFileId() {
        return fileId;
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
        return "Funds{" +
                "id=" + id +
                ", bearer='" + bearer + '\'' +
                ", system=" + system.getId() +
                ", money=" + money +
                ", year='" + year + '\'' +
                ", fileId='" + fileId + '\'' +
                ", state=" + state +
                '}';
    }
}
