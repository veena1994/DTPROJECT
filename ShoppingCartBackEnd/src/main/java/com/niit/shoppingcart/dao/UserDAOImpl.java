package com.niit.shoppingcart.dao;



import java.util.List;



import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.model.User;
import com.niit.shoppingcart.model.UserDetails;



@Repository("userDAO")
public class UserDAOImpl  implements UserDAO{
	
	 Logger log = LoggerFactory.getLogger(UserDAOImpl.class);
	 
	 @Autowired
		private SessionFactory sessionFactory;


		public UserDAOImpl(SessionFactory sessionFactory) {
			try {
				this.sessionFactory = sessionFactory;
			} catch (Exception e) {
				log.error(" Unable to connect to db");
				e.printStackTrace();
			}
		}

		@Transactional
		public List<UserDetails> list() {
			@SuppressWarnings("unchecked")
			List<UserDetails> list = (List<UserDetails>) sessionFactory.getCurrentSession()
					.createCriteria(UserDetails.class)
					.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

			return list;
		}

		@Transactional
		public void saveOrUpdate(UserDetails user) {
			sessionFactory.getCurrentSession().saveOrUpdate(user);
		}
		
		/*@Transactional
		public void saveOrUpdate(UserDetails userDetails) {
			sessionFactory.getCurrentSession().saveOrUpdate(userDetails);
		}*/


		@Transactional
		public void delete(String id) {
			UserDetails user = new UserDetails();
			user.setId(id);
			sessionFactory.getCurrentSession().delete(user);
		}

		@Transactional
		public UserDetails get(String id) {
			String hql = "from UserDetails where id=" + "'"+ id+"'";
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
			
			@SuppressWarnings("unchecked")
			List<UserDetails> list = (List<UserDetails>) query.list();
			
			if (list != null && !list.isEmpty()) {
				return list.get(0);
			}
			
			return null;
		}
		
		@Transactional
		public boolean isValidUser(String id, String password, boolean isAdmin) {
			String hql = "from User where id= '" + id + "' and " + " password ='" + password+"'";
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
			
			@SuppressWarnings("unchecked")
			List<User> list = (List<User>) query.list();
			
			if (list != null && !list.isEmpty()) {
				System.out.println("Return True in isValidUser - UserDAOImpl");
			}
				return true;
			}
		

		public void saveOrUpdate(User user) {
			// TODO Auto-generated method stub
			
		}
		public boolean isAdmin(String name) {
			// TODO Auto-generated method stub
			if(name!= null  &&  name.matches("admin"))
					{
				        return true;
					}
			
			else
			return false;
		}

	}

	