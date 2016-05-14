package com.bin.myspring.entity;
import java.io.Serializable;
import org.springframework.stereotype.Repository;

@Repository(value = "test") 
public class Test implements Serializable{

	private String chaptername;
	private String chapterdes;
	private String titlename;
	private String classname;
	private String titledes;
	private String videourl;
	private String ppturl;
	private String resources;
	public Test(){}

	public String getVideourl() {
		return videourl;
	}

	public void setVideourl(String videourl) {
		this.videourl = videourl;
	}

	public String getPpturl() {
		return ppturl;
	}

	public void setPpturl(String ppturl) {
		this.ppturl = ppturl;
	}

	public String getResources() {
		return resources;
	}

	public void setResources(String resources) {
		this.resources = resources;
	}

	public String getChaptername() {
		return chaptername;
	}

	public void setChaptername(String chaptername) {
		this.chaptername = chaptername;
	}

	public String getChapterdes() {
		return chapterdes;
	}

	public void setChapterdes(String chapterdes) {
		this.chapterdes = chapterdes;
	}

	public String getTitlename() {
		return titlename;
	}

	public void setTitlename(String titlename) {
		this.titlename = titlename;
	}

	public String getClassname() {
		return classname;
	}

	public void setClassname(String classname) {
		this.classname = classname;
	}

	public String getTitledes() {
		return titledes;
	}

	public void setTitledes(String titledes) {
		this.titledes = titledes;
	}
}
