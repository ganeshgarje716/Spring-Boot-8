package com.ganesh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ganesh.entiry.StudentDto;
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

		Students savedStudent = service.saveStudent(student);
			
	    return "redirect:/dashboard/"+savedStudent.getId();
	}
	
	
	@GetMapping("/dashboard/{id}")
	public String getStudentDashboard(@PathVariable int id, Model model) {
		
		StudentDto student = service.getById(id);
		
		model.addAttribute("student", student);

		return "dashboard";
	}
	
	
	@GetMapping("/edit/{id}")
	public String editStudent(@PathVariable int id, Model model) {

	    Students student = service.getStudentById(id);

	    model.addAttribute("student", student);

	    return "edit";
	}
	
	
	@PostMapping("/edit")
	public String updateStudent(Students student) {

	    Students updatedStudent = service.saveStudent(student);

	    return "redirect:/dashboard/" + updatedStudent.getId();
	}
	
	
	@GetMapping("/")
	public String homePage() {
		
		return "home";
	}
	
	
	@GetMapping("/courses")
	public String getCourses() {
		
		return "courses";
	}
	
	
	@GetMapping("/students")
	public String getAllStudents(Model model) {
		
		List<StudentDto> Students = service.getAllStudents();
		
		model.addAttribute("students", Students);
		
		return "students";
	}
	
	
	@GetMapping("/login")
	public String loginPage() {

	    return "login";
	}

	@PostMapping("/login")
	public String login(@RequestParam String email, @RequestParam String mobileNo, Model model) {

	    Students student = service.login(email, mobileNo);

	    if(student != null) {

	        return "redirect:/dashboard/" + student.getId();
	    }

	    model.addAttribute("msg", "Invalid Email or Mobile Number");

	    return "login";
	}
	
	
	@GetMapping("/about")
	public String aboutPage() {

	    return "about";
	}
	

}
