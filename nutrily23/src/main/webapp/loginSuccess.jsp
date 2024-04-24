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
		<c:when test="${!empty loginMember}">
			<button><a href="boradWrite.jsp">게시판 작성</a></button>
		</c:when>
	</c:choose>
	
	
	

	<!-- 회원데이터 두가지형식으로 넘김  -->
	
	
	<table border="1">
		<tr>
			<td>회원아이디 </td>
			<td>${loginMember.mem_id} </td>
		</tr>	
		<tr>
			<td>회원아이디 </td>
			<td>${loginMember.mem_id} </td>
		</tr>	
		<tr>
			<td>비번</td>
			<td>${loginMember.mem_pw}</td>
		</tr>	
		<tr>
			<<td>이름</td>
			<td>${loginMember.mem_name}</td>
		</tr>	
		<tr>
			<td>생년월일</td>
			<td>${loginMember.mem_birthdate}</td>
		</tr>	
		<tr>
			<td>키</td>
			<td>${loginMember.mem_height}</td>
		</tr>	
		<tr>
			<td>체중</td>
			<<td>${loginMember.mem_weight}</td>
		</tr>	
		<tr>
			<td>성별</td>
			<!-- 0남 1 여 -->
			<td><c:choose>
					<c:when test="${loginMember.mem_gender == 0}">
					남
					</c:when>
						<c:otherwise>
						여	
						</c:otherwise>	
				</c:choose>
			</td>
		</tr>	
		<tr>
			<td>가입일</td>
			<td>${loginMember.join_at}</td>
		</tr>	
			
	

	
	</table>
	
	
	 
		1 있음, 0 없음
	<table border="1">
		
		<tr>
			<td>비건</td>
			<td>${loginMember.vegan}</td>
		<tr>
		<tr>
			<td>헬스</td>
			<td>${loginMember.health}</td>
		<tr>
		<tr>
			<td>다이어트</td>
			<td>${loginMember.diet}</td>
		<tr>
		<tr>
			<td>알러지</td>
			<td>${loginMember.allergy}</td>
		<tr>
		<tr>
			<td>통풍</td>
			<td>${loginMember.gout}</td>
		<tr>
		<tr>
			<td>당뇨</td>
			<td>${loginMember.diabetes}</td>
		<tr>
		<tr>
			<td>유당불내증</td>
			<td>${loginMember.lactose}</td>
		<tr>
		<tr>
			<td>고지혈증</td>
			<td>${loginMember.hyperlipidemia}</td>
		<tr>
		
		
	</table>
	
	
	

	
	
	
	
	가입일<br>
	
	 
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