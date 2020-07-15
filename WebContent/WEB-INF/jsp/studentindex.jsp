<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ page import="com.pzh.po.Student"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>学生信息表</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!-- CSS goes in the document HEAD or added to your external stylesheet -->
<style type="text/css">
table.gridtable {
	font-family: verdana, arial, sans-serif;
	font-size: 11px;
	color: #333333;
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

	<h1 align="center">学生信息管理</h1>
	<center>
		<form method="post"
			action="${pageContext.request.contextPath }/findStudentById"">

			<p >
				输入单个Id进行查询： <input name="id" type="text"> <input value="查询"
					type="submit">
			</p>

		</form>
	</center>
	<table width="80%" border="1" align="center" class="gridtable" >
		<thead>
			<tr>
				<td colspan="8" align="center">学生信息管理</td>
			</tr>
		</thead>
		<tbody>
			<tr align="center">
				<th>Id</th>
				<th>姓名</th>
				<th>年龄</th>
				<th>性别</th>
				<th>学号</th>
				<th>寝室</th>
				<th>年级</th>
				<th>操作</th>
			</tr>
			<%
				List<Student> student = (List) request.getAttribute("students");
				if (student.size() != 0) {
					for (int i = 0; i < student.size(); i++) {
						pageContext.setAttribute("students", student.get(i));
			%>


			<tr>
				<td>${students.id}</td>
				<td>${students.name}</td>
				<td>${students.age}</td>
				<td>${students.gender}</td>
				<td>${students.number}</td>
				<td>${students.address}</td>
				<td>${students.status}</td>
				<td><a
					href="${pageContext.request.contextPath }/deleteStudentById?id=${students.id} ">删除</a>
					<a
					href="${pageContext.request.contextPath }/updatestudent?id=${students.id} ">修改</a></td>
			</tr>

			<%
				}
				}
			%>




		</tbody>
	</table>
	<hr>
	<center>
		<a href="addstudentindex"><button type="button" style="height:35px">增加学生信息</button></a>
	</center>
	
	<br><br><br>

</body>
</html>
