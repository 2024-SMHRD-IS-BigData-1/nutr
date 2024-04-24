<%@page import="com.smhrd.model.MemberDAO"%>
<%@page import="com.smhrd.model.Member"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


 <% List<Member> MemberList = new MemberDAO().allMember(); %>


	<table border="1">
	
		<tr>
			<td>id</td>
			<td>pw</td>
			<td>name</td>
			<td>키</td>
			<td>체중</td>
			<td>성별</td>
			<td>생일</td>
			<td>비건</td>
			<td>헬스</td>
			<td>다이어트</td>
			<td>알러지</td>
			<td>통풍</td>
			<td>당뇨</td>
			<td>유당불내</td>
			<td>고지혈</td>
			<td>가입날짜</td>
	
		</tr>
		
	
	
	<% for(int i =0; i < MemberList.size() ; i++){%>
	
	<tr>
		<td> <%= MemberList.get(i).getMem_id() %></td>
		<td> <%= MemberList.get(i).getMem_pw() %></td>
		<td> <%= MemberList.get(i).getMem_name() %></td>
		<td> <%= MemberList.get(i).getMem_height() %></td>
		<td> <%= MemberList.get(i).getMem_weight() %></td>
		
		<%-- <td> <%= MemberList.get(i).getMem_gender() %></td> --%>
		<td> <% if(MemberList.get(i).getMem_gender() == 0){ %>
				남
			 <% } else { %>	
				여	
			 <% } %>
		</td>

		<td> <%= MemberList.get(i).getMem_birthdate() %></td>
		<td> <%= MemberList.get(i).getVegan() %></td>
		<td> <%= MemberList.get(i).getHealth() %></td>
		<td> <%= MemberList.get(i).getAllergy() %></td>
		<td> <%= MemberList.get(i).getGout() %></td>
		<td> <%= MemberList.get(i).getDiet() %></td>
		<td> <%= MemberList.get(i).getDiabetes() %></td>
		<td> <%= MemberList.get(i).getLactose() %></td>
		<td> <%= MemberList.get(i).getHyperlipidemia()%></td>
		<td> <%= MemberList.get(i).getJoin_at()%></td>
	</tr>
	
	<%} %>
	
	

</table>



</body>
</html>