package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Doctor;

import java.util.List;

public interface DoctorService {
    public List<Doctor> getAllDoctors();
    public Doctor getDoctorById(int id);
    public String addDoctor(Doctor doctor);
    public String updateDoctor(Doctor doctor);
    public String deleteDoctor(int id);
}
