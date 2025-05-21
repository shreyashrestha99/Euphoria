<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Responsive Admin Dashboard | Korsat X Parmaga</title>
    <!-- ==Styles== -->
     <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/dashboard.css" />
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
    <!-- Navigation bar -->
    <div class="container">
        <!-- Navigation -->
        <div class="navigation">
            <ul>
                <li>
                    <a href="${pageContext.request.contextPath}/dashboard">
                        <span class="icon">
                            <ion-icon name="home-outline"></ion-icon>
                        </span>
                        <span class="title">Dashboard</span>
                    </a>
                </li>

                <li>
                    <a href="${pageContext.request.contextPath}/orderList">
                        <span class="icon">
                            <ion-icon name="stats-chart-outline"></ion-icon>
                        </span>
                        <span class="title">Order List</span>
                    </a>
                </li>

                <li>
                    <a href="${pageContext.request.contextPath}/product">
                        <span class="icon">
                            <ion-icon name="bag-handle-outline"></ion-icon>
                        </span>
                        <span class="title">Product</span>
                    </a>
                </li>

                <li>
                    <a href="${pageContext.request.contextPath}/addProduct">
                        <span class="icon">
                            <ion-icon name="add-circle-outline"></ion-icon>
                        </span>
                        <span class="title">Add Product</span>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/viewProduct">
                        <span class="icon">
                            <ion-icon name="add-circle-outline"></ion-icon>
                        </span>
                        <span class="title">View Product</span>
                    </a>
                </li>
                
                
            </ul>
        </div>

        <!-- Main -->
        <div class="main">
            <div class="topbar">
                <div class="toggle">
                    <ion-icon name="menu-outline"></ion-icon>
                </div>

                <div class="search">
                    <label>
                        <input type="text" placeholder="Search here">
                        <ion-icon name="search-outline"></ion-icon>
                    </label>
                </div>

                <div class="user">
                    <img src="${pageContext.request.contextPath}/resources/Admin.jpg" alt="">
                    
                </div>
            </div>

            <!-- Cards -->
            <div class="cardBox">
                <div class="card">
                    <div>
                        <div class="numbers">$30,00</div>
                        <div class="cardName">Total sales</div>
                    </div>

                    <div class="iconBox">
                        <ion-icon name="cash-outline"></ion-icon>
                    </div>
                </div>

                <div class="card">
                    <div>
                        <div class="numbers">1500</div>
                        <div class="cardName">Order</div>
                    </div>

                    <div class="iconBox">
                        <ion-icon name="reorder-four-outline"></ion-icon>
                    </div>
                </div>

                <div class="card">
                    <div>
                        <div class="numbers">3000</div>
                        <div class="cardName">Customers</div>
                    </div>

                    <div class="iconBox">
                        <ion-icon name="people-outline"></ion-icon>
                    </div>
                </div>

                <div class="card">
                    <div>
                        <div class="numbers">1000</div>
                        <div class="cardName">Inventory</div>
                    </div>

                    <div class="iconBox">
                        <ion-icon name="cart-outline"></ion-icon>
                    </div>
                </div>
            </div>

            <!-- Combined Welcome & Product Section -->
            <div class="combinedSection">
                <div class="adminWelcomeContainer">
                    <div class="welcomeHeader">
                        <div class="welcomeText">
                            <h1>Welcome Admins!</h1>
                            <p>Euphoria Dashboard</p>
                            <p>It's great to have you onboard. Manage your store efficiently and effortlessly with our user-friendly interface. From sales data to inventory, everything you need is just a few clicks away.</p>
                        </div>
                    </div>
                    
                    <div class="motivationBox">
                        <h2>Reach For the Stars 🌟</h2>
                        <p>Keep pushing forward. Stay dedicated, and remember the future is bright. Together, let's turn the challenge into opportunities and dreams into reality.</p>
                    </div>

                    <!-- Product Information Section -->
                    <div class="productInfoSection">
                        <div class="productInfoHeader">
                            <h2>User Information</h2>
                            <a href="#" class="btn">View All</a>
                        </div>

                        <table class="productTable">
                            <thead>
                                <tr>
                                    <td>#</td>
                                    <td>Name</td>
                                    <td>Phone number</td>
                                    <td>Email</td>
                                    <td>Action</td>
                                </tr>
                            </thead>
<c:forEach var="user" items="${userList}">
    <tr>
        <td>${user.userId}</td>
        <td>${user.fullName}</td>
        <td>${user.username}</td>
        <td>${user.email}</td>
        <td>${user.phoneNumber}</td>
        <td>${user.userRole}</td>
        <td>
            <form action="${contextPath}/dashboard" method="post" style="display: inline;">
                <input type="hidden" name="userId" value="${user.userId}">
                <input type="hidden" name="action" value="updateForm">
                <button class="action-btn" type="submit">
                    <img src="${contextPath}/resources/images/icons/edit.png"
                         alt="Edit" title="Edit" />
                </button>
            </form>
            <form action="${contextPath}/dashboard" method="post" style="display: inline;">
                <input type="hidden" name="userId" value="${user.userId}">
                <input type="hidden" name="action" value="delete">
                <button class="action-btn" type="submit" 
                        onclick="return confirm('Are you sure you want to delete this user?')">
                    <img src="${contextPath}/resources/images/icons/delete.png"
                         alt="Delete" title="Delete" />
                </button>
            </form>
        </td>
    </tr>
</c:forEach>
                            <tbody>
                           
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    

    <!-- ==Scripts== -->
     <script src="Dashboard.js"></script>

        <!-- ionicons -->
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    
</body>
</html>