package com.bin.myspring.mapper;

import com.bin.myspring.entity.Category;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by zhaobin on 16/5/9.
 */
@Repository("categoryMapper")
@Transactional
public interface CategoryMapper {
    List<Category> getCategoryList();
    boolean createCategory(Category category);
    boolean deleteCategory(String id);
    boolean updateCategory(Category category,String id);
}
