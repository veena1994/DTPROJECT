package com.niit.collabration.config;

import java.util.Properties;

import javax.sql.DataSource;


import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.collabration.model.Blog;
import com.niit.collabration.model.Event;
import com.niit.collabration.model.Forum;
import com.niit.collabration.model.User1;

@Configuration
@ComponentScan("com.niit.collabration")
@EnableTransactionManagement
public class ApplicationContextConfiguration {

	@Bean(name = "dataSource")
    public DataSource getOracleDataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
    	dataSource.setDriverClassName("oracle.jdbc.driver.OracleDriver");
    	dataSource.setUrl("jdbc:oracle:thin:@localhost:1521:xe");
    	dataSource.setUsername("system");
    	dataSource.setPassword("root");
    	
    	Properties connectionproperties = new Properties();
    	connectionproperties.setProperty("hibernate.show_sql", "true");
    	connectionproperties.setProperty("hibernate.dialect", "org.hibernate.dialect.Oracle10gDialect");
    	connectionproperties.setProperty("hibernate.hbm2ddl.auto", "update");
    	
    	return dataSource;
    }
	 private Properties getHibernateProperties() {
	    	Properties properties = new Properties();
	    	properties.put("hibernate.show_sql", "true");
	    	properties.put("hibernate.dialect", "org.hibernate.dialect.Oracle10gDialect");
	    	properties.put("hibernate.hbm2ddl.auto", "update");
	    	return properties;
	    }
	    
	    @Autowired
	    @Bean(name = "sessionFactory")
	    public SessionFactory getSessionFactory(DataSource dataSource) {
	    	LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
	    	sessionBuilder.addProperties(getHibernateProperties());
	    	sessionBuilder.addAnnotatedClasses(User1.class);
	    	sessionBuilder.addAnnotatedClasses(Event.class);
	    	sessionBuilder.addAnnotatedClasses(Blog.class);
	    	sessionBuilder.addAnnotatedClasses(Forum.class);
	    	return sessionBuilder.buildSessionFactory();
	    }
	    
	    @Autowired
		@Bean(name = "transactionManager")
		public HibernateTransactionManager getTransactionManager(
				SessionFactory sessionFactory) {
			HibernateTransactionManager transactionManager = new HibernateTransactionManager(
					sessionFactory);

			return transactionManager;
		}
}