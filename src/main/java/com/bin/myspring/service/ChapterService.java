package com.bin.myspring.service;

import com.bin.myspring.entity.Chapter;
import com.bin.myspring.entity.Test;

import java.util.List;

/**
 * Created by zhaobin on 16/5/10.
 */
public interface ChapterService {
    List<Chapter> getChapterList();
    List<Chapter> getOneChapter(String clazzid);
    boolean addChapter(Chapter chapter);
    boolean deleteChapter(String id);
    boolean updateChapter(Chapter chapter);
}
