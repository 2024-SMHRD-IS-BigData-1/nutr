<%@page import="com.smhrd.model.Food"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



	<script>
	
	let name = '${resultFood.food_name}';
	
	let cal = parseFloat('${resultFood.calorie}')
	
	let carb = parseFloat('${resultFood.carbohydrate}')
	let protein = parseFloat('${resultFood.protein}')
	let fat = parseFloat('${resultFood.fat}')
	let sodium = parseFloat('${resultFood.sodium}')
	let sugar = parseFloat('${resultFood.sugar}')
	
	let serv = parseFloat('${resultFood.food_servings}')
	
	
	console.log(cal+cal)
	
	</script>




</head>
<body>


<%-- 	<% 
		Food resultFood = (Food)session.getAttribute("resultFood");
	%>
	 --%>
<%-- 	음식이름<%= resultFood.getFood_name() %>
	칼로리<%= resultFood.getCalorie() %>
	
	탄수화물<%= resultFood.getCarbohydrate() %>
	단백질<%= resultFood.getProtein() %>
	지방<%= resultFood.getFat() %>
	나트륨<%= resultFood.getSodium() %>
	당류<%= resultFood.getSugar() %>

	총제공량<%= resultFood.getFood_servings() %> --%>
	

	<br>
	
	${resultFood}
	<br>
	
	${resultFood.food_name}
	${resultFood.calorie}
	${resultFood.carbohydrate}
	${resultFood.protein}
	${resultFood.fat}
	${resultFood.sodium}
	${resultFood.sugar}
	${resultFood.food_servings}

		<div>
		  <canvas id="myChart"></canvas>
		</div>
		
		<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
		
		<script>
		  const ctx = document.getElementById('myChart');
		
		  new Chart(ctx, {
		    type: 'bar',
		    data: {
		      labels: ['탄수화물', '단백질', '지방', '나트륨', '당류', '총제공량'],
		      datasets: [{
		        label: name,
		        data: [carb, protein, fat, sodium/1000, sugar, serv/1000],
		        borderWidth: 1
		      }]
		    },
		    options: {
		      scales: {
		        y: {
		          beginAtZero: true
		        }
		      }
		    }
		  });
		  
  
  
</script>
 









</body>
</html>