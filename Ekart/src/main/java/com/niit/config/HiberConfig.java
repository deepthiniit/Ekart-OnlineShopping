package com.niit.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.model.Cart;
import com.niit.model.Category;
import com.niit.model.Orders;
import com.niit.model.Payment;
import com.niit.model.Product;
import com.niit.model.Supplier;
import com.niit.model.User;

@Configuration
@ComponentScan("com.niit")
@EnableTransactionManagement
public class HiberConfig {
	@Bean(name = "dataSource")

	public DataSource getDataSource(){

		DriverManagerDataSource dataSource = new DriverManagerDataSource();

		dataSource.setDriverClassName("org.h2.Driver");

		dataSource.setUrl("jdbc:h2:tcp://localhost/~/deev");

		

		dataSource.setUsername("sa");

		dataSource.setPassword("");

		return dataSource;

	}

	

	private Properties getHibernateProperties() {

		Properties properties = new Properties();

		properties.put("hibernate.show_sql", "true");

		properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");

		properties.put("hibernate.hbm2ddl.auto", "update");

		return properties;

	}

	

	@Autowired

	@Bean (name = "sessionFactory")

	public SessionFactory getSessionFactory(DataSource dataSource) {

		LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);

	    sessionBuilder.addProperties(getHibernateProperties());

	    sessionBuilder.addAnnotatedClass(User.class);
	    sessionBuilder.addAnnotatedClass(Category.class);
	    sessionBuilder.addAnnotatedClass(Supplier.class);
	    sessionBuilder.addAnnotatedClass(Product.class);
	    sessionBuilder.addAnnotatedClass(Orders.class);
	    sessionBuilder.addAnnotatedClass(Cart.class);
	    sessionBuilder.addAnnotatedClass(Payment.class);

	    System.out.println("Database Connected");

	    return sessionBuilder.buildSessionFactory();

	    

	}

	

	@Autowired

	@Bean(name = "transcationManager")

	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory)

	{

		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);

		return transactionManager;

	}
}