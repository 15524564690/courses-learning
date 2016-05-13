package com.bin.myspring.controller;

import com.bin.myspring.entity.Category;
import com.bin.myspring.entity.ResModel;
import com.bin.myspring.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by zhaobin on 16/5/10.
 */
@RestController
@RequestMapping("/category")
public class CategoryController {
    @Autowired
    @Qualifier("categoryService")
    private CategoryService categoryService;

    @RequestMapping(method = RequestMethod.GET)
    public ResModel getAllCategory() {
        List<Category> categoryList = categoryService.getCategoryList();
        String code = "200";
        String message = "";
        return new ResModel(code, message, categoryList);
    }
    @RequestMapping(value = "getCategoryById",method = RequestMethod.GET)
    public ResModel getCategoryById(String id) {
        List<Category> categoryList = categoryService.getCategoryById(id);
        String code = "200";
        String message = "";
        return new ResModel(code, message, categoryList);
    }
    @RequestMapping(value = "deleteCategory", method = RequestMethod.GET)
    public ResModel deleteCategoryById(@RequestParam("id")String id) {
        List<Category> categoryList = null;
        String code = "200";
        String message = "";
        if(categoryService.deleteCategory(id)){
            categoryList = categoryService.getCategoryList();
            message="删除成功!";
        }else{
            message="删除失败!";
        }
        return new ResModel(code, message, categoryList);
    }
    @RequestMapping(value = "updateCategoryById", method = RequestMethod.GET)
    public ResModel updateCategoryById( String id,String categoryname) {
        Category category = new Category();
        category.setCategoryname(categoryname);
        category.setId(id);
        boolean state =categoryService.updateCategory(category);
        String code = "200";
        String message = "";

        if(state){
            message="更新成功!";
        }else{
            message="更新失败!";
        }
        return new ResModel(code, message, state);
    }
}
