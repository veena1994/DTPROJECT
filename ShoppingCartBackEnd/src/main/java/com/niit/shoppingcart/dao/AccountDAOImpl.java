package com.niit.shoppingcart.dao;


import java.util.List;


import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.model.Account;
@Repository("accountDAO")
public class AccountDAOImpl  implements AccountDAO{ // missed to implement AccountDAO
	

	@Autowired
	private SessionFactory sessionFactory;


	public AccountDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public boolean trasfer(String id, int amount) {
		String hql = "update Account set amount = amount - " + amount + " where userID=" + "'"+ id;
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		if ( query.executeUpdate()>0)
		{
			return true;
		}
		else
		{
			return false;
		}
	
	}


	@Transactional
	public Account get(String id) {
		String hql = "from Account where userID=" + "'"+ id;
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Account> list = (List<Account>) query.list();
		
		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}
		
		return null;
	}
	
	




}

