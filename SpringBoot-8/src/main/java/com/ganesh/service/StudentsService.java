package com.ganesh.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.ganesh.entiry.Students;
import com.ganesh.repository.StudentsRepository;

public class StudentsService {
	
	
	@Autowired
	StudentsRepository repository;
	
	
	public void saveStudent(Students student) {
		
		repository.save(student);
	}

}
