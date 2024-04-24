<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



	<form action="MemberJoin" method="post">
	
		
		id<input type="text" name="mem_id" placeholder=""><br>
		pw<input type="password" name="mem_pw" placeholder=""><br>
		이름<input type="text" name="mem_name" placeholder=""><br>
		키<input type="text" name="mem_height" placeholder=""><br>
		몸무게<input type="text" name="mem_weight" placeholder=""><br>
		
		
		성별
		<input type="radio" name="mem_gender" value="0">남
        <input type="radio" name="mem_gender" value="1">여<br>
        
		생년월일(일단숫자로만8자리)
		<input type="date" name="mem_birthdate" placeholder=""><br>
		
		
		선택 <br>
		vegan<input type="checkbox" name="vegan" value="vegan"> <br>
        health<input type="checkbox" name="health" value="health"> <br>
        diet<input type="checkbox" name="diet" value="diet"> <br>
        allergy<input type="checkbox" name="allergy" value="allergy"> <br>
        
        gout<input type="checkbox" name="gout" value="gout"> <br>
        diabetes<input type="checkbox" name="diabetes" value="diabetes"> <br>
        lactose<input type="checkbox" name="lactose" value="lactose"> <br>
        hyperlipidemia<input type="checkbox" name="hyperlipidemia" value="hyperlipidemia"> <br>
        

		<input type="reset" value="초기화">
        <input type="submit" value="가입">   
	
	
	</form>



</body>
</html>