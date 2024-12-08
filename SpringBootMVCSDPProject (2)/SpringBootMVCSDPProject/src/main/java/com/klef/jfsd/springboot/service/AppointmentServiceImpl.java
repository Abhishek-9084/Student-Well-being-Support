package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Appointment;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.repository.AppointmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.time.LocalDateTime;
import java.util.List;

@Service
public class AppointmentServiceImpl implements AppointmentService {

    @Autowired
    private AppointmentRepository appointmentRepository;

    @Override
    public String bookAppointment(Student student, Doctor doctor, String appointmentTime) {
        LocalDateTime appointmentDateTime = LocalDateTime.parse(appointmentTime);
        Appointment appointment = new Appointment();
        appointment.setStudent(student);
        appointment.setDoctor(doctor);
        appointment.setAppointmentTime(appointmentDateTime);
        appointment.setStatus("Pending"); // Initial status

        appointmentRepository.save(appointment);
        return "Appointment booked successfully.";
    }

    @Override
    public List<Appointment> getAppointmentsForDoctor(Doctor doctor) {
        return appointmentRepository.findByDoctor(doctor);
    }

    @Override
    public List<Appointment> getAppointmentsForStudent(Student student) {
        return appointmentRepository.findByStudent(student);
    }

    @Override
    public String updateAppointmentStatus(int appointmentId, String status) {
        Appointment appointment = appointmentRepository.findById(appointmentId).orElse(null);
        if (appointment != null) {
            appointment.setStatus(status);
            appointmentRepository.save(appointment);
            return "Appointment status updated.";
        }
        return "Appointment not found.";
    }
}
