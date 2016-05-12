package com.bin.myspring.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.bin.myspring.entity.Content;


@Repository("contentMapper")  
@Transactional
public interface ContentMapper {
	List<Content> findAll();
	List<Content> findAllById(Integer cid);
}
