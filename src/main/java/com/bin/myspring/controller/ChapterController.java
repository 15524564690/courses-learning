package com.bin.myspring.controller;

import com.bin.myspring.entity.Chapter;
import com.bin.myspring.entity.Clazz;
import com.bin.myspring.entity.ResModel;
import com.bin.myspring.service.ChapterService;
import com.bin.myspring.service.ClazzService;
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
@RequestMapping("/chapter")
public class ChapterController {
    @Autowired
    @Qualifier("chapterService")
    private ChapterService chapterService;

    @RequestMapping(method = RequestMethod.GET)
    public ResModel getAllChapter(){
        List<Chapter> chapterList =chapterService.getChapterList();
        String code = "200";
        String message = "";
        return new ResModel(code, message, chapterList);
    }

}
