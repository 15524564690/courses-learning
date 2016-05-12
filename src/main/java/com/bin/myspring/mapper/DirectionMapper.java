package com.bin.myspring.mapper;

import com.bin.myspring.entity.Direction;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by zhaobin on 16/5/9.
 */
@Repository("directionMapper")
@Transactional
public interface DirectionMapper {
    List<Direction> getDirectionList();
    boolean createDirection(Direction direction);
    boolean deleteDirection(String id);
    boolean updateDirection(Direction direction, String id);
}
