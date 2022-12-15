package com.test.lesson04;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz01")
public class quiz01 extends HttpServlet {
	
	@Override
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("text/plain");
		
		MysqlService ms = MysqlService.getInstance();
	}
//	insert into `real_estate`
//	(`realtorId`, `address`, `area`, `type`, `price`, `rentPrice`)
//	values
//	(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, null)
}
