package com.bin.myspring.service;

import com.bin.myspring.entity.Clazz;

import java.util.List;

/**
 * Created by zhaobin on 16/5/10.
 */
public interface ClazzService {
    List<Clazz> getClassList();
    boolean addClass(Clazz clazz);
    boolean deleteClass(String id);
    boolean updateClass(Clazz clazz,String id);

}
