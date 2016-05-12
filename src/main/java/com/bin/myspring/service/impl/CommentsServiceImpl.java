package com.bin.myspring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bin.myspring.entity.Comments;
import com.bin.myspring.mapper.CommentsMapper;
import com.bin.myspring.service.CommentsService;

@Service("commentsService")
public class CommentsServiceImpl implements CommentsService{

	
	@Autowired
	@Qualifier("commentsMapper")
	private CommentsMapper commentsMapper;

	public List<Comments> getCommentsList() {
		return commentsMapper.getCommentsList();
	}

	public boolean addComments(Comments comments) {
		return commentsMapper.createComments(comments);
	}

	public boolean deleteComments(String id) {
		return commentsMapper.deleteComments(id);
	}

	public boolean updateComments(Comments comments, String id) {
		return commentsMapper.updateComments(comments,id);
	}
}
