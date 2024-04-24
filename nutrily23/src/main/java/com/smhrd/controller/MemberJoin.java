package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;

@WebServlet("/MemberJoin")
public class MemberJoin extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
	request.setCharacterEncoding("UTF-8");
	
	String mem_id = request.getParameter("mem_id");
	String mem_pw = request.getParameter("mem_pw");
	String mem_name = request.getParameter("mem_name");
	
	double mem_height = Double.parseDouble(request.getParameter("mem_height"));
	double mem_weight = Double.parseDouble(request.getParameter("mem_weight"));
	int mem_gender =  Integer.parseInt(request.getParameter("mem_gender"));
	
	String mem_birthdate = request.getParameter("mem_birthdate");
	
	
	// 체크박스 부분은 일단 문자열로 받음 체크되면 문자열, 비어있는 경우 null 
	String vegan1 = request.getParameter("vegan");
	String health1 = request.getParameter("health");
	String diet1 = request.getParameter("diet");
	String allergy1 = request.getParameter("allergy");
	
	String gout1 = request.getParameter("gout");
	String diabetes1 = request.getParameter("diabetes");
	String lactose1 = request.getParameter("lactose");
	String hyperlipidemia1 = request.getParameter("hyperlipidemia");
	
	int vegan = 0;
	int health = 0;
	int diet = 0;
	int allergy = 0;
	int gout =0;
	int diabetes = 0;
	int lactose = 0;
	int hyperlipidemia = 0;
	
	// 문자열로 받은데이터 1,0 으로 변환함 //
	if(vegan1 != null) {
		vegan = 1;
	} else {
		vegan = 0;
	}
	if(health1 != null) {
		health = 1;
	} else {
		health = 0;
	}
	if(diet1 != null) {
		diet = 1;
	} else {
		diet = 0;
	}
	if(allergy1 != null) {
		allergy = 1;
	} else {
		allergy = 0;
	}
	if(gout1 != null) {
		gout = 1;
	} else {
		gout = 0;
	}
	
	
	if(diabetes1 != null) {
		diabetes = 1;
	} else {
		diabetes = 0;
	}
	if(lactose1 != null) {
		lactose = 1;
	} else {
		lactose = 0;
	}
	if(hyperlipidemia1 != null) {
		hyperlipidemia = 1;
	} else {
		hyperlipidemia = 0;
	}
	

	Member member = new Member(mem_id, mem_pw, mem_name, 
			mem_height, mem_weight, mem_gender, mem_birthdate,
			vegan, health, diet,allergy, gout , diabetes,lactose,hyperlipidemia);
	
	
	
	
	int cnt = new MemberDAO().join(member);
	
	
	if (cnt >0 ) {
		System.out.println("회원가입성공");
		response.sendRedirect("JoinSuccess.jsp?mem_id="+member.getMem_id());
	
		
		
	} else {
		System.out.println("회원가입실패");	
	}
	

	
	
	// 입력된 데이터 확인부 
//	System.out.println(mem_id);
//	System.out.println(mem_pw);
//	System.out.println(mem_name);
//	System.out.println(mem_height);
//	System.out.println(mem_weight);
//	System.out.println(mem_gender);
//	System.out.println(mem_birthdate);
//	
//	
//	
//	System.out.println(vegan);
//	System.out.println(health);
//	System.out.println(allergy);
//	System.out.println(gout);
//	System.out.println(diet);
//	System.out.println(diabetes);
//	System.out.println(lactose);
//	System.out.println(hyperlipidemia);
	
	
	
	}

}
