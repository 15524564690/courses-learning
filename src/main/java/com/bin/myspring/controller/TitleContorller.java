package com.bin.myspring.controller;

import com.bin.myspring.entity.ResModel;
import com.bin.myspring.entity.Title;
import com.bin.myspring.entity.User;
import com.bin.myspring.service.TitleService;
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
@RequestMapping("/title")
public class TitleContorller {
    @Autowired
    @Qualifier("titleService")
    private TitleService titleService;

    @RequestMapping(method =RequestMethod.GET)
    public ResModel getAllTitle() {
        List<Title> titleList = titleService.getTitleList();
        String code = "200";
        String message = "";
        return new ResModel(code, message, titleList);
    }
}
