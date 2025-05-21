<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/addproduct.css" />
</head>
<body>


<div class="container">
        <div class= "title">Add Product</div>
       <form action="${pageContext.request.contextPath}/addProduct"
            method="post">
            <div class="user-details">
            <div class="input-box">
                <span class="details">Product Name</span>
               <input type="text" id="productname" name="productname" required>
            </div>
        <div class ="input-box">
            <span class="details">Price</span>
            <input type="text" id="price" name="price" required>
        </div>
        <div class="input-box">
            <span class="details">Product Details</span>
            <input type="text" id="productdetail" name="productdetail" required>
        </div>
        <div class="input-box">
                    <label for="image">Profile Picture</label>
                    <input type="file" id="image" name="image">
                </div>
        
        
    </div>
    
     <div class="button">
        <input type="submit" value="Add product">
     </div>

    </form>
    </div>
</body>
</html>