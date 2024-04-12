<%@page import="java.util.ArrayList"%>
<%@page import="jstl_study.carVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	carVO car = new carVO("1234", "소나타", 2000);
	request.setAttribute("car", car);
	%>
	<!-- car객체 출력 -->
	${requestScope.car.name }
	<br> ${car.num }
	<br> ${car.price }
	<br>

	<%
	ArrayList<carVO> list = new ArrayList<>();
	list.add(car);
	list.add(new carVO("1111", "그렌저", 3000));
	list.add(new carVO("2222", "모하비", 5000));
	request.setAttribute("list", list);
	/* session.setAttribute("list", list);  */
	%>

	<c:forEach items="${list}" var="car" varStatus="i">
	${i.index }.${car.num}.${car.name }.${car.price }<hr>
	</c:forEach>

<!-- 	<a href="step-8.jsp">"step-8.jsp</a> -->
</body>
</html>