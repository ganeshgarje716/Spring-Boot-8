package com.ganesh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ganesh.entiry.Students;
import com.ganesh.repository.StudentsRepository;

@Service
public class StudentsService {
	
	
	@Autowired
	StudentsRepository repository;
	
	
	public void saveStudent(Students student) {
		
		if (student.getCourse().equalsIgnoreCase("Java Full Stack")) {
			
			student.setCourseFees(50000.00);
		}
		else if (student.getCourse().equalsIgnoreCase("Python Full Stack")) {
			
			student.setCourseFees(40000.00);
		}
        else if (student.getCourse().equalsIgnoreCase("Data Science")) {
			
			student.setCourseFees(70000.00);
		}
		
		repository.save(student);
	}

}
