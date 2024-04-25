package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.Board;
import com.smhrd.model.BoardDAO;

@WebServlet("/BoardWrite")
public class BoardWrite extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	String path = request.getServletContext().getRealPath("./img");
//	System.out.println(path);	
		
	int maxSize = 10*1024*1024;
	
	String encoding = "UTF-8";
	
	DefaultFileRenamePolicy rename =  new DefaultFileRenamePolicy();
		
	MultipartRequest multi;
	
	multi = new MultipartRequest(request, path, maxSize, encoding, rename);
		
	String b_title = multi.getParameter("b_title");
	
	String b_content = multi.getParameter("b_content");
	String b_category = multi.getParameter("b_category");
	String b_file = multi.getFilesystemName("b_file");
	
	String mem_id = multi.getParameter("mem_id");
	
	
	
//	
//	HttpSession session = request.getSession();
//	String mem_id = (String)session.getAttribute("mem_id");
	
	
	
	
	
	System.out.println(b_title+b_content+b_category+ b_file+mem_id);
	
	Board board = new Board(b_title, b_content, b_category, b_file, mem_id);

	int cnt = new BoardDAO().insertBoard(board);
	
	if(cnt > 0) { 
		System.out.println("업로드성공");
	} else {
		System.out.println("업로드실패");
	}
	
	
	
	}

}
