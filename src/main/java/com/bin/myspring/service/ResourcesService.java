package com.bin.myspring.service;

import com.bin.myspring.entity.Resources;

import java.util.List;

/**
 * Created by zhaobin on 16/5/10.
 */
public interface ResourcesService {
    List<Resources> getResourcesList();
    boolean addResources(Resources resources);
    boolean deleteResources(String id);
    boolean updateResources(Resources resources,String id);
}
