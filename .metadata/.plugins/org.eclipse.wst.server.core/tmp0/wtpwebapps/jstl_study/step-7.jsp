<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 		주문자: ${param.customer}<br>
		<h3>주문메뉴</h3>
  	음식1:${paramValues.food[0]}<br>
        음식2:${paramValues.food[1]}<br>
        음식3:${paramValues.food[2]}<br>
        음식4:${paramValues.food[3]}<br>
        음식5:${paramValues.food[4]}<br> --%>
        
       <c:forEach items="${paramValues.food}" var="food" varStatus="i">
        ${i.count}. ${food}<br>

       </c:forEach>
</body>
</html>