package com.niit.DaoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.CartDao;
import com.niit.model.Cart;
import com.niit.model.Product;

@Repository("cartDAO")
@Transactional
public class CartDaoImpl implements CartDao{

	
	@Autowired
	private SessionFactory sessionFactory;
	
	public CartDaoImpl()
	{
		System.out.println(" default");
	}
		public CartDaoImpl(SessionFactory sessionFactory) {
	     System.out.println("parameterised ");
			this.sessionFactory = sessionFactory;
		}
		@Transactional
		public void insertCart(Cart cart) {
			Session session = sessionFactory.openSession();
 
			session.beginTransaction();
			session.saveOrUpdate(cart);
			session.getTransaction().commit();
		}
		
		@Transactional
		public Cart delete(int id)
		{
			Session session=sessionFactory.openSession();
			session.beginTransaction();
			String s="from Cart where id="+id;
			Query q=session.createQuery(s);
			Cart c=(Cart) q.list().get(0);
			session.delete(c);
			session.getTransaction().commit();
			return null;
			
		}
		/*
		@Override
		public Cart saveOrUpdate(int id) {
			Session session=sessionFactory.openSession();
			session.beginTransaction();
			session.saveOrUpdate(id);
			session.getTransaction().commit();
			return null;
		}*/
		
		@SuppressWarnings("unchecked")
		@Transactional
		public List<Cart> listbyuser(String usrname) {

			{
				Session session=sessionFactory.openSession();
				session.beginTransaction();
				List<Cart> li= session.createQuery("from Cart where cartuserID='"+usrname+"'").list();
				session.getTransaction().commit();
			return li;
			}
		}
		
		
 
		@Transactional
		public void removecartitem(Cart cit)	
		{
			Session session=sessionFactory.openSession();
			session.beginTransaction();
			session.delete(cit);
			session.getTransaction().commit();
			
		}
}
