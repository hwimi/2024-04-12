<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <!-- 메뉴판을 체크박스 형태로 만들어서 step-7.jsp로전송  -->
 <!-- step-7.jsp에서 주문명을 어떤 메뉴를 주문했는지 출력 -->
 <form action="step-7.jsp">
 	주문자명: <input type="text" name="customer"><br>
 	<input type="checkbox" name="food" value="족발">족발<br>
	<input type="checkbox" name="food" value="소주">소주<br>
	<input type="checkbox" name="food" value="피자">피자<br>
	<input type="checkbox" name="food" value="맥주">맥주<br>
	<input type="checkbox" name="food" value="삼겹살">삼겹살<br>
	<input type="checkbox" name="food" value="냉면">냉면<br>
	<button type="submit">전송</button>
 </form>
</body>
</html>