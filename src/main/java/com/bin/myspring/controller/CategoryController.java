package com.bin.myspring.controller;

import com.bin.myspring.entity.Category;
import com.bin.myspring.entity.ResModel;
import com.bin.myspring.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
}
