package com.bin.myspring.controller;

import com.bin.myspring.entity.ResModel;
import com.bin.myspring.entity.Resources;
import com.bin.myspring.service.ResourcesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by zhaobin on 16/5/10.
 */
@RestController
@RequestMapping("/resources")
public class ResourcesController {
    @Autowired
    @Qualifier("resourcesService")
    private ResourcesService resourcesService;

    @RequestMapping(method = RequestMethod.GET)
    public ResModel getAllResources(){
        List<Resources> resourcesList =resourcesService.getResourcesList();
        String code = "200";
        String message = "";
        return new ResModel(code, message, resourcesList);
    }
}
