package com.klef.jfsd.springboot.controller;

import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.DoctorService;
import com.klef.jfsd.springboot.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.security.Principal;
import java.time.LocalDateTime;
import java.util.List;

@Controller
public class AppointmentController {

    @Autowired
    private DoctorService doctorService;  // Injecting the DoctorService to get the list of doctors

    @Autowired
    private StudentService studentService;  // Injecting the StudentService to handle student operations

    // Handle GET request to show the book appointment page
    @GetMapping("/book-appointment")
    public String showBookAppointmentPage(Model model) {
        // Fetch doctors from the service layer
        List<Doctor> doctors = doctorService.getAllDoctors();
        model.addAttribute("doctors", doctors);  // Add the doctors list to the model
        return "book-appointment";  // Points to the JSP file (book-appointment.jsp)
    }

    // Handle POST request to submit the appointment form
    @PostMapping("/submit-appointment")
    public String bookAppointment(@RequestParam int doctorId, @RequestParam String appointmentTime, Principal principal) {
        // Retrieve the logged-in student based on email (using Principal)
        Student student = studentService.getStudentByEmail(principal.getName());  // Assuming the student is logged in

        // Convert the appointmentTime string to LocalDateTime
        LocalDateTime appointmentDateTime = LocalDateTime.parse(appointmentTime);

        // Create and save the appointment using the studentService
        studentService.bookAppointment(student.getId(), doctorId, appointmentDateTime);

        // Redirect to the appointments page after booking the appointment
        return "redirect:/appointments";  // Redirect to a page displaying the student's appointments
    }
}
