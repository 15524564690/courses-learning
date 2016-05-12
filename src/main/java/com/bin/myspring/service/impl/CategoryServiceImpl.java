package com.bin.myspring.service.impl;

import com.bin.myspring.entity.Category;
import com.bin.myspring.mapper.CategoryMapper;
import com.bin.myspring.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zhaobin on 16/5/10.
 */
@Service("categoryService")
public class CategoryServiceImpl implements CategoryService {
    @Autowired
    @Qualifier("categoryMapper")
    private CategoryMapper categoryMapper;
    public List<Category> getCategoryList() {
        return categoryMapper.getCategoryList();
    }

    public boolean addCategory(Category category) {
        return categoryMapper.createCategory(category);
    }

    public boolean deleteCategory(String id) {
        return categoryMapper.deleteCategory(id);
    }

    public boolean updateCategory(Category category, String id) {
        return categoryMapper.updateCategory(category,id);
    }
}
