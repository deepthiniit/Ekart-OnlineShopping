package com.niit.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.model.Category;

@Repository("categoryDao")
public interface CategoryDao {

	public void insertCategory(Category category);
	public List<Category> retrieve();
	public Category findByCatId(int cid);
	public void removecategory(Category catg);
	public Category getcatbyname(String catname);
	public Category list();
}