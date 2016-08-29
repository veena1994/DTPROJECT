package com.niit.shoppingcart.dao;



import java.util.List;



import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.model.User;
import com.niit.shoppingcart.model.UserDetails;
import com.niit.shoppingcart.model.shipping;




@Repository("userdetailsDAO")
public class UserDetailsDAOImpl  implements UserDetailsDAO{
	@Autowired
	private SessionFactory sessionFactory;
	@Autowired
	private UserDetailsDAO userdao;

	public UserDetailsDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<UserDetails> list() {
		@SuppressWarnings("unchecked")
		List<UserDetails> list = (List<UserDetails>) sessionFactory.getCurrentSession()
				.createCriteria(UserDetails.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return list;
	}

	@Transactional
	public void saveOrUpdate(UserDetails userDetails) {
		sessionFactory.getCurrentSession().saveOrUpdate(userDetails);
	}

	@Transactional
	public void saveOrUpdate(shipping ship) {
		sessionFactory.getCurrentSession().saveOrUpdate(ship);
	}
	
	@Transactional
	public String  delete(String id) {
		UserDetails userDetails = new UserDetails();
		userDetails.setId(id);
		try {
			sessionFactory.getCurrentSession().delete(userDetails);
		} catch (HibernateException e) {
			e.printStackTrace();
			return e.getMessage();
			
		}
		return null;	
		}

	@Transactional
	public UserDetails get(String id) {
		String hql = "from UserDetails where id=" + "'"+id+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<UserDetails> list = (List<UserDetails>) query.list();
		
		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}
		
		return null;
	}
	@Transactional
	public UserDetails getByName(String name) {
		String hql = "from UserDetails where name=" + "'"+ name+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<UserDetails> list = (List<UserDetails>) query.list();
		
		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}
		
		return null;
	}

	@Transactional
	public boolean isCorrectUser(String name, String password) {
		
		
		
		System.out.println("in dao before iscorrect");
		String hql = "from USER_DETAILS where name= '" + name + "' and " + " password ='" + password+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		System.out.println(" after query");
		@SuppressWarnings("unchecked")
		List<UserDetails> list = (List<UserDetails>) query.list();
		
		if (list != null && !list.isEmpty()) {
			System.out.println("Return True in isValidUser - UserDAOImpl");
			return true;
		}
			return false;	
		
			}
		

	public boolean isUser(String name) {
		// TODO Auto-generated method stub
		return false;
	}
		
	
}

	
	