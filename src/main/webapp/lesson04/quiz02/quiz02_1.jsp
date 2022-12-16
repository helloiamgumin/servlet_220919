<%@page import="com.test.common.MysqlService"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	String selectQuery = "select * from `list` order by `id` desc";
	ResultSet rs = ms.select(selectQuery);
%>

	<table border="1">
		<thead>
			<tr>
				<th>사이트</th>
				<th>사이트 주소</th>
			</tr>
		</thead>
		<tbody>
		<%
			while (rs.next()) {
		%>
			<tr>
				<td><a href=""><%= rs.getString("name") %></a></td>
				<td><a href=""><%= rs.getString("url") %></a></td>
			</tr>
		<%
			}
		%>	
		</tbody>
	</table>
</body>
</html>