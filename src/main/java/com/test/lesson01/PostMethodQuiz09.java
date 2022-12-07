package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz09")
public class PostMethodQuiz09 extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		String name = request.getParameter("name");
		String introduction = request.getParameter("introduction");
		
		PrintWriter out = response.getWriter();
		
		out.print("<html><head><title>입사지원서</title></head><body>");
		out.print("<b>" + name + "</b>" + "님 지원이 완료 되었습니다.");
		out.print("<h3>지원내용</h3>");
		out.print(introduction);
		out.print("</body></html>");
	}
}
