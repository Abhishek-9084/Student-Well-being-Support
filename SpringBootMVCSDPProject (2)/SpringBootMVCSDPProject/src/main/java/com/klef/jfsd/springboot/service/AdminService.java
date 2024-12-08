package com.klef.jfsd.springboot.service;

import java.util.List;


import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Appointment;
import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.model.Student;

public interface AdminService 
{

	public List<Student> viewAllStudents();
	public Admin checkAdminLogin(String uname,String pwd);
	public long studentcount();
	
	public String deleteStudent(int id);
	public Student displayStudentById(int id);
	
	// image upload & display operation
	
	public String addDoctor(Doctor doctor);
	public List<Doctor> viewAllDoctors();
	public Doctor displayDoctorById(int did);
	
	// View all appointments
    List<Appointment> getAllAppointments();


    // Delete doctor
    public String deleteDoctor(int did);
    
    // Update doctor's details
    public String updateDoctor(Doctor doctor);

}
