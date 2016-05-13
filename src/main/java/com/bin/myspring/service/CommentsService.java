package com.bin.myspring.service;

import java.util.List;

import com.bin.myspring.entity.Comments;

public interface CommentsService {
	List<Comments> getCommentsList();
	boolean addComments(Comments comments);
	boolean deleteComments(String id);
	boolean updateComments(Comments comments);
}
