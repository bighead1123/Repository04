<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生信息管理系统</title>
<style type="text/css">
label {
	display: inline-block;
	width: 10em;
	margin-right: 1em;
	text-align: right;
	margin-top: 10px;
}
</style>
</head>
<body>
	<div align="right">
	当前用户：${USER_SESSION.username}
	<a href="${pageContext.request.contextPath }/logout">退出 </a>

	</div>
	<h1>
		<center>欢迎使用学生信息管理系统</center>
	</h1>
	<hr>
	<div>
		<center>
			<h2>学生信息查询</h2>
			<form action="${pageContext.request.contextPath }/findall"
				method="post">
				<input type="submit" value="点击查询所有学生信息" style="height:45px">
				<input type="button" value="根据学生id查询信息"  style="height: 45px" onclick="window.open('findStudentById')">
			</form>
			<hr />
		</center>
	</div>


	<div class="">
		<center>
			<form action="${pageContext.request.contextPath }/deleteStudentById"
				method="post">
				<div>
					<h2>根据学生Id删除学生信息</h2>
					<p>
						需要删除的ID： <input type="text" name="id" /> <input type="submit"
							value="提交">
					</p>
			</form>
			<hr />
		</center>
	</div>



	<div class="">
		<form action="${pageContext.request.contextPath }/addStudent"
			method="post">
			<div>
				<center>
					<h2>增加学生信息</h2>
					<p>需要增加的ID及信息：</p>
						<label>Id:</label> <input type="text" name="Id"/> <br/>
						<label>姓名:</label> <input type="text" name="name"/> <br/>
						<label>年龄:</label> <input type="text" name="age" /><br/>
					 	<label>性别:</label><input type="text" name="gender" /> <br/>
					 	<label>学号:</label><input type="text" name="number" /> <br/>
					 	<label>寝室:</label><input type="text" name="address" /> <br/>
					 	<label>年级:</label><input type="text" name="status" /> <br/>
					 	<label>确认增加？</label> <input type="submit" value="确认增加"><br/>
				
		</form>
		<hr />
		</center>
	</div>
		<br><br><br>


</body>
</html>
