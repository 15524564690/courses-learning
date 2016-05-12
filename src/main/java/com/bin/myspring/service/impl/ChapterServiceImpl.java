package com.bin.myspring.service.impl;

import com.bin.myspring.entity.Chapter;
import com.bin.myspring.mapper.ChapterMapper;
import com.bin.myspring.service.ChapterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zhaobin on 16/5/10.
 */
@Service("chapterService")
public class ChapterServiceImpl implements ChapterService {
    @Autowired
    @Qualifier("chapterMapper")
    private ChapterMapper chapterMapper;

    public List<Chapter> getChapterList() {
        return chapterMapper.getChapterList();
    }

    public boolean addChapter(Chapter chapter) {
        return chapterMapper.createChapter(chapter);
    }

    public boolean deleteChapter(String id) {
        return chapterMapper.deleteChapter(id);
    }

    public boolean updateChapter(Chapter chapter, String id) {
        return chapterMapper.updateChapter(chapter,id);
    }
}
