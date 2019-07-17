<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>註冊</title>
		<script>
             function checkSignUp(){
                var signUpPasswd = document.getElementById("signUpPasswd").value;
                var signUpConfirmPasswd = document.getElementById("signUpConfirmPasswd").value;
                var signUpAge = document.getElementById("signUpAge").value;
                if(signUpPasswd != signUpConfirmPasswd ){
                    alert("密碼不符合");
                    return false;
                }
                else if( signUpAge<0 || signUpAge>99){
                	alert("年齡有效範圍[0~99]");
                	return false;
                }
            }
        </script>
	</head>
	
	<body>
		<c:if test="${accountCheck==false}">
			帳號已經存在!
		</c:if>
		<form action="<c:url value="/signUpCheck.html" />" method="post"  onsubmit="return checkSignUp()">
		<table align="center" border=1>
			
			<tr>
	        	<td>姓名：</td><td><input type="text" name="signUpName" required/></td>
	        </tr>	
	        <tr>
	        	<td>帳號：</td><td><input type="text" name="signUpAccount" required/></td>
	        </tr>    
	        <tr>
	            <td>密碼：</td><td><input type="password" name="signUpPasswd" id="signUpPasswd" required/></td>
	        <tr/>
	        <tr>
	            <td>確認密碼：</td><td><input type="password" name="signUpConfirmPasswd" id="signUpConfirmPasswd" required/></td>
	        <tr/>
	        <tr>
	        	<td>E-MAIL：</td><td><input type="email" name="signUpEmail" required/></td>
	        </tr>
	        <tr>
				<td>
					<input type='radio' name='signUpGender' value='男' >男 
					<input type='radio' name='signUpGender' value='女' >女 
				</td>
	        </tr>
	        <tr>
	        	<td>年齡：</td><td><input type="text" name="signUpAge" id="signUpAge" required/></td>
	        </tr>
	        <tr>
		        <td colspan="2" align="center">
		            <input type="submit" value="註冊" id="check" />
		            <input type="reset" value="重設" />
		        </td>
	        </tr>        
		</table>
		</form>
	</body>
</html>