package com.niit.collabration.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.collabration.model.Friends;

@Repository("friendsDAO")
public class FriendsDAOImpl implements FriendsDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public FriendsDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	@Transactional
	public List<Friends> list() {
		
		@SuppressWarnings("unchecked")
		List<Friends> listFriends = (List<Friends>) 
		          sessionFactory.getCurrentSession()
				.createCriteria(Friends.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listFriends;
	}
	@Transactional
	public void saveOrUpdate(Friends friends) {
		sessionFactory.getCurrentSession().saveOrUpdate(friends);
	}
	@Transactional
	public void delete(String Id) {
		Friends FriendsToDelete = new Friends();
		FriendsToDelete.setUserId(Id);
		sessionFactory.getCurrentSession().delete(FriendsToDelete);
	}
	@Transactional
	public Friends get(String Id) {
		String hql = "from FRIENDS where Id=" + "'"+ Id +"'" ;
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Friends> listFriends = (List<Friends>) query.list();
		
		if (listFriends != null && !listFriends.isEmpty()) {
			return listFriends.get(0);
		}
		
		return null;
	}

}
