<%@ page language="java" import="java.util.*" contentType="text/html;charest=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function to(){
		var a=document.getElementById("name").value;
		var b=document.getElementById("upwd").value;
		alert(a+b);
	}
	</script>
</head>
<body>
<h1>老师登录</h1>
<form action="login" type="text" method="post">
<input name="uname" id="name"/>
<input name="upwd" type="password" id="upwd"/>
<span></span><input value="登录" type="submit">
</form>
</body>
</html>