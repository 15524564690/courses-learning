package com.bin.myspring.service;

import com.bin.myspring.entity.Title;

import java.util.List;

/**
 * Created by zhaobin on 16/5/10.
 */
public interface TitleService {

    List<Title> getTitleList();
    boolean addTitle(Title title);
    boolean deleteTitle(String id);
    boolean updateTitle(Title title,String id);
}
