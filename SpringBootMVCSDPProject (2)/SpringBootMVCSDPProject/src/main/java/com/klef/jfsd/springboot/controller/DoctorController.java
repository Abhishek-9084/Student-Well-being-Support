package com.klef.jfsd.springboot.controller;

import org.springframework.ui.Model;

import com.klef.jfsd.springboot.model.Appointment;
import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.service.AppointmentService;
import com.klef.jfsd.springboot.service.DoctorService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class DoctorController {

    @Autowired
    private AppointmentService appointmentService;

    @Autowired
    private DoctorService doctorService;

    // Show doctor's appointments
    @GetMapping("viewdoctorappointments")
    public ModelAndView viewDoctorAppointments(@RequestParam("doctorId") int did) {
        ModelAndView mv = new ModelAndView("viewdoctorappointments");
        Doctor doctor = doctorService.getDoctorById(did);

        if (doctor != null) {
            List<Appointment> appointments = appointmentService.getAppointmentsForDoctor(doctor);
            mv.addObject("appointments", appointments);
        }
        return mv;
    }

    // Update appointment status (e.g., Approved or Rejected)
    @PostMapping("updateappointmentstatus")
    public String updateAppointmentStatus(@RequestParam("appointmentId") int appointmentId,
                                          @RequestParam("status") String status) {
        String message = appointmentService.updateAppointmentStatus(appointmentId, status);
        return "redirect:/viewdoctorappointments?doctorId=" + appointmentId + "&message=" + message;
    }
    @GetMapping("/viewalldoctors")
    public String viewAllDoctors(Model model) {
        List<Doctor> doctors = doctorService.getAllDoctors();  // Fetch the list of doctors
        model.addAttribute("doctors", doctors);  // Add the list to the model
        return "viewalldoctors";  // JSP name for displaying the doctors
    }
}
