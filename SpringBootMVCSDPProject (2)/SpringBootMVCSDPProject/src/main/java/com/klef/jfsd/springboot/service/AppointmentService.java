package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Appointment;
import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.model.Student;

public interface AppointmentService 
{
	
	public String bookAppointment(Student student, Doctor doctor, String appointmentTime);
    public List<Appointment> getAppointmentsForDoctor(Doctor doctor);
    public List<Appointment> getAppointmentsForStudent(Student student);
    public String updateAppointmentStatus(int appointmentId, String status);

}
