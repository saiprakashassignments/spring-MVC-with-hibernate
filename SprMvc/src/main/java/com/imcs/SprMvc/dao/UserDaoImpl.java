package com.imcs.SprMvc.dao;

import java.util.List;

import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.imcs.SprMvc.model.User;

@Repository
public class UserDaoImpl implements UserDao {

   @Autowired
   private SessionFactory sessionFactory;

   @Override
   public void save(User user) {
      sessionFactory.getCurrentSession().save(user);
   }

   @Override
   public List<User> list() {
      @SuppressWarnings("unchecked")
      Query query =  sessionFactory.getCurrentSession().createQuery("from User");
      try {
    	    List<User> lst= query.list();
    	    
    	    return lst;
    	      }
    	      catch(NoResultException nre) {
    	    	  return null;
    	      }
   }
   
   @Override
   public User find(String name) {
      @SuppressWarnings("unchecked")
      Query query =  sessionFactory.getCurrentSession().createQuery("from User where name=:name");
      query.setParameter("name", name);
      try {
    List<User> lst= query.list();
    User u1=null;
    for(User u:lst) {
    	 u1=u;
    }
    return u1;
      }
      catch(NoResultException nre) {
    	  return null;
      }
   }

}
