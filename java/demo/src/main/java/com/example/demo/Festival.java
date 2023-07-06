package com.example.demo.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "festival")
public class Festival implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long num;

    @Column(name = "mouth")
    private Long mouth;

    @Column(name = "name")
    private String name;

    @Column(name = "date")
    private String date;

    @Column(name = "intro")
    private String intro;

    @Column(name = "origin")
    private String origin;

    @Column(name = "custom")
    private String custom;

    @Column(name = "diet")
    private String diet;

    public Festival() {
    }

    public Festival(Long mouth, String name, String date, String intro, String origin, String custom, String diet) {
        this.mouth = mouth;
        this.name = name;
        this.date = date;
        this.intro = intro;
        this.origin = origin;
        this.custom = custom;
        this.diet = diet;
    }

    public Long getNum() {
        return num;
    }

    public void setNum(Long num) {
        this.num = num;
    }

    public Long getMouth() {
        return mouth;
    }

    public void setMouth(Long mouth) {
        this.mouth = mouth;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public String getCustom() {
        return custom;
    }

    public void setCustom(String custom) {
        this.custom = custom;
    }

    public String getDiet() {
        return diet;
    }

    public void setDiet(String diet) {
        this.diet = diet;
    }
}