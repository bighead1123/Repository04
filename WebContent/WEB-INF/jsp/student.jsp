<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<meta http-equiv="Context-Type" content="text/html;charset=UTF-8">
	<title>学生信息查询</title>
	<!-- CSS goes in the document HEAD or added to your external stylesheet -->
	<style type="text/css">
	table.gridtable {
		font-family: verdana,arial,sans-serif;
		font-size:11px;
		color:#333333;
		border-width: 1px;
		border-color: #666666;
		border-collapse: collapse;
	}
	table.gridtable th {
		border-width: 1px;
		padding: 8px;
		border-style: solid;
		border-color: #666666;
		background-color: #dedede;
	}
	table.gridtable td {
		border-width: 1px;
		padding: 8px;
		border-style: solid;
		border-color: #666666;
		background-color: #ffffff;
	}
	td
	{
    text-align:center;
	}
	</style>

</head>
<body>
<form action="${pageContext.request.contextPath }/findStudentById"
	  method="post">
	<div>
		<center>
			<h2>根据学生Id查询学生信息</h2>
			<p>
				需要查询的ID： <input type="text" name="id" /> <input type="submit"
																value="查询">
			</p>
		</center>
</form>
	<center>
	<h2>您查询的id为<span style="color:red">${student.id}</span>的信息如下：</h2>
	<table width="80%  border="1" class="gridtable" align="center" ">
		<tr>
			<th>姓名</th>
			<th>年龄</th>
			<th>性别</th>
			<th>学号</th>
			<th>寝室</th>
			<th>年级</th>
			<th>操作</th>
		</tr>
		<tr>
			<td>${student.name}</td>
			<td>${student.age}</td>
			<td>${student.gender}</td>
			<td>${student.number}</td>
			<td>${student.address}</td>
			<td>${student.status}</td>
			<td><a href="${pageContext.request.contextPath }/deleteStudentById?id=${student.id} ">删除</a>
            <a href="${pageContext.request.contextPath }/updatestudent?id=${student.id} ">修改</a></td>
		</tr>
	</table>
	</center>
		<br><br><br>

</body>
</html>