package com.northeastern.coursematch.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.northeastern.coursematch.dao.ProfessorDao;
import com.northeastern.coursematch.dao.StudentDao;
import com.northeastern.coursematch.model.Professor;
import com.northeastern.coursematch.model.Student;
import com.northeastern.coursematch.model.User;

@Service
public class ProfessorService {
	private final ProfessorDao professordao;
	 
	@Autowired
	    public ProfessorService(ProfessorDao professordao) {
	        this.professordao = professordao;
	    }

	    public void saveProfessor(Professor professor) {
	    	professordao.save(professor);
	    }

	    public Professor getProfessorById(int userId) {
	        return professordao.findById(userId).orElse(null);
	    }

	    public void deleteProfessor(int userId) {
	    	professordao.deleteById(userId);
	    }
	    
	    

}
