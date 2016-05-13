package com.bin.myspring.controller;

import com.bin.myspring.entity.Clazz;
import com.bin.myspring.entity.Comments;
import com.bin.myspring.entity.ResModel;
import com.bin.myspring.entity.Resources;
import com.bin.myspring.service.ClazzService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.tags.Param;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created by zhaobin on 16/5/10.
 */
@RestController
@RequestMapping("/clazz")
public class ClazzController {
    @Autowired
    @Qualifier("clazzService")
    private ClazzService clazzService;

    @RequestMapping(method = RequestMethod.GET)
    public ResModel getAllClass(){
        List<Clazz> classList =clazzService.getClassList();
        String code = "200";
        String message = "";
        return new ResModel(code, message, classList);
    }
    @RequestMapping(value = "deleteClazz", method = RequestMethod.GET)
    public ResModel deleteClazzById(@RequestParam("id")String id) {
        List<Clazz> clazzList = null;
        String code = "200";
        String message = "";
        try {
            if(clazzService.deleteClass(id)){
                clazzList = clazzService.getClassList();
                message="删除成功!";
            }else{
                message="删除失败!";
            }
        }catch (Exception e){
            message=e.toString();
            String dataTemp = "由于外键关系,您不能直接删除评论!";
            return new ResModel(code, message, dataTemp);
        }

        return new ResModel(code, message, clazzList);
    }
    @RequestMapping(value = "updateClazz", method = RequestMethod.POST)
    public ResModel updateClazzById(Clazz clazz) {
        // System.out.print(user.getPassword()+user.getCreatetime());
        boolean state =clazzService.updateClass(clazz);
        String code = "200";
        String message = "";

        if(state){
            message="更新成功!";
        }else{
            message="更新失败!";
        }
        return new ResModel(code, message, state);
    }
    @RequestMapping(value = "createClazz", method = RequestMethod.POST)
    public ResModel createClazz(Clazz clazz) {
        System.out.print(clazz.getDirectionid());
        System.out.print(clazz.getClassname());
        System.out.print(clazz.getCategoryid());
        System.out.print(clazz.getClassname());
        clazz.setId(UUID.randomUUID().toString());
        clazz.setCreatetime(new Date().toString());
        clazz.setUpdatetime("");
        boolean state =clazzService.createClass(clazz);
        String code = "200";
        String message = "";

        if(state){
            message="添加成功!";
        }else{
            message="添加失败!";
        }
        return new ResModel(code, message, state);
    }
}
