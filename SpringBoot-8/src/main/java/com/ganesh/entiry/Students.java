package com.ganesh.entiry;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class Students {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	private String name;
	
	private String course;
	
	private String gender;
	
	private String[] timings;
	
	private String email;
	
	private String mobileNo;
	
	private String address;
	
	private Double courseFees;
	

}
