package com.hunilee.dao;

import com.hunilee.domain.User;

public interface UserDao {
	 public abstract User findByUsername(String username);
	}