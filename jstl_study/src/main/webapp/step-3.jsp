<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>
		상품명: ${param.name }<br> 
		원산지: ${param.address }<br>
	</h1>
	<hr>
	
	
	<h2>
		
		1.스크립틀릿 방식으로 파라미터 받기<br>
		<%=request.getParameter("name") %><br>
		<%=request.getParameter("address") %>
		
	</h2>
	<hr>
	<h2>
		2.EL방식으로 파라비터 전달받기<br>
		${param.name }<br>
		${param.address }<br>	
		</h2>
		
		<hr>
		
		<!-- form tag로 데이터 전송 -->
		<!-- queryString 방식의 전송 get방식으로 전송 -->
		<!-- form tag 전송방식은 선택가능.get/post 방식중 선택가능 -->
		
		<form action="step-4.jsp">
		이름: <input type="text" name="name"><br>
		나이: <input type="text" name="age">
		<button type="submit">전송</button>
		
		</form>
		
</body>
</html>