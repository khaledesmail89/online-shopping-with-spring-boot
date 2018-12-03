package com.onlineshopping.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.onlineshopping.entity.Category;
import com.onlineshopping.service.CategoryService;

@Secured({ "ROLE_CUSTOMER" })
@RequestMapping("/category")
@Controller
public class CategoryController {

	@Autowired
	private CategoryService categoryService;

	@GetMapping("/search")
	public String getCategories(Model model) {

		List<Category> categoreis = categoryService.getCategoriesLAZY();
		System.out.println("All Categoriessssss: " + categoreis);
		model.addAttribute("categories", categoreis);
		return "index";
	}
}
