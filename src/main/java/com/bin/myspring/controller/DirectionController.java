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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
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
    public ResModel getAllDirection() {
        List<Direction> directionList = directionService.getDirectionList();
        String code = "200";
        String message = "";
        return new ResModel(code, message, directionList);
    }
    @RequestMapping(value = "getDirectionById",method = RequestMethod.GET)
    public ResModel getDirectionById(String id) {
        List<Direction> directionList = directionService.getDirectionById(id);
        String code = "200";
        String message = "";
        return new ResModel(code, message, directionList);
    }
    @RequestMapping(value = "deleteDirection", method = RequestMethod.GET)
    public ResModel deleteDirectionById(@RequestParam("id")String id) {
        List<Direction> directionList = null;
        String code = "200";
        String message = "";
        if(directionService.deleteDirection(id)){
            directionList = directionService.getDirectionList();
            message="删除成功!";
        }else{
            message="删除失败!";
        }
        return new ResModel(code, message, directionList);
    }
    @RequestMapping(value = "updateDirectionById", method = RequestMethod.GET)
    public ResModel updateDirectionById( String id,String directionname) {
        Direction direction = new Direction();
        direction.setDirectionname(directionname);
        direction.setId(id);
        boolean state =directionService.updateDirection(direction);
                String code = "200";
        String message = "";

        if(state){
            message="更新成功!";
        }else{
            message="更新失败!";
        }
        return new ResModel(code, message, state);
    }

}
