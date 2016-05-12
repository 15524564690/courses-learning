package com.bin.myspring.controller;

import com.bin.myspring.entity.Clazz;
import com.bin.myspring.entity.ResModel;
import com.bin.myspring.entity.Resources;
import com.bin.myspring.service.ClazzService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.tags.Param;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by zhaobin on 16/5/10.
 */
@RestController
@RequestMapping("/clazz")
public class ClazzController {
    @Autowired
    @Qualifier("clazzService")
    private ClazzService clazzService;

    @RequestMapping(method = RequestMethod.GET)
    public ResModel getAllClass(){
        List<Clazz> classList =clazzService.getClassList();
        String code = "200";
        String message = "";
        return new ResModel(code, message, classList);
    }

}
