package com.northeastern.coursematch.dao;

import org.springframework.data.repository.CrudRepository;

import com.northeastern.coursematch.model.User;

public interface UserDAO extends CrudRepository<User, Integer> {

}