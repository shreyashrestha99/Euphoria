<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                <img src="/image/logo.jpg" height="45px" weight="10px" alt="Euphoria logo">
            </div>

            <h1 class="logo">Euphoria :)</h1>
            <div class="useradmin-links">
                <a href="pages/login.html">Login</a>
                <a href="pages/register.html">Register</a>
            </div>
            <nav class="nav-bar">
                <ul>
                    <li><a href="/home.html">Home</a></li>
                    <li><a href="/pages/products.html">Product</a></li>
                    <li><a href="/pages/aboutus.html">About Us</a></li>
                    <li><a href="/pages/contactus.html">Contact Us</a></li>
                    <li><a href="/pages/review.html">Review</a></li>

                </ul>
                <div class="nav-right">
                    <i class="fas fa-search"></i>
                    <input type="text" placeholder="Search...">
                </div>

                <div class="user-icon">
                    <a href="#">
                        <i class="far fa-user"></i>
                    </a>
                    <a href="/pages/chartcheckoutpage.html">
                        <i class="fas fa-shopping-cart"></i>
                        <span class="cart-count">0</span>
                    </a>

                </div>

            </nav>

        </div>
    </header>
</body>
</html>