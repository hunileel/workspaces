package com.hunilee.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hunilee.dao.UserDao;
import com.hunilee.domain.User;

/**
 * ÓÃ»§¿ØÖÆÆ÷
 */
@Controller
@RequestMapping(value = "/user")
public class UserController {
 @Resource
 private UserDao userDao;
 @RequestMapping("/view")
 public String view() {
  return "main/login";
 }
 @RequestMapping("/indexview")
 public String index() {
  return "main/index";
 }
 @RequestMapping(value = "/login", method = RequestMethod.POST)
 @ResponseBody
 public ModelAndView login(User model, HttpSession session) {
	System.out.println("-------------------");
	 System.out.println(model.getUsername());
  User user = userDao.findByUsername(model.getUsername());
  System.out.println(user.getUsername());
  if (user == null || !user.getPassword().equals(model.getPassword())) {
   return new ModelAndView("redirect:/login.jsp");
  } else {
   session.setAttribute("user", user);
   System.out.println(user.getUsername());
   ModelAndView mav = new ModelAndView();
   mav.setViewName("index");
   return mav;
  }
 }
}
