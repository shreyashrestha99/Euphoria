<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/login.css" />
	
</head>
<body>

    
    <div class="container">
        <div class="title">LOG IN</div>
       
        <form action="#">
            <div class="user-details">
                <div class="input-box">
                    <span class="details">Email</span>
                    <input type="text" placeholder="Enter your email" required>
                </div>
                <div class="input-box">
                    <span class="details">Password</span>
                    <input type="text" placeholder="Enter your password" required>
                </div>

                

                <div class="button">
                    <input type="submit" value="Log in">
                </div>

        </form>

</body>

</html>
</body>
</html>