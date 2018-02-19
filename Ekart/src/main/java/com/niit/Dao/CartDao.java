package com.niit.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.model.Cart;
import com.niit.model.Product;

@Repository("cartDao")
public interface CartDao {
public void insertCart(Cart cart);
	/*public Cart saveOrUpdate(int id);*/
	public Cart delete(int id);
	public List<Cart> listbyuser(String usrname);
	public void removecartitem(Cart cit);
	//public Cart findByPID(int cartproductid);

}