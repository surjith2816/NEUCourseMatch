package com.northeastern.coursematch.model;

import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Professor extends User{

//	@Id
//	private int pid;

	private String professor_name;
	
	
	
	public Professor(String name, String role, String email ,String password) {
		
		this.professor_name = name;
		this.setRole(role);
		this.setEmail(email);
		this.setPassword(password);
	}
	
	
	public String getName() {
		return professor_name;
	}


	public void setName(String name) {
		this.professor_name = name;
	}


	public Professor() {
		
	}
	
//	public Professor(int id, String name, String email, String password,String role) {
//		super(id,name, email, password, role );
////		this.pid = pid;
//	}

	
//	public int getPid() {
//		return pid;
//	}
//
//	public void setPid(int pid) {
//		this.pid = pid;
//	}
//	
	
}
