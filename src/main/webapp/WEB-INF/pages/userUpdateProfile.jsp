<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<meta charset="UTF-8">
<title>Insert title here</title>
 <meta name="author" content="Shreya Shrestha" />
  <meta name="description" content="Ecommerce Website home page" />
  <meta name="keywords" content="Makeup Products, Makeup store, Ecommerce" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/userProfile.css">
 
</head>
<body>

    <div class="container">
       <div class= "title">User Profile</div>
       <form action="${pageContext.request.contextPath}/userUpdateProfile"
            method="post">
        
           <div class="user-details">
            <div class="input-box">
                <span class="details">Full Name</span>
               <input type="text" id="fullName" name="fullName" required>
            </div>
        <div class ="input-box">
            <span class="details">Username</span>
            <input type="text" id="username" name="username" required>
        </div>
        <div class="input-box">
            <span class="details">Email</span>
            <input type="text" id="email" name="email" required>
        </div>
        <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="text" id="phoneNumber" name="phoneNumber" required>
        </div>
        <div class="input-box">
            <span class="details">Password</span>
            <input type="text" id="password" name="password" required>
        </div>
        
        <div class="input-box">
            <span class="details">Re-Type Password</span>
            <input type="text" id="retypePassword" name="retypePassword" required>
        </div>
        
        <input type="hidden" name="role" value="user" />
        
    </div>
    
                <div class="input-box">
                    <label for="image">Profile Picture</label>
                    <input type="file" id="image" name="image">
                </div>
        
    
     <div class="button">
        <input type="submit" value="Edit">
        <input type="submit" value="Save">
        <input type="submit" value="Delete">
        
     </div>

    </form>
    </div>
</body>
</html>  