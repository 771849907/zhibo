package com.catlive.daolmpl;


import java.util.List;



import org.hibernate.Session;


import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.catlive.dao.UserDao;

import com.catlive.entity.User;



 
@Repository("userDao")
public class UserDaoImpl implements UserDao {
 
	@Autowired
	private SessionFactory sessionFactory;
	
    public Session getSession() {
        return sessionFactory.getCurrentSession();
    }
	
	public void addUser(User user) {
		
		this.getSession().save(user);
 
	}

	@Override
	public void login(User user) {
		// TODO Auto-generated method stub
		
		
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List<User> allUsers() {
	
		Query query=this.getSession().createQuery("from User");
		List<User> users=query.list();
		
		System.out.println(users);
		return users;
	}
	
	@Override
	public void updateUser(User user, Integer id) {
		User userQ = this.getSession().get(User.class, id);
		String upname=user.getName();
		String uppwd=user.getPassword();
		String upemail=user.getEmail();
		String upphone= user.getPhone();
		userQ.setName(upname);
		userQ.setPassword(uppwd);
		userQ.setEmail(upemail);
		userQ.setPhone(upphone);
		this.getSession().update(userQ);
	}
	
	@Override
	public void deleteUser(Integer id) {	
			User userQ=this.getSession().get(User.class, id);
//			User user=new User();
//			user.setId(id);
//		user.setName(userQ.getName());
//			user.setEmail(userQ.getEmail());
			this.getSession().delete(userQ);
		
	}
	
	
	


}

