<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account Login </title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/login.css" />
	
</head>
<body>
    <div class="container">
        <div class="title">LOG IN</div>
       
        <form action="${pageContext.request.contextPath}/login" method="post">
            <div class="user-details">
                <div class="input-box">
                    <span class="details">Email</span>
                     <input type="text" id="email" name="email" >
                </div>
                <div class="input-box">
                    <span class="details">Password</span>
                     <input type="password" id="password" name="password" >
                
                </div>
                
                <div class="button">
        			<input type="submit" value="Log-in">
      			</div>
                </div>

        </form>
       
       
        <div class="row">
            <a href="${pageContext.request.contextPath}/register" class="register-button">Create new account</a>
        </div>
    </div>

</body>


</body>
</html>