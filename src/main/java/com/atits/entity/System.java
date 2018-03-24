package com.atits.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import java.io.Serializable;
import java.util.List;
import java.util.Set;

import javax.persistence.*;

@Entity(name = "t_system")
public class System implements Serializable {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "sys_name")
    private String sysName;// 体系名称

    @Column(name = "chief")
    private String chief;// 首席

    @Column(name = "sub_chief")
    private String subChief;// 首席

    @Column(name = "content", length = 100000)
    private String content;

    @Column(name = "overview", length = 1000)
    private String overview;

    @OneToMany(mappedBy = "system", fetch = FetchType.LAZY)
    @JsonIgnore
    private List<Person> persons;

    @OneToMany(mappedBy = "system", fetch = FetchType.LAZY)
    @JsonIgnore
    private List<Laboratory> laboratories;

    @OneToMany(mappedBy = "system", fetch = FetchType.LAZY)
    @JsonIgnore
    private List<Station> stations;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSysName() {
        return sysName;
    }

    public void setSysName(String sysName) {
        this.sysName = sysName;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getOverview() {
        return overview;
    }

    public void setOverview(String overview) {
        this.overview = overview;
    }

    public String getChief() {
        return chief;
    }

    public void setChief(String chief) {
        this.chief = chief;
    }

    public String getSubChief() {
        return subChief;
    }

    public void setSubChief(String subChief) {
        this.subChief = subChief;
    }

    public List<Person> getPersons() {
        return persons;
    }

    public void setPersons(List<Person> persons) {
        this.persons = persons;
    }

    public List<Station> getStations() {
        return stations;
    }

    public void setStations(List<Station> stations) {
        this.stations = stations;
    }

    public List<Laboratory> getLaboratories() {
        return laboratories;
    }

    public void setLaboratories(List<Laboratory> laboratories) {
        this.laboratories = laboratories;
    }



    @Override
    public String toString() {
        return "System{" +
                "id=" + id +
                ", sysName='" + sysName + '\'' +
                ", chief=" + chief +'\'' +
                ", subChief=" + subChief +'\'' +
                ", content='" + content + '\'' +
                ", overview='" + overview + '\'' +
                '}';
    }
}
