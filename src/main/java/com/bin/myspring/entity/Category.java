package com.bin.myspring.entity;

import org.springframework.stereotype.Repository;

/**
 * Created by zhaobin on 16/5/9.
 */
@Repository(value = "category")
public class Category {
    private String id;
    private String categoryname;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCategoryname() {
        return categoryname;
    }

    public void setCategoryname(String categoryname) {
        this.categoryname = categoryname;
    }
}
