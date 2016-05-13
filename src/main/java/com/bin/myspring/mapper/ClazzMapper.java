package com.bin.myspring.mapper;

import com.bin.myspring.entity.Clazz;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by zhaobin on 16/5/9.
 */
@Repository("clazzMapper")
@Transactional
public interface ClazzMapper {
    List<Clazz> getClazzList();

    List<Clazz> getClazzListBy(String categoryId, String directionId, String className);

    boolean createClazz(Clazz clazz);

    boolean updateClazz(Clazz clazz);

    boolean deleteClazz(String id);

}
