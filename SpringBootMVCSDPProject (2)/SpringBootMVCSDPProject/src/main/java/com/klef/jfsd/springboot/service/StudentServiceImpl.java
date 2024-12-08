package com.klef.jfsd.springboot.service;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Appointment;
import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.AppointmentRepository;
import com.klef.jfsd.springboot.repository.DoctorRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService
{
    @Autowired
    private StudentRepository studentRepository;
    @Autowired
    private DoctorRepository doctorRepository;
    @Autowired
    private AppointmentRepository appointmentRepository;

    @Override
    public String studentRegistration(Student student) {
        studentRepository.save(student);
        return "Student Registered Successfully";
    }

    @Override
    public Student checkStudentLogin(String email, String password) {
        return studentRepository.checkStudentLogin(email, password);
    }

    @Override
    public String updateStudent(Student student) {
        Student existingStudent = studentRepository.findById(student.getId())
            .orElseThrow(() -> new RuntimeException("Student not found"));
        
        existingStudent.setContact(student.getContact());
        existingStudent.setDateofbirth(student.getDateofbirth());
        existingStudent.setGender(student.getGender());
        existingStudent.setLocation(student.getLocation());
        existingStudent.setName(student.getName());
        existingStudent.setPassword(student.getPassword());
        
        studentRepository.save(existingStudent);
        return "Student Updated Successfully!";
    }

    @Override
    public List<Doctor> getAllDoctors() {
        return doctorRepository.findAll();
    }

    @Override
    public String bookAppointment(int studentId, int doctorId, LocalDateTime appointmentTime) {
        // Check if both student and doctor exist
        Student student = studentRepository.findById(studentId).orElseThrow(() -> new RuntimeException("Student not found"));
        Doctor doctor = doctorRepository.findById(doctorId).orElseThrow(() -> new RuntimeException("Doctor not found"));
        
        Appointment appointment = new Appointment();
        appointment.setStudent(student);
        appointment.setDoctor(doctor);
        appointment.setAppointmentTime(appointmentTime);
        appointment.setStatus("Pending"); // Default status
        
        appointmentRepository.save(appointment);
        return "Appointment booked successfully!";
    }

	@Override
	public Student getStudentByEmail(String email) {
		return studentRepository.findByEmail(email);
	}
}
