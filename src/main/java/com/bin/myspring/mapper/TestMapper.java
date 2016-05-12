package com.bin.myspring.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.bin.myspring.entity.Test;

@Repository("testMapper")  
@Transactional 
public interface TestMapper {
	
	String getTest();
    List<Test> findAll();
}
