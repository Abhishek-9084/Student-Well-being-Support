package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {

    @Autowired
    private StudentService studentService;

    @GetMapping("/")
    public ModelAndView home() {
        return new ModelAndView("home");
    }

    @GetMapping("studentreg")
    public ModelAndView studentreg() {
        return new ModelAndView("studentreg");
    }

    @GetMapping("studenthome")
    public ModelAndView studenthome() {
        return new ModelAndView("studenthome");
    }

    @GetMapping("studentprofile")
    public ModelAndView studentprofile() {
        return new ModelAndView("studentprofile");
    }

    @PostMapping("insertstudent")
    public ModelAndView insertstudent(HttpServletRequest request) {
        String name = request.getParameter("sname");
        String gender = request.getParameter("sgender");
        String dob = request.getParameter("sdob");
        String email = request.getParameter("semail");
        String password = request.getParameter("spwd");
        String location = request.getParameter("slocation");
        String contact = request.getParameter("scontact");

        Student student = new Student();
        student.setName(name);
        student.setGender(gender);
        student.setDateofbirth(dob);
        student.setEmail(email);
        student.setPassword(password);
        student.setLocation(location);
        student.setContact(contact);

        String message = studentService.studentRegistration(student);

        ModelAndView mv = new ModelAndView("regsuccess");
        mv.addObject("message", message);
        return mv;
    }

    @GetMapping("studentlogin")
    public ModelAndView studentlogin() {
        return new ModelAndView("studentlogin");
    }

    @PostMapping("checkstudentlogin")
    public ModelAndView checkstudentlogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        String semail = request.getParameter("semail");
        String spwd = request.getParameter("spwd");

        Student student = studentService.checkStudentLogin(semail, spwd);

        if (student != null) {
            HttpSession session = request.getSession();
            session.setAttribute("student", student);
            mv.setViewName("studenthome");
        } else {
            mv.setViewName("studentlogin");
            mv.addObject("message", "Login Failed");
        }
        return mv;
    }

    @GetMapping("updateprofile")
    public ModelAndView updateprofile() {
        return new ModelAndView("updateprofile");
    }

    @PostMapping("update")
    public ModelAndView update(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("sid"));
        String name = request.getParameter("sname");
        String gender = request.getParameter("sgender");
        String dob = request.getParameter("sdob");
        String password = request.getParameter("spwd");
        String location = request.getParameter("slocation");
        String contact = request.getParameter("scontact");

        Student student = new Student();
        student.setId(id);
        student.setName(name);
        student.setGender(gender);
        student.setDateofbirth(dob);
        student.setPassword(password);
        student.setLocation(location);
        student.setContact(contact);

        studentService.updateStudent(student);

        return new ModelAndView("studentlogin");
    }

    @GetMapping("studentlogout")
    public ModelAndView studentlogout() {
        return new ModelAndView("studentlogout");
    }
}
