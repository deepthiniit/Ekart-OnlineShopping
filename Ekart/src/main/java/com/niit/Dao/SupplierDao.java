package com.niit.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.model.Supplier;

@Repository("supplierDao")
public interface SupplierDao {
	public void insertSupplier(Supplier supplier);
	public List<Supplier> retrieve();
	public Supplier findBySuppId(int sid);
	public void removesupplier(Supplier sup);
	public Supplier getsuppbyname(String suppName);
}
