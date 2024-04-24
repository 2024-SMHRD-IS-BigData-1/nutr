<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
 <style>
			body {
			    background-color: #ffffff; /* 흰색 배경색 지정 */
			}
			select{
			    width:85px;
			    height:25px;
			    outline: none;
			    background: #f5f6f7;
			    border: 1px solid #999;
			}
			a{
			    color: black;
			    text-decoration: none;
			    
			}
			
			a:link {
			color : white;	
			}
			a:visited {
			 color:white; 
			}
					
					
			.main{
			    text-align: center;
			   margin-top: 20px;
			}
			section{
			   border: 1px ;
			   border-radius: 10px;
			   padding: 20px;
			    box-shadow: 7px 7px 39px 0px #27bd0840;
			}
			input{
			    cursor: pointer
			}
			
			/*언어설정*/
			.select-lang{
			    text-align: right;
			    padding-right: 10px;
			}
			/* 로고설정*/
			.image {
			   height: 50px;
			   padding: 20px;
			}
			
			/*input 아이디박스*/
			.login-id-wrap{
			    margin: 10px 10px 10px 10px;
			    padding: 10px;
			    border: solid 1px #dadada;
			    border-radius: 10px;
			    background: #fff;
			}
			/*input 아이디 form*/
			#input-id{
			    border: none;
			    outline:none;
			    width:100%;
			}
			/*input 패스워드박스*/
			.login-pw-wrap{
			
			    margin: 0px 10px 10px 10px;
			    padding: 10px;
			    border: solid 1px #dadada;
			    border-radius: 10px;
			    background: #fff;
			}
			/*input 패스워드 form*/
			#input-pw{
			    border: none;
			    outline:none;
			    width:100%;
			}
			/*로그인버튼박스*/
			.login-btn-wrap{
			    height: 52px;
			    line-height: 55px;
			    margin: 40px 10px 10px 10px;
			    border: solid 1px rgba(0,0,0,.1);
			    border-radius: 10px;
			    background-color: limegreen;
			    color: #fff;
			    cursor: pointer;
			}
			/*로그인버튼*/
			#login-btn{
			    width:100%;
			    height: 100%;
			    background-color: limegreen;
			    border: none;
			    border-radius: 10px;
			    color:#fff;
			    font-size: 20px;
			    outline:none;
			    cursor: pointer;
			}
			.join-btn-wrap{
			    height: 52px;
			    line-height: 55px;
			    margin: 0px 10px 10px 10px;
			    border: solid 1px rgba(0,0,0,.1);
			    border-radius: 10px;
			    background-color: #03c75a;
			    color: #fff;
			    cursor: pointer;
			}
			#join-btn{
			    width:100%;
			    height: 100%;
			    background-color: #03c75a;
			    border: none;
			    border-radius: 10px;
			    color:#fff;
			    font-size: 20px;
			    outline:none;
			    cursor: pointer;
			}
			/*가로 800px 이상일때*/
			@media(min-width : 800px)
			{
			    .main{
			        width: 460px;
			        margin: auto;
			    }
			
			/*언어설정*/
			.select-lang{
			    margin-top: 20px;
			    width: 550px;
			    padding-right: 10px;
			}
			
			.image{
			    margin-top: 40px;
			    height: 100px;
			    padding: 20px;
			}
			}
   </style>


<body>


	<!-- 데이터 입출력용
	
	<form action="MemberLogin" method="post">
	
		id<input type="text" name="mem_id" placeholder=""><br>
		pw<input type="password" name="mem_pw" placeholder=""><br>
		
		<input type="submit" value="로그인">
	
	</form> 
	
	-->


	<div class="main">
      <!--웹페이지 상단-->
      <header>
         <!--language select-->

         <div class="select-lang">
            <select id="id-lang" class="selectbox" name="lang" onchange="chageLangSelect()">
               <option value="ko">한국어</option>
               <option value="en">English</option>
            </select>
         </div>

         <!--NAVER LOGO-->
         <div class="logo" style="margin-bottom: 50px;">
            <a href="Main.html" title="뉴트릴리 홈페이지"><img src="./images/logo.png"
                  class="image"></a>
         </div>
      </header>




      <!--로그인 부분-->
      
      
	
      <section class="login-wrap">
      
		<form action="MemberLogin" method="post" onsubmit="return checkField()">
     
	         <div class="login-id-wrap">
	            <input id="input-id" placeholder="아이디" type="text" name="mem_id"></input>
	         </div>
	         <div class="login-pw-wrap">
	            <input id="input-pw" placeholder="비밀번호" type="password" name="mem_pw"></input>
	         </div>
	           

			<!-- 
				입력값이 비어있을 경우 경고창 or 안내문구 
			
			-->
	         <p id="checkfield"></p> 
	           
	           
	         <div class="login-btn-wrap">    
	         	<input id="login-btn" type="submit" value="로그인">

	         </div>

         </form>
	         
	         <div class="join-btn-wrap">
	         	<button id="join-btn"><a href="join.jsp">회원가입</a></button>     
	       
	         </div>
      </section>
      

	
      
      
   </div>
   
   
	






	<script>
    function chageLangSelect(){
		var langSelect = document.getElementById("id-lang");
		var selectValue = langSelect.options[langSelect.selectedIndex].value;

			if(selectValue=='ko') {
				document.getElementById("input-id").placeholder='아이디';
				document.getElementById("input-pw").placeholder='비밀번호';
				document.getElementById("login-btn").value = '로그인';
				document.getElementById("join-btn").textContent = '회원가입';
			}
			else{
				document.getElementById("input-id").placeholder='Username';
				document.getElementById("input-pw").placeholder='Password';
				document.getElementById("login-btn").value = 'Sign in';
				document.getElementById("join-btn").textContent = 'Join in';
			}
	}

		

	// 인풋값 없을 경우 안내메세지
	function checkField(){
		let input_idVal = document.getElementById("input-id").value;	
		let input_pwVal = document.getElementById("input-pw").value;

			
		if (input_idVal === "" && input_pwVal === ""){
			let warring = document.getElementById('checkfield')
			warring.innerHTML = "아이디와 비밀번호를 입력하세요"
			return false; // false 일 경우 페이지 이동 불가

		} else if (input_idVal === ""){
			let warring = document.getElementById('checkfield')
			warring.innerHTML = "아이디를 입력하세요"
			return false;
	
		}else if (input_pwVal === "") {
			let warring = document.getElementById('checkfield')
			warring.innerHTML = "비밀번호를 입력하세요"
			return false; // false 일 경우 페이지 이동 불가

		} else {

			return true; //true 일 경우 페이지 이동함

		}



		

	}
	


   </script>



















</body>
</html>