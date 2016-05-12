package com.bin.myspring.service.impl;

import com.bin.myspring.entity.Direction;
import com.bin.myspring.mapper.DirectionMapper;
import com.bin.myspring.service.DirectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zhaobin on 16/5/10.
 */
@Service("directionService")
public class DirectionServiceImpl implements DirectionService {
    @Autowired
    @Qualifier("directionMapper")
    private DirectionMapper directionMapper;

    public List<Direction> getDirectionList() {
        return directionMapper.getDirectionList();
    }

    public boolean addDirection(Direction direction) {
        return directionMapper.createDirection(direction);
    }

    public boolean deleteDirection(String id) {
        return directionMapper.deleteDirection(id);
    }

    public boolean updateDirection(Direction direction, String id) {
        return directionMapper.updateDirection(direction,id);
    }
}
