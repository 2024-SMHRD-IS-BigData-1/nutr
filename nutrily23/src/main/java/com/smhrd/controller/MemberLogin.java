package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;

@WebServlet("/MemberLogin")
public class MemberLogin extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
	request.setCharacterEncoding("UTF-8");
	String mem_id = request.getParameter("mem_id");
	String mem_pw = request. getParameter("mem_pw");
	
	
	
	
	// 받은데이터확인
	System.out.println("받은데이터"+mem_id+mem_pw);
	
	
	
	
	Member member = new Member(mem_id, mem_pw);
	
	Member loginMember= new MemberDAO().login(member);
	

	if (loginMember != null) {
		System.out.println("로그인성공");
		HttpSession session =  request.getSession();
		session.setAttribute("loginMember", loginMember);
		
	} else {
		System.out.println("로그인실패");
	}

		response.sendRedirect("loginSuccess.jsp"); 
	
	
	
	
	}

}
