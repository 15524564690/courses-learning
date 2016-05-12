package com.bin.myspring.entity;

import org.springframework.stereotype.Repository;

/**
 * Created by zhaobin on 16/5/9.
 */
@Repository(value = "chapter")
public class Chapter {
    private String id;
    private String clazzid;
    private int num;
    private String chaptername;
    private String chapterdes;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getClazzid() {
        return clazzid;
    }

    public void setClazzid(String clazzid) {
        this.clazzid = clazzid;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getChaptername() {
        return chaptername;
    }

    public void setChaptername(String chaptername) {
        this.chaptername = chaptername;
    }

    public String getChapterdes() {
        return chapterdes;
    }

    public void setChapterdes(String chapterdes) {
        this.chapterdes = chapterdes;
    }
}
