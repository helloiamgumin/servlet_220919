<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> 
</head>
<body>
	<% 
		int cm = Integer.valueOf(request.getParameter("length"));
		String[] units = request.getParameterValues("unit");
	%>
	<div class="container">
		<h1>길이 변환 결과</h1>
		<h3><%= cm %>cm</h3>
		<hr>
		
		<h2>
			<%
				if (units != null) {
					for (String unit : units) { // inch yard feet meter
						if (unit.equals("inch")) {
							double inch = cm * 0.393701;
							out.print(inch + " in<br>");
						} else if (unit.equals("yard")) {
							double yard = cm * 0.0109361;
							out.print(yard + " yard<br>");
						} else if (unit.equals("feet")) {
							double feet = cm * 0.0328084;
							out.print(feet + " ft<br>");
						} else if (unit.equals("meter")) {
							double meter = cm / 100.0;
							out.print(meter + " m<br>");
						}
					}
				}
				
			%>
		</h2>
	</div>
</body>
</html>