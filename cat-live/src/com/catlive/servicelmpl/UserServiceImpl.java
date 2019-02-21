package com.catlive.servicelmpl;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import org.springframework.stereotype.Repository;

import com.catlive.dao.UserDao;
import com.catlive.entity.User;
import com.catlive.service.UserService;

 
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
 
	@Autowired
	private UserDao userDao;
 
	@Override
	public void addUser(User user) {
		// TODO Auto-generated method stub
		userDao.addUser(user);
	}
	@Override
	public void loginUser(User user) {
		// TODO Auto-generated method stub
		userDao.login(user);
	}
	@Override
	public List<User> allUsers() {
		// TODO Auto-generated method stub
		List<User> allUsers=userDao.allUsers();
		return allUsers;
	}
	@Override
	public void updateUser(User user, Integer id) {
		userDao.updateUser(user, id);
		
	}
	
	@Override
	public void deleteUser(Integer id) {
		userDao.deleteUser(id);
		
	}
	
 
}

