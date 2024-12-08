package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Appointment;
import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.AppointmentRepository;
import com.klef.jfsd.springboot.repository.DoctorRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class AdminServiceImpl implements AdminService
{
    @Autowired
    private StudentRepository studentRepository;
    @Autowired
    private AdminRepository adminRepository;
    @Autowired
    private DoctorRepository doctorRepository;
    @Autowired
    private AppointmentRepository appointmentRepository;

    @Override
    public List<Student> viewAllStudents() {
        return studentRepository.findAll();
    }

    @Override
    public Admin checkAdminLogin(String uname, String pwd) {
        Admin admin = adminRepository.checkAdminLogin(uname, pwd);
        if (admin == null) {
            throw new RuntimeException("Invalid admin credentials");
        }
        return admin;
    }

    @Override
    public long studentcount() {
        return studentRepository.count();
    }

    @Override
    public String deleteStudent(int id) {
        try {
            studentRepository.deleteById(id);
            return "Student Deleted Successfully!";
        } catch (DataIntegrityViolationException e) {
            return "Cannot delete student as it is referenced in other records.";
        }
    }

    @Override
    public Student displayStudentById(int id) {
        return studentRepository.findById(id).orElseThrow(() -> new RuntimeException("Student not found"));
    }

    @Override
    public String addDoctor(Doctor doctor) {
        doctorRepository.save(doctor);
        return "Doctor Added Successfully";
    }

    @Override
    public List<Doctor> viewAllDoctors() {
        return doctorRepository.findAll();
    }

    @Override
    public Doctor displayDoctorById(int did) {
        return doctorRepository.findById(did).orElseThrow(() -> new RuntimeException("Doctor not found"));
    }

    @Override
    public List<Appointment> getAllAppointments() {
        return appointmentRepository.findAll();
    }

    @Override
    public String deleteDoctor(int did) {
        try {
            doctorRepository.deleteById(did);
            return "Doctor deleted successfully!";
        } catch (DataIntegrityViolationException e) {
            return "Cannot delete doctor as they are referenced in other records.";
        }
    }

    @Override
    public String updateDoctor(Doctor doctor) {
        doctorRepository.save(doctor);
        return "Doctor updated successfully!";
    }
}
