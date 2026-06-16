package com.ganesh.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ganesh.entiry.StudentDto;
import com.ganesh.entiry.Students;
import com.ganesh.repository.StudentsRepository;

@Service
public class StudentsService {
	
	
	@Autowired
	StudentsRepository repository;
	
	
	
	public List<StudentDto> getAllStudents() {
		
		 List<Students> students = repository.findAll();
		 
		 List<StudentDto> dto=new ArrayList<>();
		 
		 for (Students student : students) {
			 
			 StudentDto updatedStudent=new StudentDto();
			 
			 updatedStudent.setId(student.getId());
		     updatedStudent.setName(student.getName());
			 updatedStudent.setCourse(student.getCourse());
			 updatedStudent.setGender(student.getGender());
			 updatedStudent.setTimings(Arrays.toString(student.getTimings()));
			 updatedStudent.setEmail(student.getEmail());
			 updatedStudent.setMobileNo(student.getMobileNo());
			 updatedStudent.setAddress(student.getAddress());
			 updatedStudent.setCourseFees(student.getCourseFees());
			 
			dto.add(updatedStudent);
		}
		 return dto; 
	}
	
	
	
	public StudentDto getById(int id) {
		
		Students student=null;
		Optional<Students> op = repository.findById(id);
		
		if (op.isPresent()) {
			
			 student=op.get();
		}
		
		StudentDto updatedStudent = new StudentDto();
		
		updatedStudent.setId(student.getId());
		updatedStudent.setName(student.getName());
		updatedStudent.setCourse(student.getCourse());
		updatedStudent.setGender(student.getGender());
		updatedStudent.setTimings(Arrays.toString(student.getTimings()));
		updatedStudent.setEmail(student.getEmail());
		updatedStudent.setMobileNo(student.getMobileNo());
		updatedStudent.setAddress(student.getAddress());
		updatedStudent.setCourseFees(student.getCourseFees());
		
		return updatedStudent;
	}
	
	
	public Students saveStudent(Students student) {
		
		if (student.getCourse().equalsIgnoreCase("Java Full Stack")) {
			
			student.setCourseFees(50000.00);
		}
		else if (student.getCourse().equalsIgnoreCase("Python Full Stack")) {
			
			student.setCourseFees(40000.00);
		}
        else if (student.getCourse().equalsIgnoreCase("Data Science")) {
			
			student.setCourseFees(70000.00);
		}
		
		Students savedStudents = repository.save(student);
		
		return savedStudents;
	}
	
	
	public Students getStudentById(int id) {

	    Optional<Students> op = repository.findById(id);

	    if(op.isPresent()) {
	        return op.get();
	    }

	    return null;
	}
	
	
	public Students updateStudent(Students student) {

	    return repository.save(student);
	}

}
