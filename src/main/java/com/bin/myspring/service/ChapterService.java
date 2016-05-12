package com.bin.myspring.service;

import com.bin.myspring.entity.Chapter;

import java.util.List;

/**
 * Created by zhaobin on 16/5/10.
 */
public interface ChapterService {
    List<Chapter> getChapterList();
    boolean addChapter(Chapter chapter);
    boolean deleteChapter(String id);
    boolean updateChapter(Chapter chapter,String id);
}
