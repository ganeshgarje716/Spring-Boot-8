package com.ganesh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.ganesh.entiry.Students;
import com.ganesh.service.StudentsService;

@Controller
public class CourseController {
	
	@Autowired
	StudentsService service;
	
	
	@GetMapping("/enroll")
	public String getEndrollmentForm(Model model) {
		
		Students student=new Students();
				
		model.addAttribute("student", student);
		
		return "endrollment-form";
	}
	
	
	@PostMapping("/save")
	public String saveStudent(Students student, Model model) {

		service.saveStudent(student);
        
        model.addAttribute("msg", "Student Enrolled Sucessfully");
		
	    return "redirect:/enroll";
	}
	
	
	@GetMapping("/")
	public String homePage() {
		
		return "home";
	}
	
	
	@GetMapping("/courses")
	public String getCourses() {
		
		return "courses";
	}
	
	

}
