package com.bin.myspring.entity;

import java.io.Serializable;
import org.springframework.stereotype.Repository;


@Repository(value ="content")
public class Content implements Serializable{

	private Integer id;
	private Integer classId;
	private String chapter;
	private String chapterDescribe;
	private String video;
	private String ppt;
	private String txt;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getClassId() {
		return classId;
	}
	public void setClassId(Integer classId) {
		this.classId = classId;
	}
	public String getChapter() {
		return chapter;
	}
	public void setChapter(String chapter) {
		this.chapter = chapter;
	}
	public String getChapterDescribe() {
		return chapterDescribe;
	}
	public void setChapterDescribe(String chapterDescribe) {
		this.chapterDescribe = chapterDescribe;
	}
	public String getVideo() {
		return video;
	}
	public void setVideo(String video) {
		this.video = video;
	}
	public String getPpt() {
		return ppt;
	}
	public void setPpt(String ppt) {
		this.ppt = ppt;
	}
	public String getTxt() {
		return txt;
	}
	public void setTxt(String txt) {
		this.txt = txt;
	}
	
}
