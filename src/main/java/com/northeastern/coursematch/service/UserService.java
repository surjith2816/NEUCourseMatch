package com.northeastern.coursematch.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.northeastern.coursematch.dao.UserRepository;
import com.northeastern.coursematch.model.User;

@Service
public class UserService {
	private final UserRepository userRepository;
	 
	@Autowired
	    public UserService(UserRepository userRepository) {
	        this.userRepository = userRepository;
	    }

	    public void saveUser(User user) {
	        userRepository.save(user);
	    }

	    public User getUserById(int userId) {
	        return userRepository.findById(userId).orElse(null);
	    }

	    public void deleteUser(int userId) {
	        userRepository.deleteById(userId);
	    }

	    // Other business logic methods...
	
}
