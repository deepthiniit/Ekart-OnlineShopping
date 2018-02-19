package com.niit.DaoImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.CategoryDao;
import com.niit.model.Category;

@Repository("categoryDao")
@Transactional
public class CategoryDaoImpl implements CategoryDao{

	@Autowired
	private SessionFactory sessionFactory;

public CategoryDaoImpl()
{
	System.out.println(" default");
}
	public CategoryDaoImpl(SessionFactory sessionFactory) {
     System.out.println("parameterised ");
		this.sessionFactory = sessionFactory;
	}
	@Transactional
	public void insertCategory(Category category) {
		Session session = sessionFactory.openSession();

		session.beginTransaction();
		session.saveOrUpdate(category);
		session.getTransaction().commit();
	}
	@Transactional
	public Category getcatbyname(String catname)
	{
		String s="from Category where cname='"+catname+"'";
		Query q=sessionFactory.getCurrentSession().createQuery(s);
		List<Category> cat=q.list();
		if(cat!=null&&!cat.isEmpty())
			return cat.get(0);
		else
		return null;
	}
	@Transactional
	public List<Category> retrieve()
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		List<Category> li= session.createQuery("from Category").list();
		session.getTransaction().commit();
		return li;
	}
	@Transactional
	public Category findByCatId(int cid)
	{
		Session session=sessionFactory.openSession();
		Category c=null;
		try
		{
			session.beginTransaction();
			c=(Category) session.get(Category.class, cid);
			session.getTransaction().commit();
		}
		catch(HibernateException e)
		{
			System.out.println(e.getMessage());
			session.getTransaction().rollback();
		}
		return c;
	}

	@Transactional
	public void removecategory(Category catg)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.delete(catg);
		session.getTransaction().commit();
		
	}
	public Category list() {
		// TODO Auto-generated method stub
		return null;
	}
}