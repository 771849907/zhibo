package com.catlive.dao;

import com.catlive.entity.User;




import java.sql.SQLException;
import java.util.List;

public interface UserDao {
	 

	public void login(User user);

	public void addUser(User user);
	
	public List<User> allUsers();
	
	public void updateUser(User user,Integer id);

	public void deleteUser(Integer id);
	
	
}

