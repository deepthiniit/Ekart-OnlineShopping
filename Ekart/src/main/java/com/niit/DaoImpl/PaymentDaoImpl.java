package com.niit.DaoImpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.PaymentDao;
import com.niit.model.Payment;

@Repository("paymentDao")
public class PaymentDaoImpl implements PaymentDao {
	
	@Autowired
	PaymentDao paymentDao;
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void PaymentDAOImpl(SessionFactory sessionFactory)
	{

		this.sessionFactory = sessionFactory;

	}
	
	@Transactional
	public void paymentsave(Payment payment)

	{
		sessionFactory.getCurrentSession().save(payment);
	}
	
	
	public PaymentDaoImpl()
	{
		
	}
	
	 
	@Transactional
	public void insertPayment(Payment payment)
	{
		sessionFactory.getCurrentSession().save(payment);
	}
	 
}
