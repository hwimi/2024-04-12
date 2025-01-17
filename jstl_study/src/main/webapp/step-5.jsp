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
    <h1>
        paramVaules로 데이터 받기
    </h1>
    <h3>
        과일1:${paramValues.food[0]}<br>
        과일2:${paramValues.food[1]}<br>
        과일3:${paramValues.food[2]}<br>
        과일4:${paramValues.food[3]}<br>
        과일5:${paramValues.food[4]}<br>
    </h3>
    <hr>
    
    <h3>
        forEach를 사용한 출력
    </h3>
    <!-- varStatus index(번지:0부터 시작) count(개수:1개부터 시작) -->
    <c:forEach items="${paramValues.food}" var="foods" varStatus="i">
        과일:${i.index}/${i.count}:${foods } <br>
    </c:forEach>
    
    
    <%
    String friends[]={"삽겹살","소주","족발","맥주"};
    /* java conroller 에서 jsp러 데이터를 보낼때 */
    request.setAttribute("fr", friends);
    %>
    
    <c:forEach items="${requestScope.fr}" var="fname" varStatus="i">
    count:${i.count }/index:${i.index }/${fname }<br>
    </c:forEach>
    <!-- begin="시작숫자" end="10" var="i" -->
    <c:forEach begin="1" end="10" var="i">
    ${i }
    </c:forEach>
    <a href="step-6.jsp">step-6.jsp</a>
</body>
</html>