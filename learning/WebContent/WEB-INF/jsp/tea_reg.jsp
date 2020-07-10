<%@ page language="java" import="java.util.*" contentType="text/html;charest=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<title>注册</title>
	<meta charset="utf-8">
	<meta name="author" content="">
	<meta name="description" content="" />

	<link rel="stylesheet" type="text/css" href="/learning/css/reset.css">
	<link rel="stylesheet" type="text/css" href="/learning/css/main.css">
	<script type="text/javascript" src="/learning/login_/js/jquery.js"></script>
	<script type="text/javascript" src="/learning/js/TimeCircles.js"></script>
	<script type="text/javascript" src="/learning/js/backstretch.js"></script>
	<script type="text/javascript" src="/learning/js/main.js"></script>
</head>

<body>
		
	<!-- <div class="container">
		<div class="row mt50 pt50">
			<div class="col-md-4"><a id="btn3" class="btn btn-lg btn-success">Demo 3</a></div>
		</divv>
	</div> -->
	<section class="content wrapper">

		<h1>欢迎注册家教系统</h1>
		<p class="description">老师注册信息</p>

		<div class="subscription_form clearfix">
			<div>
				<form action="reg" method="post">
					<tr>
						<input type="name" name="teaName" id="name" placeholder="请输入姓名">
                    </tr>
                    <tr>
						<input type="name" name="teaPwd" id="pw1" placeholder="请输入密码">
                    </tr>
                    <tr>
						<input type="name" name="pwd2" id="pw2" placeholder="确认密码" onkeyup="validate()"><span id="tishi"></span>
                    </tr>
                    <tr>
						<input type="name" name="teaTel" id="telephone" placeholder="输入你的电话">
                    </tr>
                    <tr>
						<input type="name" name="teaInformation" id="telephone" placeholder="输入你的简介">
                    </tr>
                                    
					<tr><input type="password" id="birthday" placeholder="enter your birthday"><button
						type="submit" id="submit"><i class="icon"></i></button></tr>
				</form>
			</div>
		</div>

		<div class="counter clear" data-date="2019-08-28 00:00:00"></div>

	</section>

    <script>
        function validate() {
        var pw1 = document.getElementById("pw1").value;
        var pw2 = document.getElementById("pw2").value;
        if(pw1 == pw2) {
        document.getElementById("tishi").innerHTML="<font color='white'>两次密码相同</font>";
        document.getElementById("submit").disabled = false;
        }
        else {
        document.getElementById("tishi").innerHTML="<font color='white'>两次密码不相同</font>";
        document.getElementById("submit").disabled = true;
        }
        }
        </script>

</body>

</html>