<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<header>
        <div class="header-container">
            <div class="image-logo">
                <img src="${pageContext.request.contextPath}/resources/logo.jpg" height="45px" width="50px" alt="Euphoria logo">
            </div>

            <h1 class="logo">Euphoria :)</h1>
            <div class="useradmin-links">
            	<c:if test="${ empty email }">
	                <a href="${pageContext.request.contextPath}/login">Login </a>
	                <a href="${pageContext.request.contextPath}/register">Register</a>
             	</c:if>
             	<c:if test="${not empty email }">
             		<p>${email}</p>
	                <a href="${pageContext.request.contextPath}/logout">LogOut </a>
	                
             	</c:if>
            </div>
            <nav class="nav-bar">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/home">Home</a></li>
                    <li><a href="${pageContext.request.contextPath}/product">Product</a></li>
                    <li><a href="${pageContext.request.contextPath}/aboutus">About Us</a></li>
                    <li><a href="${pageContext.request.contextPath}/contactus">Contact Us</a></li>
                    <li><a href="${pageContext.request.contextPath}/review">Review</a></li>
                    <li><a href="${pageContext.request.contextPath}/dashboard">Admin Dashboard</a></li>
                    

                </ul>
                <div class="nav-right">
                <a href="#"><i class="fas fa-search"></i></a>
                    
                    <input type="text" placeholder="Search...">
                </div>

                <div class="user-icon">
                    <a href="${pageContext.request.contextPath}/userUpdateProfile">
                        <i class="far fa-user"></i>
                    </a>
                    <a href="${pageContext.request.contextPath}/chartcheckoutpage">
                        <i class="fas fa-shopping-cart"></i>
                        <span class="cart-count">0</span>
                    </a>

                </div>

            </nav>

        </div>
    </header>
</body>
</html>