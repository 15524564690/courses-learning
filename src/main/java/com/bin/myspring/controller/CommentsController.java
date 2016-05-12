package com.bin.myspring.controller;

import com.bin.myspring.entity.Comments;
import com.bin.myspring.entity.ResModel;
import com.bin.myspring.service.CommentsService;
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
}
