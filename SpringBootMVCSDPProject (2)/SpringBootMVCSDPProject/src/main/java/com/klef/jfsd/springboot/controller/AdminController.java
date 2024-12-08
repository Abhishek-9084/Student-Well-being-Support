package com.klef.jfsd.springboot.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;

    @GetMapping("adminlogin")
    public ModelAndView adminlogin() {
        return new ModelAndView("adminlogin");
    }

    @GetMapping("adminhome")
    public ModelAndView adminhome() {
        ModelAndView mv = new ModelAndView("adminhome");
        long count = adminService.studentcount();
        mv.addObject("count", count);
        return mv;
    }

    @PostMapping("checkadminlogin")
    public ModelAndView checkadminlogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        String auname = request.getParameter("auname");
        String apwd = request.getParameter("apwd");

        Admin admin = adminService.checkAdminLogin(auname, apwd);

        if (admin != null) {
            mv.setViewName("adminhome");
            long count = adminService.studentcount();
            mv.addObject("count", count);
        } else {
            mv.setViewName("adminloginfail");
            mv.addObject("message", "Login Failed");
        }
        return mv;
    }

    @GetMapping("viewallstudents")
    public ModelAndView viewallstudents() {
        ModelAndView mv = new ModelAndView("viewallstudents");
        long count = adminService.studentcount();
        mv.addObject("count", count);
        List<Student> students = adminService.viewAllStudents();
        mv.addObject("studentlist", students);
        return mv;
    }

    @GetMapping("deletestudent")
    public ModelAndView deletestudent() {
        ModelAndView mv = new ModelAndView("deletestudent");
        List<Student> students = adminService.viewAllStudents();
        mv.addObject("studentlist", students);
        return mv;
    }

    @GetMapping("delete")
    public String delete(@RequestParam int id) {
        adminService.deleteStudent(id);
        return "redirect:/deletestudent";
    }

    @GetMapping("adddoctor")
    public String adddoctor() {
        return "adddoctor";
    }

    @PostMapping("insertdoctor")
    public ModelAndView insertdoctor(HttpServletRequest request, @RequestParam("dimage") MultipartFile file)
            throws IOException, SerialException, SQLException {
        String name = request.getParameter("dname");
        String gender = request.getParameter("dgender");
        String email = request.getParameter("demail");
        double cost = Double.parseDouble(request.getParameter("dcost"));
        String about = request.getParameter("dabout");
        byte[] bytes = file.getBytes();
        SerialBlob blob = new SerialBlob(bytes);

        Doctor doctor = new Doctor();
        doctor.setName(name);
        doctor.setGender(gender);
        doctor.setEmail(email);
        doctor.setCost(cost);
        doctor.setAbout(about);
        doctor.setImage(blob);

        String message = adminService.addDoctor(doctor);

        ModelAndView mv = new ModelAndView("doctorsuccess");
        mv.addObject("message", message);
        return mv;
    }

    @GetMapping("/admmin/viewalldoctors")
    public ModelAndView viewalldoctors() {
        ModelAndView mv = new ModelAndView("viewalldoctors");
        List<Doctor> doctors = adminService.viewAllDoctors();
        mv.addObject("doctors", doctors);
        return mv;
    }

    @GetMapping("displaydoctorimage")
    public ResponseEntity<byte[]> displaydoctorimage(@RequestParam int id) throws SQLException {
        Doctor doctor = adminService.displayDoctorById(id);
        byte[] imageBytes = doctor.getImage().getBytes(1, (int) doctor.getImage().length());
        return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
    }
}
