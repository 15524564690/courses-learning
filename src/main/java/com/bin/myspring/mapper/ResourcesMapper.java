package com.bin.myspring.mapper;

import com.bin.myspring.entity.Resources;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by zhaobin on 16/5/9.
 */
@Repository("resourcesMapper")
@Transactional
public interface ResourcesMapper {
    List<Resources> getResourcesList();
    boolean createResources(Resources resources);
    boolean updateResources(Resources resources,String id);
    boolean deleteResources(String id);
}
