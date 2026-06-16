package com.ganesh.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ganesh.entiry.Students;

public interface StudentsRepository extends JpaRepository<Students, Integer>{
	

	Students findByEmailAndMobileNo(String email, String mobileNo);
	
}
