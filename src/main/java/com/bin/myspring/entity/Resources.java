package com.bin.myspring.entity;

import org.springframework.stereotype.Repository;

/**
 * Created by zhaobin on 16/5/9.
 */
@Repository(value = "resources")
public class Resources {
    private String id;
    private String titleid;
    private String url;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitleid() {
        return titleid;
    }

    public void setTitleid(String titleid) {
        this.titleid = titleid;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
