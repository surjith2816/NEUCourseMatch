package com.northeastern.coursematch.model;

import java.util.List;

import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Student extends User {

	
		
	

	
	
	private String program; // drop down
	

	
	private String intake; // drop down
	
	public Student() {}
	

	public String getProgram() {
		return program;
	}

	public void setProgram(String program) {
		this.program = program;
	}


	public String getIntake() {
		return intake;
	}

	public void setIntake(String intake) {
		this.intake = intake;
	}
	
	
}
