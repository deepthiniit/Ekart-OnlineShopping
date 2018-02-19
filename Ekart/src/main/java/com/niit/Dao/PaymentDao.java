package com.niit.Dao;

import org.springframework.stereotype.Repository;

import com.niit.model.Payment;

@Repository("paymentDao")
public interface PaymentDao {
	public void paymentsave(Payment payment);
	public void insertPayment(Payment payment);
	 

}