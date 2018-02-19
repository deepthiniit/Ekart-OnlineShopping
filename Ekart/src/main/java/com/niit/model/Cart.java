package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Cart {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Transient
	private int total;
	
	private int cartproductid;
	private String cartproductName;
	private double cartprice;
	private String cartquantity;
	private String cartuserID;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getCartproductid() {
		return cartproductid;
	}
	public void setCartproductid(int i) {
		this.cartproductid = i;
	}
	public String getCartproductName() {
		return cartproductName;
	}
	public void setCartproductName(String cartproductName) {
		this.cartproductName = cartproductName;
	}
	public double getCartprice() {
		return cartprice;
	}
	public void setCartprice(double d) {
		this.cartprice = d;
	}
	public String getCartquantity() {
		return cartquantity;
	}
	public void setCartquantity(String cartquantity) {
		this.cartquantity = cartquantity;
	}
	public String getCartuserID() {
		return cartuserID;
	}
	public void setCartuserID(String cartuserID) {
		this.cartuserID = cartuserID;
	}
}