package com.bin.myspring.service;

import java.util.List;

import com.bin.myspring.entity.Test;

public interface ITestService {

	String getTest();
	List<Test> findAll();
	}

