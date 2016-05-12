package com.bin.myspring.entity;
import java.io.Serializable;
import org.springframework.stereotype.Repository;

@Repository(value = "test") 
public class Test implements Serializable{

	private Integer id;
	private String typeName;
	
	public Test(){}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	
	
}
