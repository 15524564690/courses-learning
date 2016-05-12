package com.bin.myspring.entity;

import org.springframework.stereotype.Repository;

@Repository(value = "comments")
public class Comments {

	private String id;
	private String userid;
	private String titleid;
	private String commentid;
	private String content;
	private String createtime;


	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getTitleid() {
		return titleid;
	}

	public void setTitleid(String titleid) {
		this.titleid = titleid;
	}

	public String getCommentid() {
		return commentid;
	}

	public void setCommentid(String commentid) {
		this.commentid = commentid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCreatetime() {
		return createtime;
	}

	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}
}
