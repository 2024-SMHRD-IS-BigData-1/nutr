<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	

	<form action="BoardWrite" method="post" enctype="multipart/form-data">
	
		제목입력 <input type="text" name="b_title" ><br>
		
		<!-- 로그인했을 경우 로그인한 아이디(이름)이 뜨게 할 것  -->
		작성자 <input type="text" name="b_writer"><br>
		가입된 아이디일경우 <input type="text" name="mem_id"><br>
		
		
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