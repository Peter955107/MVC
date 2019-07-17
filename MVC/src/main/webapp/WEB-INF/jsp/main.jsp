<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>你好</title>
    </head>

<body>
	<c:if test="${user.gender== '男'}">
            <h1>Welcome, Mr. ${user.account};</h1>
    </c:if>
    <c:if test="${user.gender== '女'}">
            <h1>Welcome, Miss ${user.account};</h1>
    </c:if>	
   	<table border=1>
	<tr>
		<th>姓名</th>
		<th>帳號</th>
		<th>E-MAIL</th>
		<th>性別</th>
		<th>年齡</th>
	</tr>
 
    <c:forEach items="${dataLists}" var="usr" varStatus="idx">
        <tr>
			<td>${usr.name}</td>
			<td>${usr.account}</td>
			<td>${usr.email}</td>
			<td>${usr.gender}</td> 
			<td>${usr.age}</td>
			<c:if test="${user.account != usr.account}">
            	<th><a href='userDetail.html?accountDetail=${usr.account}'>編輯</a></th>
    		</c:if>
				
		</tr>
	</c:forEach>
	</table>
</body>
</html>