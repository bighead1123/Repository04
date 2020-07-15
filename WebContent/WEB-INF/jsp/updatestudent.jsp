<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.pzh.po.Student" %>
<%@ page import="com.pzh.service.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>更新学生信息</title>
<style type="text/css">
	label {display:inline-block; width: 10em; margin-right: 1em; text-align: right; margin-top:10px;}
</style>
</head>

	<form action="${pageContext.request.contextPath }/updateStudentById" method="post">
		<center>
			<h2>需要修改的学生信息为：</h2>
			<label >Id(不可修改):</label><input type="text" value="${student.id}" name="Id" readonly="readonly"/><br/>
			<label >姓名:</label><input type="text" value="${student.name}" name="name"/><br/>
			<label >年龄:</label><input type="text" value="${student.age}" name="age"/><br/>
			<label >性别:</label><input type="text" value="${student.gender}" name="gender"/><br/>
			<label >学号:</label><input type="text" value="${student.number}" name="number"/><br/>
			<label >寝室:</label><input type="text" value="${student.address}" name="address"/><br/>
			<label >年级:</label><input type="text" value="${student.status}" name="status"/><br/>
			<label >确认修改？</label><input type="submit" value="确认修改">
			
		</center>
			<br><br><br>
	</form>
</html>