package com.niit.DaoImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.SupplierDao;
import com.niit.model.Supplier;

@Repository("supplierDao")
@Transactional
public class SupplierDaoImpl implements SupplierDao {
	@Autowired
	private SessionFactory sessionFactory;

public SupplierDaoImpl()
{
	System.out.println(" default");
}
	public SupplierDaoImpl(SessionFactory sessionFactory) {
     System.out.println("parameterised ");
		this.sessionFactory = sessionFactory;
	}
	@Transactional
	public void insertSupplier(Supplier supplier) {
		Session session = sessionFactory.openSession();

		session.beginTransaction();
		session.saveOrUpdate(supplier);
		session.getTransaction().commit();
	}
	@Transactional
	public List<Supplier> retrieve()
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		List<Supplier> li=session.createQuery("from Supplier").list();
		session.getTransaction().commit();
		return li;
	}
	@Transactional
	public Supplier findBySuppId(int sid)
	{
		Session session=sessionFactory.openSession();
		Supplier s =null;
		try
		{
		session.beginTransaction();
		s= session.get(Supplier.class, sid);
		session.getTransaction().commit();
	}
		catch(HibernateException e)
		{
			System.out.println(e.getMessage());
			session.getTransaction().rollback();
		}
		return s;	
		}
	@Transactional
	public Supplier getsuppbyname(String suppName)
	{
		String s="from Supplier where supplierName='"+suppName+"'";
		Query q=sessionFactory.getCurrentSession().createQuery(s);
		List<Supplier> sup=q.list();
		if(sup!=null&&!sup.isEmpty())
			return sup.get(0);
		else
		return null;
	}

	@Transactional
	public void removesupplier(Supplier sup)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.delete(sup);
		session.getTransaction().commit();
		
	}
	
	
	

}