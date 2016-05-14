package com.bin.myspring.mapper;

import com.bin.myspring.entity.Chapter;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by zhaobin on 16/5/9.
 */

@Repository("chapterMapper")
@Transactional
public interface ChapterMapper {
    List<Chapter> getChapterList();
    List<Chapter> getOneChapter(String clazzid);
    boolean updateChapter(Chapter chapter);
    boolean createChapter(Chapter chapter);
    boolean deleteChapter(String id);


}
