package com.pzh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pzh.po.Student;
import com.pzh.service.StudentService;

@Controller
public class StudentController {
	@Autowired
	private StudentService studentService;
	
public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}
	//	根据id查询学生信息
	@RequestMapping("/findStudentById")
	public String findStudentById(Integer id,Model model){
		Student student = studentService.findStudentById(id);
		model.addAttribute("student", student);
		return "student";
	}

	//删除信息
	@RequestMapping("/deleteStudentById")
	
/*	public String deleteStudentById(Integer id,Model model){
		studentService.deleteStudentById(id);
		return "success";
	}*/
	public String deleteStudentById(Integer id,Model model){
		int row=studentService.deleteStudentById(id);
		if (row>0)
			return "success";
		else
			return "fail";
	}
	//修改信息
	@RequestMapping("/updateStudentById")
	public String updateStudentById(Student student,Model model){
		studentService.updateStudentById(student);
		return "success";
	}

	@RequestMapping("/addStudent")
	public String addStudentById(Student student,Model model){
		studentService.addStudent(student);
		return "success";
	}

	@RequestMapping("/findall")
	public ModelAndView stuList(){
		ModelAndView modelAndView=new ModelAndView();
		List<Student> list;
		list=studentService.findall();
		modelAndView.addObject("students",list);
		modelAndView.setViewName("studentindex");
		return modelAndView;
	}
	
	@RequestMapping("/addstudentindex")
	public String addstudentindex(){
		return "addstudent";
	}
	
	@RequestMapping("/updatestudent")
	public String updateStudent(Integer id,Model model){
		Student student = studentService.findStudentById(id);
		model.addAttribute("student", student);
		return "updatestudent";
	}
}