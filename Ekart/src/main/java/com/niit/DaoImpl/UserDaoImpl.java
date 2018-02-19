package com.niit.DaoImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.UserDao;
import com.niit.model.User;

@Repository("userDao")
public class UserDaoImpl implements UserDao {
	@Autowired
	private SessionFactory sessionFactory;
	@Autowired
  	public UserDaoImpl(SessionFactory sessionFactory) 
	{
		super();
     System.out.println("parameterised ");
		this.sessionFactory = sessionFactory;
	}
	@Transactional
	public void insertUser(User user) {
		Session session = sessionFactory.openSession();

		session.beginTransaction();
		session.save(user);
		session.persist(user);
		session.getTransaction().commit();
	}
	
	@Transactional
public List<User> getAllUsers() {
	       Session session = sessionFactory.openSession();
	        Query query = session.createQuery("from User");
	        List<User> usersDetail = query.list();

	        return usersDetail;
	    }
	public User findUserByEmail(String userEmail) {
		Session session=sessionFactory.openSession();
		 User u=null;
		 try
		 {
			 session.beginTransaction();
			 u= (User) session.get(User.class, userEmail);
			 session.getTransaction().commit();
		 }
	 catch(HibernateException e)
	 {
		 e.printStackTrace();
	 }
	 
	 return u;
	}


}