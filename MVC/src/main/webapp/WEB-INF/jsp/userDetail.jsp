<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>${userDetail.account}</title>
		<script>
		
             function checkPassword(){
                var editPasswd = document.getElementById("editPasswd").value;
                var confirmPasswd = document.getElementById("confirmPasswd").value;
                var editAge = document.getElementById("editAge").value;
                if(editPasswd != confirmPasswd ){
                    alert("密碼不符合");
                    return false;
                }
                else if( editAge<0 || editAge>99){
                	alert("年齡有效範圍[0~99]");
                	return false;
                }
            }
        </script>
	</head>
	
	<body>
		<form action="<c:url value="/userDetail.html" />" method="post"  onsubmit="return checkPassword()">
		<table align="center" border=1>
			
			<tr>
	        	<td>姓名：</td><td><input type="text" name="editName" value='${userDetail.name}' readonly="readonly" /></td>
	        </tr>	
	        <tr>
	        	<td>帳號：</td><td><input type="text" name="editAccount" value='${userDetail.account}' readonly="readonly"/></td>
	        </tr>    
	        <tr>
	            <td>密碼：</td><td><input type="password" name="editPasswd" value='${userDetail.passwd}' id="editPasswd" required/></td>
	        <tr/>
	        <tr>
	            <td>確認密碼：</td><td><input type="password" name="confirmPasswd" value='${userDetail.passwd}' id="confirmPasswd" required/></td>
	        <tr/>
	        <tr>
	        	<td>E-MAIL：</td><td><input type="email" name="editEmail" value='${userDetail.email}' required/></td>
	        </tr>
	        <tr>
	        	
	        	<td>性別：</td>
		        	<c:if test="${userDetail.gender== '男'}">
						<td>
							<input type='radio' name='editGender' value='男' checked="true">男 
							<input type='radio' name='editGender' value='女'>女 
						</td>
					</c:if>
					
					<c:if test="${userDetail.gender== '女'}">
						<td>
							<input type='radio' name='editGender' value='男'>男 
							<input type='radio' name='editGender' value='女' checked="true">女 
						</td>
					</c:if>
	        	
	        </tr>
	        <tr>
	        	<td>年齡：</td><td><input type="text" name="editAge" value='${userDetail.age}' id="editAge" required/></td>
	        </tr>
	        <tr>
		        <td colspan="2" align="center">
		            <input type="submit" value="更新" id="check" />
		            <input type="reset" value="重設" />
		            <input type="button" value="刪除" onclick="location.href='userDelete.html'">
		        </td>
	        </tr>        
		</table>
		</form>
	</body>
</html>