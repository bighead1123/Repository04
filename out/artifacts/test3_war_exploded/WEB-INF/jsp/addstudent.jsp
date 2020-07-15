<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>增加学生信息管</title>
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
<div class="">
	<form action="${pageContext.request.contextPath }/addStudent"
		method="post">
		<div>
			<center>
				<h2>增加学生信息</h2>
				<p>需要增加的ID及信息：</p>
				<label> Id:</label> <input type="text" name="Id" /> <br /> <label>姓名：</label>
				<input type="text" name="name" /> <br /> <label>年龄：</label> <input
					type="text" name="age" /><br /> <label> 性别：</label><input
					type="text" name="gender" /> <br /> <label> 学号：</label><input
					type="text" name="number" /> <br /> <label> 寝室：</label><input
					type="text" name="address" /> <br /> <label> 年级：</label><input
					type="text" name="status" /> <br /> <label>确认增加？</label> <input
					type="submit" value="确认增加"><br />
	</form>
	<hr />
</div>
<br>
<br>
<br>

</center>
</html>