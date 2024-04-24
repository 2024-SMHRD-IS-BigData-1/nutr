package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Food;
import com.smhrd.model.FoodDAO;

@WebServlet("/FoodSearch")
public class FoodSearch extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	request.setCharacterEncoding("UTF-8");
	String food_name = request.getParameter("food_name");
	
	System.out.println("입력받은 데이터" + food_name);
	

	Food foodSearch = new Food(food_name);
	
	Food resultFood = new FoodDAO().foodSearch(foodSearch);

	
	
	
	if(resultFood != null) {
		System.out.println("데이터출력성공");
		HttpSession session =  request.getSession();
		session.setAttribute("resultFood", resultFood);

	} else {
		System.out.println("데이터출력실패");
		
	}
	response.sendRedirect("foodResult.jsp"); 
	
	
	
	}

}
