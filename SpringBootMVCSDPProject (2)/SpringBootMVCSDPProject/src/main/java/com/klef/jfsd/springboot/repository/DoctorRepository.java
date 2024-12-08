package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.jfsd.springboot.model.Doctor;

public interface DoctorRepository extends JpaRepository<Doctor, Integer> 
{
	

}
