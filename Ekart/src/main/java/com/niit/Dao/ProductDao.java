package com.niit.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.model.Product;

@Repository("productDao")
public interface ProductDao {
	public void insertProduct(Product product);
	public List<Product> retrieve();
	public Product findByPID(int Pid);
	public List<Product> getProdByCatId(int cid);
	
	public void update(Product p);
	public void removeproduct(Product pod);

}