package com.bin.myspring.controller;

import com.bin.myspring.entity.*;
import com.bin.myspring.service.ChapterService;
import com.bin.myspring.service.ClazzService;
import com.bin.myspring.service.TitleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by zhaobin on 16/5/10.
 */
@RestController
@RequestMapping("/chapter")

public class ChapterController {
    @Autowired
    @Qualifier("chapterService")
    private ChapterService chapterService;

    @Autowired
    @Qualifier("titleService")
    private TitleService titleService;

    @Autowired
    @Qualifier("clazzService")
    private ClazzService clazzService;

    @RequestMapping(method = RequestMethod.GET)
    public ResModel getAllChapter(){
        List<Chapter> chapterList =chapterService.getChapterList();
        String code = "200";
        String message = "";
        return new ResModel(code, message, chapterList);
    }

    @RequestMapping(value = "getContent",method = RequestMethod.GET)
    public ModelAndView getChapterTitle(String id){
        Map<String, Object> modelMap = new HashMap<String, Object>();

        List<Chapter> chapter = chapterService.getOneChapter(id);
        List<Title> title = titleService.getTitleList();
        List<Clazz> clazzs = clazzService.getOneById(id);

        modelMap.put("chapterList", chapter);
        modelMap.put("titleList", title);
        modelMap.put("clazzList", clazzs);
        return new ModelAndView("/user/content.jsp", modelMap);
    }
}
