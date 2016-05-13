package com.bin.myspring.service.impl;

import com.bin.myspring.entity.Clazz;
import com.bin.myspring.mapper.ClazzMapper;
import com.bin.myspring.service.ClazzService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zhaobin on 16/5/10.
 */
@Service("clazzService")
public class ClazzServiceImpl implements ClazzService {
    @Autowired
    @Qualifier("clazzMapper")
    private ClazzMapper clazzMapper;

    public List<Clazz> getClassList() {
        return clazzMapper.getClazzList();
    }

    public List<Clazz> getClassList(String categoryId, String directionId, String className) {
        return clazzMapper.getClazzListBy(categoryId, directionId, className);
    }

    public boolean createClass(Clazz clazz) {
        return clazzMapper.createClazz(clazz);
    }

    public boolean addClass(Clazz clazz) {
        return clazzMapper.createClazz(clazz);
    }

    public boolean deleteClass(String id) {
        return clazzMapper.deleteClazz(id);
    }

    public boolean updateClass(Clazz clazz) {
        return clazzMapper.updateClazz(clazz);
    }
}
