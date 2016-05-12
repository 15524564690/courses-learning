package com.bin.myspring.service;

import com.bin.myspring.entity.Category;

import java.util.List;

/**
 * Created by zhaobin on 16/5/10.
 */
public interface CategoryService {
    List<Category> getCategoryList();
    boolean addCategory(Category category);
    boolean deleteCategory(String id);
    boolean updateCategory(Category category,String id);
}
