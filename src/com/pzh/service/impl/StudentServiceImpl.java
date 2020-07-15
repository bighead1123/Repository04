package com.pzh.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.pzh.dao.StudentDao;
import com.pzh.po.Student;
import com.pzh.service.StudentService;
@Service

public class StudentServiceImpl implements StudentService {
	
	@Autowired
	private StudentDao studentdDao;
	
	public void setStudentdDao(StudentDao studentdDao) {
		this.studentdDao = studentdDao;
	}

	@Override
	public Student findStudentById(Integer id) {
		// TODO �Զ����ɵķ������
		return this.studentdDao.findStudentById(id);
		
	}

	@Override
	/*public void deleteStudentById(Integer id) {
		// TODO �Զ����ɵķ������
		studentdDao.deleteStudentById(id);
		
	}*/
	public int deleteStudentById(Integer id){
		int row= studentdDao.deleteStudentById(id);
		
		System.out.println(row);
		return row;
	
	}
	
	public void updateStudentById(Student student){
		
		studentdDao.updateStudentById(student);
	}
	
	public void addStudent(Student student){
		
		studentdDao.addStudent(student);
	}
	public List<Student> findall(){
		return this.studentdDao.findall();
	}
	

}
