package com.hunilee;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hunilee.dao.UserDao;
import com.hunilee.domain.User;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath*:/spring-*.xml")
public class test {
   @Autowired
   UserDao userDao;
   
   @Test
   public void test() {
	   User user = new User();
	   user.setUsername("张三");
	   userDao.findByUsername("张三");
	   System.out.println(userDao);
	   System.out.println(user);
   }
}
