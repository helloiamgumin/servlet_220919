package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz06")
public class GetMethodQuiz06 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		//request에서 request parameter를 꺼낸다.
		int number1 = Integer.valueOf(request.getParameter("number1"));
		int number2 = Integer.valueOf(request.getParameter("number2"));
		
		// 사칙연산을 한다 
		PrintWriter out = response.getWriter();
		
		int addition = number1 + number2;
		int subtraction = number1 - number2;
		int multiplication = number1 * number2;
		double division = number1 / (double)number2;
		
		//json으로 구성한다 
		// {"addtion": 1570, "subtraction": 1430, "multiplication": 105000, "division": 21}
		out.print("{\"addition\": " + addition + ", \"subtraction\": " + subtraction +
				", \"multiplication\": " + multiplication + ", \"division\": " + division + "}");
	}
}
