package com.bin.myspring.controller;

import com.bin.myspring.entity.Comments;
import com.bin.myspring.entity.ResModel;
import com.bin.myspring.entity.User;
import com.bin.myspring.service.CommentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by zhaobin on 16/5/10.
 */
@RestController
@RequestMapping("/comments")
public class CommentsController {
    @Autowired
    @Qualifier("commentsService")
    private CommentsService commentsService;

    @RequestMapping(method = RequestMethod.GET)
    public ResModel getAllComments(){
        List<Comments> commentsList = commentsService.getCommentsList();
        String code = "200";
        String message = "";
        return new ResModel(code, message, commentsList);
    }
    @RequestMapping(value = "deleteComments", method = RequestMethod.GET)
    public ResModel deleteCommentsById(@RequestParam("id")String id) {
        List<Comments> commentsList = null;
        String code = "200";
        String message = "";
        try {
            if(commentsService.deleteComments(id)){
                commentsList = commentsService.getCommentsList();
                message="删除成功!";
            }else{
                message="删除失败!";
            }
        }catch (Exception e){
            message=e.toString();
            String dataTemp = "由于外键关系,您不能直接删除评论!";
            return new ResModel(code, message, dataTemp);
        }

        return new ResModel(code, message, commentsList);
    }
    @RequestMapping(value = "updateComments", method = RequestMethod.POST)
    public ResModel updateCommentsById(Comments comments) {
       // System.out.print(user.getPassword()+user.getCreatetime());
        boolean state =commentsService.updateComments(comments);
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
