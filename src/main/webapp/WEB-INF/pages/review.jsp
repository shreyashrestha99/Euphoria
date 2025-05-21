<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Review About Us</title>
  
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/review.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
 <jsp:include page="header.jsp"/> 
<!----------------------------Review Section--------------------------------->
<div class="page-wrapper">
  <section class="review-header">
    <div class="review-banner">
      <h1>REVIEW ABOUT US</h1>
      <p>We appreciate your feedback. Here’s what our clients say!</p>
    </div>
  </section>

<!------------------------Client Review Section------------------------------->
  <section class="review-section">
    <h2 class="review-title">WHAT OUR CLIENTS SAY!</h2>
    <div class="review-grid">
    
<!----------------------------Review Card 1----------------------------------->
      <div class="review-card">
        <div class="review-img">
          <img src="${pageContext.request.contextPath}/resources/Review 6.jpg " alt="Ashina Shrestha">
        </div>
        <div class="review-content">
          <h3>Ashina Shrestha</h3>
          <p>
            I absolutely love the experience! The website is smooth and easy to navigate.
            <a href="#">_Click here_</a> for more info. The design is beautiful ✨
          </p>
          <div class="stars">⭐️⭐️⭐️⭐️☆</div>
        </div>
      </div>

<!----------------------------Review Card 2----------------------------------->
      <div class="review-card">
        <div class="review-img">
          <img src="${pageContext.request.contextPath}/resources/Review 2.jpg" alt="Priya Sharma">
        </div>
        <div class="review-content">
          <h3>Priya Sharma</h3>
          <p>
            Excellent service and user-friendly interface. Would definitely recommend!
            <a href="#">_Visit this_</a> page now.
          </p>
          <div class="stars">⭐️⭐️⭐️☆☆</div>
        </div>
      </div>
      
<!----------------------------Review Card 3----------------------------------->
      <div class="review-card">
  <div class="review-img">
    <img src="${pageContext.request.contextPath}/resources/Review 3.jpg" alt="Anjali Thapa">
  </div>
  <div class="review-content">
    <h3>Anjali Thapa</h3>
    <p>
      Great customer service and quick delivery. Love how everything was packed so neatly. 
      <a href="#">_Explore more_</a> from this collection!
    </p>
    <div class="stars">⭐️⭐️⭐️⭐️⭐️</div>
  </div>
</div>

<!----------------------------Review Card 4----------------------------------->
<div class="review-card">
  <div class="review-img">
    <img src="${pageContext.request.contextPath}/resources/Review 4.jpg " alt="Riya Kapoor">
  </div>
  <div class="review-content">
    <h3>Riya Kapoor</h3>
    <p>
      The product quality exceeded my expectations. Definitely coming back again! 
      <a href="#">_Check it out_</a> for yourself!
    </p>
    <div class="stars">⭐️⭐️⭐️⭐️☆</div>
  </div>
</div>

<!----------------------------Review Card 5----------------------------------->
<div class="review-card">
  <div class="review-img">
    <img src="${pageContext.request.contextPath}/resources/Review 5.jpg" alt="Sneha Koirala">
  </div>
  <div class="review-content">
    <h3>Sneha Koirala</h3>
    <p>
      Some items were out of stock, but support helped me find great alternatives. 
      <a href="#">_Reach support_</a> here.
    </p>
    <div class="stars">⭐️⭐️⭐️☆☆</div>
  </div>
</div>

<!----------------------------Review Card 6----------------------------------->
<div class="review-card">
  <div class="review-img">
    <img src="${pageContext.request.contextPath}/resources/Review 6.jpg" alt="Megha Singh">
  </div>
  <div class="review-content">
    <h3>Megha Singh</h3>
    <p>
      The shades matched my skin perfectly. So happy I found this site! 
      <a href="#">_See full range_</a> now.
    </p>
    <div class="stars">⭐️⭐️⭐️⭐️⭐️</div>
  </div>
</div>
 </div>

    </section>
  </div>
 

</body>
</html>
    