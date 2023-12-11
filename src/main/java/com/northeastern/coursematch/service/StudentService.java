package com.northeastern.coursematch.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.northeastern.coursematch.dao.StudentDao;
import com.northeastern.coursematch.dao.UserDao;
import com.northeastern.coursematch.model.Student;
import com.northeastern.coursematch.model.User;

@Service
public class StudentService {
	private final StudentDao studentdao;
	 
	@Autowired
	    public StudentService(StudentDao studentdao) {
	        this.studentdao = studentdao;
	    }

	    public void saveStudent(Student student) {
	    	studentdao.save(student);
	    }

	    public User getStudentById(int userId) {
	        return studentdao.findById(userId).orElse(null);
	    }

	    public void deleteStudent(int userId) {
	    	studentdao.deleteById(userId);
	    }

	    // Other business logic methods...
	

}
