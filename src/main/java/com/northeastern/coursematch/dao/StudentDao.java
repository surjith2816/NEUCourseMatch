package com.northeastern.coursematch.dao;

import org.springframework.data.repository.CrudRepository;

import com.northeastern.coursematch.model.Student;

public interface StudentDao extends CrudRepository<Student, Integer> {

}
