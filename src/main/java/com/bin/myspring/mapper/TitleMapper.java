package com.bin.myspring.mapper;

import com.bin.myspring.entity.Title;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by zhaobin on 16/5/9.
 */
@Repository("titleMapper")
@Transactional
public interface TitleMapper {
    List<Title> getTitleList();
    boolean createTitle(Title title);
    boolean deleteTitle(String id);
    boolean updateTitle(Title title,String id);
}
