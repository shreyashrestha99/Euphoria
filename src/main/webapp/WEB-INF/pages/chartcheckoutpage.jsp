<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <c:set var="contextPath" value="${pageContext.request.contextPath}" />
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Euphoria | Shopping Cart</title>
 <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/cartcheckout.css" />
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
<jsp:include page="header.jsp"/>
 <style>
    /* Inline temporary styles for demo - normally these would be in your contactus.css file */
  .header-container {
    display: flex;
    align-items: center;
    justify-content: space-between;
    flex-direction: row;
    flex-wrap: wrap;
    width: 100%;
    height: auto;
}

/* Logo */
.image-logo {
    padding-right: 30px;
}

/* Navigation */
.nav-bar {
    display: flex;
    flex-direction: column;
    width: 100%;
}

.nav-bar ul {
    list-style: none;
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
    gap: 30px;
}

.nav-bar a {
    text-decoration: none;
    color: red;
    font-size: 16px;
    padding: auto;
}

.nav-bar a:hover {
    color: black;
    text-decoration: underline;
}

/* Icons */
i {
    cursor: pointer;
}

/* User/Admin Links */
.useradmin-links {
    color: rgb(139, 24, 24);
    align-items: center;
    margin-left: 15px;
    font-size: 14px;
    justify-content: flex-end;
    gap: 15px;
    display: flex;
}

.useradmin-links a {
    color: rgb(139, 24, 24);
    text-decoration: none;
    margin: 0 4px;
    padding: 0 5px;
    border-right: 1px solid black;
    border-left: 1px solid black;
}

nav-right {
    gap: 5px;
    display: flex;
    justify-content: flex-end;
}

.search-bar {
    align-items: center;
    display: flex;
    gap: 10px;
    margin-left: 40px;
    margin-bottom: 10px;
    padding: 2px 6px;
    border: 8px solid gray;
    border-radius: 50px;
    background: whitesmoke;
}

.search-bar input {
    border: none;
    outline: none;
    padding: 2px 20px;
    border-radius: 50px;
    font-size: 16px;
    background: transparent;
}

.user-icon {
    display: flex;
    align-items: center;
    gap: 12px;
    margin-left: 14px;
    justify-content: flex-end;
}

.user-icon a {
    color: #222;
    font-size: 16px;
    text-decoration: none;
}

.cart-count {
    background: #e53935;
    color: #fff;
    border-radius: 50%;
    padding: 2px 2px;
    font-size: 10px;
    margin-left: 2px;
}

.logo {
    font-size: 40px;
    font-style: italic;
    font-weight: bold;
    text-align: center;
    margin-left: 40px;
    margin-right: 40px;
}
  </style>

  <!-- Shopping Cart Section -->
  <main class="cart-container">
    <h1 class="cart-title">Shopping Cart</h1>

    <div class="cart-item">
      <img src="${pageContext.request.contextPath}/resources/Blush.jpg" alt="Product 1" class="product-img" />
      <div>
        <p><strong>Product Name</strong></p>
        Quantity: <input type="number" value="1" min="1" class="qty-input" />
        <p>Price: $25.00</p>
        <button class="remove-btn">Remove</button>
      </div>
    </div>

    <div class="cart-item">
      <img src="${pageContext.request.contextPath}/resources/Foundation.jpg" alt="Product 2" class="product-img" />
      <div>
        <p><strong>Another Product</strong></p>
        Quantity: <input type="number" value="2" min="1" class="qty-input" />
        <p>Price: $40.00</p>
        <button class="remove-btn">Remove</button>
      </div>
    </div>

    <div class="cart-total">
      <p>Total: <strong>$65.00</strong></p>
      <button class="checkout-btn">Proceed to Checkout</button>
    </div>
  </main>

  

</body>
</html>