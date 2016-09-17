package com.niit.collabration.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.niit.collabration.model.Forum;

@Repository("forumDAO")
public class ForumDAOImpl implements ForumDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	public ForumDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	@Transactional
	public List<Forum> list() {
		
		@SuppressWarnings("unchecked")
		List<Forum> listForum = (List<Forum>) 
		          sessionFactory.getCurrentSession()
				.createCriteria(Forum.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listForum;
	}
	@Transactional
	public void saveOrUpdate(Forum forum) {
		sessionFactory.getCurrentSession().saveOrUpdate(forum);
	}
	@Transactional
	public void delete(String Id) {
		Forum ForumToDelete = new Forum();
		ForumToDelete.setId(Id);
	
		sessionFactory.getCurrentSession().delete(ForumToDelete);
	}
	@Transactional
	public Forum get(String Id) {
		String hql = "from FORUM1 where Id=" + Id ;
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Forum> listForum = (List<Forum>) query.list();
		
		if (listForum != null && !listForum.isEmpty()) {
			return listForum.get(0);
		}
		
		return null;
	}

}
