package com.catlive.service;

import java.util.List;




import com.catlive.entity.User;

public interface UserService {
	
	public void addUser(User user);
	
	public void loginUser(User user);
	
	public List<User> allUsers();
	
	public void updateUser(User user,Integer id);
	
	public void deleteUser(Integer id);


	
}
