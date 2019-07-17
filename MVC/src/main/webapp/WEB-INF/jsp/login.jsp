<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--引用核心标签-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
    <head>
        <title>login</title>
    </head>
    <body>
        <%--<c:if test="${!empty error}">--%>
            <%--<font color="red"><c:out value="%{error}" /></font>--%>
        <%--</c:if>--%>
        <form action="<c:url value="/loginCheck.html" />" method="post" >
        <table align="center" >
            <tr>
                <td>帳號：</td><td><input type="text" name="userName" id="userid"/></td>
            </tr>    
            <tr>
                <td>密碼：</td><td><input type="password" name="password" id="userpassid"/></td>
            <tr/>            
            <tr>
            <td colspan="2" align="center">
                <input type="submit" value="登入" id="check" />
                <input type="reset" value="重置" />
                <input type="button" value="註冊" onclick="location.href='signUp.html'"/>
            </td>
            </tr>        
        </table>
        </form>
    </body>
</html>