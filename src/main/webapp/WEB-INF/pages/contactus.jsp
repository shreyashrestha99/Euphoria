<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Contact Us</title>
  <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/contactus.css" />
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  </head>
  
<body>
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
<!----------------------------Header Section------------------------------------->
<jsp:include page="header.jsp"/>

<!------------------------Contact Section------------------------------------->
  <section class="contact-page">
  
<!------------------------Contact Us------------------------------------------>
    <div class="contact-header">
      <h1>CONTACT US</h1>
      <p>Let’s work together!<br/>Have a question or just want to say hello? Reach out to us.</p>
    </div>

<!------------------------Container------------------------------------------->
    <div class="contact-container">
    
<!------------------Left Side: Info & Map------------------------------------->
      <div class="contact-info">
        <div class="info-block">
          <p><i class="fas fa-map-marker-alt"></i> Kathmandu, Nepal</p>
          <p><i class="fas fa-envelope"></i> euphoriabeauty@gmail.com</p>
          <p><i class="fas fa-phone"></i> +977 9876543210</p>
        </div>
           
       <div class="map-box">
  <iframe 
    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7066.447421281175!2d85.32314434999999!3d27.679479800000017!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb19c863656a8f%3A0xf3ecc697da608c63!2sPatan%20Dhoka%2C%20Lalitpur%2044600!5e0!3m2!1sen!2snp!4v1745186020121!5m2!1sen!2snp"
    width="100%"
    height="300"
    style="border:0;"
    allowfullscreen=""
    loading="lazy"
    referrerpolicy="no-referrer-when-downgrade">
  </iframe>
</div>
</div>

<!--------------------Right Side: Form------------------------------------------->
     <div class="contact-form">
  <form id="contactForm">
    <label for="name">Name</label>
    <input type="text" id="name" placeholder="Enter your name" required>

    <label for="email">Email</label>
    <input type="email" id="email" placeholder="Enter your email" required>

    <label for="message">Message</label>
    <textarea id="message" rows="5" placeholder="Your message..." required></textarea>

    <button type="submit">Send Message</button>

<!---------------------Success Message-------------------------------------------->
    <div id="successMessage" class="success-message">Thank you! Your message has been sent. 💌</div>
  </form>
</div>
    </div>
  </section>
  
 

<!-------------------------JavaScript for success message------------------------------>
<script>
  const form = document.getElementById("contactForm");
  const success = document.getElementById("successMessage");

  form.addEventListener("submit", function (e) {
    e.preventDefault(); // Prevent form from actually submitting

    // Simulate message sending delay
    setTimeout(() => {
      success.classList.add("show"); // Show the message with transition
      this.reset(); // Reset form fields

      // Hide the success message after 5 seconds
      setTimeout(() => {
        success.classList.remove("show");
      }, 5000);
    }, 500);
  });
</script>
</body>
</html>
    