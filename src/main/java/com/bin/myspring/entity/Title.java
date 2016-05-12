package com.bin.myspring.entity;

import org.springframework.stereotype.Repository;

/**
 * Created by zhaobin on 16/5/9.
 */
@Repository(value = "title")
public class Title {
    private String id;
    private String chapterid;
    private String videourl;
    private String ppturl;
    private String titledes;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getChapterid() {
        return chapterid;
    }

    public void setChapterid(String chapterid) {
        this.chapterid = chapterid;
    }

    public String getVideourl() {
        return videourl;
    }

    public void setVideourl(String videourl) {
        this.videourl = videourl;
    }

    public String getPpturl() {
        return ppturl;
    }

    public void setPpturl(String ppturl) {
        this.ppturl = ppturl;
    }

    public String getTitledes() {
        return titledes;
    }

    public void setTitledes(String titledes) {
        this.titledes = titledes;
    }
}
