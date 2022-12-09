<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> 
<head>
<meta charset="UTF-8">
<title>BMI 계산</title>
</head>
<body>
<%-- BMI =  몸무게 / ((키 / 100.0) * (키 / 100.0)); --%>

	<%
		double weight = Double.valueOf(request.getParameter("weight"));
		double height = Double.valueOf(request.getParameter("height"));
		double BMI = weight / ((height / 100.0) * (height / 100.0));
		
		String result = null;
		if (BMI <= 20) { // 20이하
			result = "저체중";
		} else if (BMI <= 25) { // 21 이상 ~ 25 이하 (21이상은 안써도 된다)
			result = "정상";
		} else if (BMI <= 30) { // 26 이상 ~ 30 이하
			result = "과체중";
		} else { // 31 ~ 
			result = "비만";
		}
	%>
	<div class="container">
		<h2>BMI 측정 결과</h2>
		<h1>당신은 <span class="text-info"><%= result %></span> 입니다.</h1>
		<small>BMI 수치 : <%= BMI %></small>
	</div>
</body>
</html>