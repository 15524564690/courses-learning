package com.bin.myspring.entity;

import org.springframework.stereotype.Repository;

/**
 * Created by zhaobin on 16/5/9.
 */
@Repository(value = "clazz")
public class Clazz {
    private String id;
    private String classname;
    private String classdes;
    private String createtime;
    private String updatetime;
    private String userid;
    private String categoryid;
    private String directionid;
    private String pictureul;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getClassname() {
        return classname;
    }

    public void setClassname(String classname) {
        this.classname = classname;
    }

    public String getClassdes() {
        return classdes;
    }

    public void setClassdes(String classdes) {
        this.classdes = classdes;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public String getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(String updatetime) {
        this.updatetime = updatetime;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getCategoryid() {
        return categoryid;
    }

    public void setCategoryid(String categoryid) {
        this.categoryid = categoryid;
    }

    public String getDirectionid() {
        return directionid;
    }

    public void setDirectionid(String directionid) {
        this.directionid = directionid;
    }

    public String getPictureul() {
        return pictureul;
    }

    public void setPictureul(String pictureul) {
        this.pictureul = pictureul;
    }

}
