package com.niit.DaoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.OrderDao;
import com.niit.model.Category;
import com.niit.model.Orders;
@SuppressWarnings("unchecked")
@Repository("orderDao")
@Transactional
public class OrderDaoImpl implements OrderDao {
	@Autowired
	SessionFactory sessionFactory;
	
	public OrderDaoImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	@Transactional
	public void insertOrder(Orders order) 
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.persist(order);
		session.getTransaction().commit();
		
	}
	@Transactional
	public List<Orders> retrieve() {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		List<Orders> li= session.createQuery("from Orders").list();
		session.getTransaction().commit();
		return li;
	}
	
	
}