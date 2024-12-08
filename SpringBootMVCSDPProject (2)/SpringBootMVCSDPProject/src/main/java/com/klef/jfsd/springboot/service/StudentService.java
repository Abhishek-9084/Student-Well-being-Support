package com.klef.jfsd.springboot.service;

import java.time.LocalDateTime;
import java.util.List;

import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.model.Student;

public interface StudentService
{
	public String studentRegistration(Student student);
	public Student checkStudentLogin(String email, String password);
	
	public String updateStudent(Student student);
	
	public Student getStudentByEmail(String email);
	
	// New method to fetch all doctors
    public List<Doctor> getAllDoctors();

    // New method to book an appointment
    public String bookAppointment(int studentId, int doctorId, LocalDateTime appointmentTime);

}
