package com.catlive.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.catlive.service.UserService;
import com.catlive.entity.User;

@Controller
@RequestMapping("/manager")

public class ManagerController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/userinfor.do")
	public String toUserJSP() {
		
		return "user";
		
	}
	@RequestMapping("/managerupdate.do")
	public ModelAndView updateUser(HttpServletRequest request) {
		String id=request.getParameter("id");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String email=request.getParameter("email");
		String phone = request.getParameter("phone");
		System.out.println("managerupdate:"+id+"    "+username);
		
		User user=new  User();
		user.setName(username);
		user.setPassword(password);
		user.setEmail(email);
		user.setPhone(phone);
		userService.updateUser(user, Integer.valueOf(id));	
		Map<String,String> map=new HashMap<String,String>();
		map.put("updateStatue", "修改成功");
		ModelAndView modelAndView=new ModelAndView("redirect:../manager/userinfor.do",map);
		return modelAndView;
		
	}
	
	@RequestMapping("/managerdelete.do")
	public ModelAndView deleteUser(HttpServletRequest request) {
		
		Integer id=Integer.valueOf(request.getParameter("deleteid"));
		System.out.println(id);
		userService.deleteUser(id);
		ModelMap modelMap = new ModelMap();
		modelMap.addAttribute("deleteStatue", "删除成功");
		ModelAndView modelAndView=new ModelAndView("redirect:../manager/userinfor.do", modelMap);
		return modelAndView;
		
	}

}
