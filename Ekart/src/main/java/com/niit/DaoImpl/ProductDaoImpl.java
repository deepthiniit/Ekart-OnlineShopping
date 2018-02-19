package com.niit.DaoImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.ProductDao;
import com.niit.model.Product;

@Repository("productDao")
@Transactional
public class ProductDaoImpl implements ProductDao {
	@Autowired
	SessionFactory sessionFactory;
	
	public ProductDaoImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	@Transactional
	public void insertProduct(Product product)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.saveOrUpdate(product);
		session.getTransaction().commit();
		
	}
	@Transactional
	public List<Product> retrieve()
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		List<Product> li= session.createQuery("from Product").list();
		session.getTransaction().commit();
		return li;
	}
	@Transactional
	public Product findByPID(int pid)
	{
		Session session=sessionFactory.openSession();
		Product p=null;
		try
		{
			session.beginTransaction();
			p=(Product) session.get(Product.class,pid);
			session.getTransaction().commit();
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return p;
	}
/*@Transactional
	public Product findByPID() {
		// TODO Auto-generated method stub
		return null;
	}*/
@Transactional
	public List<Product> getProdByCatId(int cid)
	{
		Session session=sessionFactory.openSession();
		List<Product> plist=null;
		try
		{
			session.beginTransaction();
			plist=session.createQuery("from Product where cid="+cid).list();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return plist;
	}
@Transactional
	public void update(Product p)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.update(p);
		session.getTransaction().commit();
	}
/*@Transactional
	public void deleteProd(int pid)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		
		Product p=session.get(Product.class,pid);
		session.delete(p);
		session.getTransaction().commit();
	}*/

@Transactional
public void removeproduct(Product pod)
{
	Session session=sessionFactory.openSession();
	session.beginTransaction();
	session.delete(pod);
	session.getTransaction().commit();
	
}
public Product getProdByCatId(String id) {

	return null;
}

	
}