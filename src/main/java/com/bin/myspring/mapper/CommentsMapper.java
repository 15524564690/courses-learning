package com.bin.myspring.mapper;

import java.util.List;

import com.bin.myspring.entity.User;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.bin.myspring.entity.Comments;


@Repository("commentsMapper")  
@Transactional
public interface CommentsMapper {
	
	List<Comments> getCommentsList();
	boolean createComments(Comments comments);
	boolean updateComments(Comments comments);
	boolean deleteComments(String id);
	List<Comments> getCommentsByUserid(String userid);
}
