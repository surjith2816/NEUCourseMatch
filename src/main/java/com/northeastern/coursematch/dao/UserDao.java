package com.northeastern.coursematch.dao;

import org.springframework.data.repository.CrudRepository;

import com.northeastern.coursematch.model.User;

public interface UserDao extends CrudRepository<User, Integer> {

}