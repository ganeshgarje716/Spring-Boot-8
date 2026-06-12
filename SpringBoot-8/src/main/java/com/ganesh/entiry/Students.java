package com.ganesh.entiry;

import jakarta.persistence.Entity;
import lombok.Data;

@Entity
@Data
public class Students {
	
	
	private Integer id;
	
	private String name;
	
	private String course;
	
	private String gender;
	
	private String[] timings;
	
	private String email;
	
	private String mobileNo;

}
