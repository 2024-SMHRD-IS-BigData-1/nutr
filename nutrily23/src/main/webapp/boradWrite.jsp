<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	

	<form action="BoardWrite" method="post" enctype="multipart/form-data">
	
		
		
		
		<c:choose>
			<c:when test="${!empty loginMember}">
				작성자 <b>${loginMember.mem_id} 님</b> 
			</c:when>
		</c:choose>
		<br>
		제목입력 <input type="text" name="b_title" ><br>
		
	    카테고리 선택
		 <select name="b_category" >
		    <option value="category1">자유글</option>
		    <option value="category2">건의사항</option>
		    <option value="category3">질문글</option>
		    <option value="category4">뻘글</option>
		  </select>
		  <br>
		 첨부파일<input name="b_file" type="file" style="">
		<br>
		내용<br>
		<textarea name="b_content" cols="50" rows="10" sytle="resize: none;"></textarea> <br>  
		<input type="reset" value="초기화">
		<input type="submit" value="작성하기">
			
	
	</form>







</body>
</html>