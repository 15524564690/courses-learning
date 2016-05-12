package com.bin.myspring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bin.myspring.entity.Test;
import com.bin.myspring.mapper.TestMapper;
import com.bin.myspring.service.ITestService;

@Service("testService")
public class TestServieImpl implements ITestService {

	@Autowired
	@Qualifier("testMapper")
	private TestMapper testMapper;

	public String getTest() {
		return "TEST";
	}

	public List<Test> findAll() {
		return testMapper.findAll();
	}
}
