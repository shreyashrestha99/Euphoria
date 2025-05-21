<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>About Us</title>
 <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/aboutus.css" />
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
<!---------------------------Header Section------------------------->
<jsp:include page="header.jsp"/>

  <!-----------------------------About Us Header----------------------------->
  <section class="about-header">
    <h1>ABOUT US</h1>
  </section>

  <!-----------------------------Mission Section------------------------------>
<section class="about-section mission">
  <div class="flex-container">
    <div class="text">
      <h2>Our Mission</h2>
      <p>
        At Euphoria, our mission is simple — to empower self-expression through clean, ethical, and beautifully crafted beauty products.
        We believe that confidence starts from within and shines through every smile, every glow, and every moment.
      </p>
    </div>
    
    <div class="image">
      <img src="${pageContext.request.contextPath}/resources/Mission.jpg" alt="Mission Banner" />
    </div>
  </div>
</section>

  <!------------------------Banner with text---------------------------------->
  <section class="quote-banner">
  <h2>"True beauty is found in authenticity — not in perfection."</h2>
  </section>

  <!------------------------Values Section------------------------------------>
  <section class="about-section values">
  <div class="flex-container reverse">
    <div class="image">
      <img src="${pageContext.request.contextPath}/resources/values.jpg" alt="Values" />
    </div>
    </div>
    <div class="text">
      <h2>Our Values</h2>
      <p>We’re not just about products. We’re about people, the planet, and purpose.</p>
      <p>Our values are rooted in:</p>
      
  <div class="value-items-grid">
  <div class="value-item">
    <h3>🌱 Sustainability</h3>
    <p>We care deeply about the planet and prioritize eco-friendly practices in all our processes.</p>
  </div>
  <div class="value-item">
    <h3>🤝 Inclusivity</h3>
    <p>We celebrate all shades, identities, and beauty standards across the globe.</p>
  </div>
  <div class="value-item">
    <h3>🔍 Transparency</h3>
    <p>We keep things honest — from ingredients to pricing, you’ll always know what you’re getting.</p>
  </div>
  <div class="value-item">
    <h3>💡 Innovation</h3>
    <p>We evolve with trends and tech, constantly bringing fresh ideas to your beauty routine.</p>
  </div>
</div>
    </div>
</section>

  <!-----------------------The Team Section-------------------------------------->
  <section class="team">
    <h2>THE TEAM</h2>
    <div class="team-grid">
      <div class="member-card" onclick="openPopup('bio1')">
        <img src="${pageContext.request.contextPath}/resources/Aaraif.JPG" alt="Aaraif"/>
        <p class="team-member-name">Aaraif Akhtar</p>
      </div>
      <div class="member-card" onclick="openPopup('bio2')">
        <img src="${pageContext.request.contextPath}/resources/Carron.jpg" alt="Carron" />
        <p class="team-member-name">Carron Singh</p>
      </div>
      <div class="member-card" onclick="openPopup('bio3')">
        <img src="${pageContext.request.contextPath}/resources/Oshina.jpg" alt="SOshina" />
        <p class="team-member-name">Oshina Budha Chhetri</p>
      </div>
      <div class="member-card" onclick="openPopup('bio4')">
        <img src="${pageContext.request.contextPath}/resources/Shreya.jpg" alt="YShreya" />
        <p class="team-member-name">Shreya Shrestha</p>
      </div>
      <div class="member-card" onclick="openPopup('bio5')">
        <img src="${pageContext.request.contextPath}/resources/Binaya.jpg" alt="Binaya" />
        <p class="team-member-name">Binaya kharel</p>
      </div>
      
    </div>
  </section>
  
  <!------------------------POPUP BIOS--------------------------------------------->
<div id="bio1" class="popup-overlay">
  <div class="popup-bio">
    <span class="close-btn" onclick="closePopup('bio1')">&times;</span>
    <h2>Aaraif Akhtar</h2>
    <p> Meet Aaraif, The frontend design team, focusing on accessibility and modern UI aesthetics.</p>
  </div>
</div>

<div id="bio2" class="popup-overlay">
  <div class="popup-bio">
    <span class="close-btn" onclick="closePopup('bio2')">&times;</span>
    <h2>Carron Singh</h2>
    <p>Meet Carron, our creative visionary who ensures each product feels as good as it looks.</p>
  </div>
</div>

<div id="bio3" class="popup-overlay">
  <div class="popup-bio">
    <span class="close-btn" onclick="closePopup('bio3')">&times;</span>
    <h2>Oshina Budha Chhetri</h2>
    <p>Meet Oshina, the marketing strategist connecting our brand with beauty lovers everywhere.</p>
  </div>
</div>

<div id="bio4" class="popup-overlay">
  <div class="popup-bio">
    <span class="close-btn" onclick="closePopup('bio4')">&times;</span>
    <h2>Shreya Shrestha</h2>
    <p>Meet Shreya, the team lead who balances vision, creativity, and collaboration like a pro.</p>
  </div>
</div>

<div id="bio5" class="popup-overlay">
  <div class="popup-bio">
    <span class="close-btn" onclick="closePopup('bio5')">&times;</span>
    <h2>Binaya Kharel</h2>
    <p>Meet Binaya, the full-stack developer who brings both brains and beauty to every page.</p>
  </div>
</div>
  

<!-------------------------JavaScript for popup bio------------------------------------>
<script>
function openPopup(id) {
    const popup = document.getElementById(id);
    popup.style.display = 'flex';
    document.body.style.overflow = 'hidden';
  }

  function closePopup(id) {
    const popup = document.getElementById(id);
    popup.style.display = 'none';
    document.body.style.overflow = '';
  }

  // Optional: Click outside to close
  window.addEventListener('click', function (e) {
    const popups = document.querySelectorAll('.popup-overlay');
    popups.forEach(popup => {
      if (e.target === popup) {
        popup.style.display = 'none';
        document.body.style.overflow = '';
      }
    });
  });
</script>


</body>
</html>
    