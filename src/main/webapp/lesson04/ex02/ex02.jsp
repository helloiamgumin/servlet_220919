<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="/lesson04/ex02_insert">
		<p>
			<b>이름</b>
			<input type="text" name="name">
		</p>
		<p>
			<b>생년월일</b>
			<input type="text" name="yyyymmdd">
		</p>
		<p>
			<b>자기소개</b><br>
			<textarea rows="5" cols="50" name="introduce"></textarea>
		</p>
		<p>
			<b>이메일</b>
			<input type="text" name="email">
		</p>
		<p>
			<input type="submit" value="회원가입">
		</p>
	</form>
</body>
</html>