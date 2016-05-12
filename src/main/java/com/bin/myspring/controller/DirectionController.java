package com.bin.myspring.controller;

import com.bin.myspring.entity.Category;
import com.bin.myspring.entity.Direction;
import com.bin.myspring.entity.ResModel;
import com.bin.myspring.service.CategoryService;
import com.bin.myspring.service.DirectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by zhaobin on 16/5/10.
 */
@RestController
@RequestMapping("/direction")
public class DirectionController {
    @Autowired
    @Qualifier("directionService")
    private DirectionService directionService;

    @RequestMapping(method = RequestMethod.GET)
    public ResModel getAllCategory() {
        List<Direction> directionList = directionService.getDirectionList();
        String code = "200";
        String message = "";
        return new ResModel(code, message, directionList);
    }
}
