package com.catlive.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.catlive.entity.User;
import com.catlive.service.UserService;
 
@Controller
@RequestMapping("/user")
public class UserController {
 
	@Autowired
	private UserService userService;
	
	/*
	 *注册
	 */
	
	@RequestMapping(value="register.do", method=RequestMethod.POST)
	
	public String add(HttpServletRequest request){
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		//System.out.println(username+" "+password);
	
		User user = new User();
		user.setName(username);
		user.setPassword(password);
		user.setPhone(phone);
		user.setEmail(email);
		
		userService.addUser(user);
		return "home";
	}
		
		/*
		 * 登录
		 */
		@RequestMapping(value="login.do", method=RequestMethod.POST)
		
		public String login(HttpServletRequest request,HttpSession session){
			
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			System.out.println("session:   "+username);
			session.setAttribute("username",username);
			User user = new User();
			user.setName(username);
			user.setPassword(password);
			
			//userService.loginUser(user);
			return "home-user";
		}
		
		/*
		 * 查询
		 */
		@ResponseBody
		@RequestMapping(value="show.do",method=RequestMethod.POST)
		
		public Map<String,Object> AllUsers(){
			List<User> users = userService.allUsers();
			List<Map<String,String>> listUsers = new ArrayList<>();
			for(User u:users){
				Map<String,String> mana = new HashMap<>();
				mana.put("id", u.getId().toString());
				mana.put("username", u.getName());
				mana.put("password", u.getPassword());
				mana.put("email", u.getEmail());
				mana.put("phone", u.getPhone());
				listUsers.add(mana);
			}
			
			Map<String,Object> map = new LinkedHashMap<String,Object>();
			map.put("total", users.size());
			map.put("rows", listUsers);
			return map;
		}
		/*
		 *管理员修改
		 */
		
		@RequestMapping(value="manageradd.do", method=RequestMethod.POST)
		
		public String manageradd(HttpServletRequest request){
			
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String phone = request.getParameter("phone");
			String email = request.getParameter("email");
			//System.out.println(username+" "+password);
		
			User user = new User();
			user.setName(username);
			user.setPassword(password);
			user.setPhone(phone);
			user.setEmail(email);
			
			userService.addUser(user);
			return "user";
		}

		}
		
	

