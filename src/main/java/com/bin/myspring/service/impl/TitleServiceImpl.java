package com.bin.myspring.service.impl;

import com.bin.myspring.entity.Title;
import com.bin.myspring.mapper.TitleMapper;
import com.bin.myspring.service.TitleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zhaobin on 16/5/10.
 */
@Service("titleService")
public class TitleServiceImpl implements TitleService {

    @Autowired
    @Qualifier("titleMapper")
    private TitleMapper titleMapper;
    public List<Title> getTitleList() {
        return titleMapper.getTitleList();
    }

    public boolean addTitle(Title title) {
        return titleMapper.createTitle(title);
    }

    public boolean deleteTitle(String id) {
        return titleMapper.deleteTitle(id);
    }

    public boolean updateTitle(Title title,String id) {
        return titleMapper.updateTitle(title,id);
    }
}
