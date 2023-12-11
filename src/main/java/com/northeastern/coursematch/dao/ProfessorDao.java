package com.northeastern.coursematch.dao;

import org.springframework.data.repository.CrudRepository;

import com.northeastern.coursematch.model.Professor;
import com.northeastern.coursematch.model.User;

public interface ProfessorDao extends CrudRepository<Professor, Integer> {

}
