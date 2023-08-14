package com.controller;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("SignupServlet::service()");

		String firstName = request.getParameter("firstName");
		String email = request.getParameter("email"); //String 
		String password = request.getParameter("password");
		
		
		System.out.println(firstName);
		System.out.println(email);
		System.out.println(password);
	}
}
