<%@page import="com.smhrd.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<button><a href="logOut">로그아웃</a></button>
	
	<c:choose>
		<c:when test="${!empty loginMember} }">
		
		
		</c:when>
		
	</c:choose>
	
	
	
	<button><a href="boradWrite.jsp">게시판 작성</button>

	<!-- 회원데이터 두가지형식으로 넘김  -->
	회원아이디 
	${loginMember.mem_id} 
	비번 
	${loginMember.mem_pw} 
	이름 
	${loginMember.mem_name} 
	생년월일
	${loginMember.mem_birthdate}
	키
	${loginMember.mem_height}
	나이
	${loginMember.mem_weight}
	
	<br>
	성별 
	
	<%-- 
	${loginMember.mem_gender} 
		0==남자, 1==여자	 
	--%>

	<br>
	<c:choose>
		<c:when test="${loginMember.mem_gender == 0}">
		남
		</c:when>
		<c:otherwise>
		여	
		</c:otherwise>	
	</c:choose>
	
	
	
	<br>
	정보 (0 없음, 1 있음)<br>
 	비건${loginMember.vegan}
	운동${loginMember.health}
	
	다이어트${loginMember.diet}
	알러지${loginMember.allergy}
	통풍${loginMember.gout}
	당뇨${loginMember.diabetes}
	유당불내증${loginMember.lactose}
	고지혈증${loginMember.hyperlipidemia}
	<br>
	
	가입일<br>
	 ${loginMember.join_at}
	 
	<br>
	회원전체정보
	${loginMember}
	<br>
	
	
	
	<%
	Member loginMember = (Member)session.getAttribute("loginMember");
	%>

	<%= loginMember.getMem_id() %>
	<%= loginMember.getMem_pw() %>
	<%= loginMember.getMem_name() %>
	<%= loginMember.getMem_birthdate() %>
	<%= loginMember.getMem_height() %>
	<%= loginMember.getMem_weight() %>
	
	<%-- 
	<%= loginMember.getMem_gender() %>
	성별데이터 는 0,1 로 받았음 0==남, 1==여
	--%>
	<% if(loginMember.getMem_gender() == 0){%>
		남
	<% } else { %>
		여
	<% } %>

	<%= loginMember.getVegan() %>
	<%= loginMember.getHealth() %>
	<%= loginMember.getDiet() %>
	<%= loginMember.getAllergy() %>
	<%= loginMember.getGout() %>
	<%= loginMember.getDiabetes() %>
	<%= loginMember.getLactose()%>
	<%= loginMember.getHyperlipidemia()%>
	
	
	
	
	



</body>
</html>