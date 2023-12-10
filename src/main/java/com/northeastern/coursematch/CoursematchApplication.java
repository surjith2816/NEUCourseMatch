package com.northeastern.coursematch;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = {"com.northeastern"})
public class CoursematchApplication {

	public static void main(String[] args) {
		SpringApplication.run(CoursematchApplication.class, args);
	}

}
