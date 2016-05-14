package com.bin.myspring.service;

import com.bin.myspring.entity.Clazz;

import java.util.List;

/**
 * Created by zhaobin on 16/5/10.
 */
public interface ClazzService {
    List<Clazz> getOneById(String id);
    List<Clazz> getClassList();
    List<Clazz> getClassList(String categoryId, String directionId, String className);
    boolean createClass(Clazz clazz);
    boolean addClass(Clazz clazz);
    boolean deleteClass(String id);
    boolean updateClass(Clazz clazz);

}
