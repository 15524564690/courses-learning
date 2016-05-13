package com.bin.myspring.service;

import com.bin.myspring.entity.Direction;

import java.util.List;

/**
 * Created by zhaobin on 16/5/10.
 */
public interface DirectionService {
    List<Direction> getDirectionList();
    List<Direction> getDirectionById(String  id);
    boolean addDirection(Direction direction);
    boolean deleteDirection(String  id);
    boolean updateDirection(Direction direction);
}
