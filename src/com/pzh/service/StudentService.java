package com.pzh.service;

import java.util.List;

import com.pzh.po.Student;

public interface StudentService {
	public Student findStudentById(Integer id);
//	public void deleteStudentById(Integer id);
	public int deleteStudentById(Integer id);
	public void updateStudentById(Student student);
	public void addStudent(Student student);
	public List<Student> findall();
}
