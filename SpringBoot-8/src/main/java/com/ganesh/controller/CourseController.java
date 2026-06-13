package com.ganesh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CourseController {
	
	@GetMapping("/enroll")
	public String getEndrollmentForm() {
		
		return "endrollment-form";
	}

}
