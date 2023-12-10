package com.northeastern.coursematch.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.northeastern.coursematch.dao.UserDAO;
import com.northeastern.coursematch.model.User;

@Service
public class UserService {
	private final UserDAO userdao;
	 
	@Autowired
	    public UserService(UserDAO userdao) {
	        this.userdao = userdao;
	    }

	    public void saveUser(User user) {
	    	userdao.save(user);
	    }

	    public User getUserById(int userId) {
	        return userdao.findById(userId).orElse(null);
	    }

	    public void deleteUser(int userId) {
	    	userdao.deleteById(userId);
	    }

	    // Other business logic methods...
	
}
