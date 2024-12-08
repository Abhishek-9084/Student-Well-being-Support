package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.repository.DoctorRepository;

import java.util.List;

@Service
public class DoctorServiceImpl implements DoctorService {

    @Autowired
    private DoctorRepository doctorRepository;

    @Override
    public List<Doctor> getAllDoctors() {
        return doctorRepository.findAll();
    }

    @Override
    public Doctor getDoctorById(int id) {
        return doctorRepository.findById(id).orElseThrow(() -> new RuntimeException("Doctor not found"));
    }

    @Override
    public String addDoctor(Doctor doctor) {
        doctorRepository.save(doctor);
        return "Doctor added successfully!";
    }

    @Override
    public String updateDoctor(Doctor doctor) {
        doctorRepository.save(doctor);
        return "Doctor updated successfully!";
    }

    @Override
    public String deleteDoctor(int id) {
        doctorRepository.deleteById(id);
        return "Doctor deleted successfully!";
    }
}
