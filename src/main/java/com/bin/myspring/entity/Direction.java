package com.bin.myspring.entity;

import org.springframework.stereotype.Repository;

/**
 * Created by zhaobin on 16/5/9.
 */
@Repository(value = "direction")
public class Direction {
    private String id;
    private  String directionname;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDirectionname() {
        return directionname;
    }

    public void setDirectionname(String directionname) {
        this.directionname = directionname;
    }
}
