package com.bin.myspring.service.impl;

import com.bin.myspring.entity.Resources;
import com.bin.myspring.mapper.ResourcesMapper;
import com.bin.myspring.service.ResourcesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zhaobin on 16/5/10.
 */
@Service("resourcesService")
public class ResourcesServiceImpl implements ResourcesService {

    @Autowired
    @Qualifier("resourcesMapper")
    private ResourcesMapper resourcesMapper;
    public List<Resources> getResourcesList() {
        return resourcesMapper.getResourcesList();
    }

    public boolean addResources(Resources resources) {
        return resourcesMapper.createResources(resources);
    }

    public boolean deleteResources(String id) {
        return resourcesMapper.deleteResources(id);
    }

    public boolean updateResources(Resources resources, String id) {
        return resourcesMapper.updateResources(resources,id);
    }
}
