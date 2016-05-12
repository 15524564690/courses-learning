package com.bin.myspring.entity;

import org.springframework.stereotype.Repository;

/**
 * Created by zhaobin on 16/5/9.
 */
@Repository(value = "resModel")
public class ResModel {
    private String code = "200";
    private String message;
    private Object data;

    public ResModel() {

    }

    public ResModel(Object data) {
        this.data = data;
    }

    public ResModel(String code, String message, Object data) {
        this.code = code;
        this.message = message;
        this.data = data;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
