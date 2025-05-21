<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
  <meta charset="UTF-8">
  <title>Product</title>
  <meta name="author" content="Oshina Budha Chhetri" />
  <meta name="description" content="Ecommerce Website for makeup Products" />
  <meta name="keywords" content="Makeup Products, Makeup store, Ecommerce" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/product.css" />
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  </head>
  <body>
      <jsp:include page="header.jsp"/>


  <!--slide with images displaying and changing every 2 second-->
  <div class="header-container">
  <!-- Slideshow images -->
    <img class="mySlides" src="${pageContext.request.contextPath}/resources/Mascara.jpg" />
    <img class="mySlides" src="${pageContext.request.contextPath}/resources/Gloss.jpg" />
    <img class="mySlides" src="${pageContext.request.contextPath}/resources/Blush.jpg" />
    <img class="mySlides" src="${pageContext.request.contextPath}/resources/Foundation.jpeg" />
  </div>
  <!--product display box-->
  <section 
    style="margin-top: 50px; align-items: center; padding-left: 200px"
    class="flex2">

    <!--Foundation-->
    <div>
      <table class="prod">
        <tr>
          <th style="width: 30%" class="ig">
            <img src="${pageContext.request.contextPath}/resources/Foundation.jpeg" width="300px" height="300px" />
          </th>
          <th style="width: 50%">
            <h2>GlowUp Liquid Foundation</h2>
            Long-Lasting, lightweight, Skin GlowRadiant Foundation - 24h Wear and Hydration. Perfect for all skin types.
            <br /><br />
            <p class="align">Price: $30.99</p>
            <br />
            <div class="container2">
              <!--product description and order page redirection-->
              <button type="submit" class="prod-btn" onclick="addToCart('GlowUp Liquid Foundation')">Add to Cart</button>
            </div>
          </th>
        </tr>
      </table>
    </div>
    <br /><br />

    <div>
      <table class="prod">
        <tr>
          <th style="width: 30%" class="ig">
            <img src="${pageContext.request.contextPath}/resources/L'Oreal Paris 2.jpg " width="300px" height="300px" />
          </th>
          <th style="width: 50%">
            <h2>Infallible 24H Fresh Wear</h2>
            24-hour wear with natural, lightweight, healthy finish for everday wear and flawless coverage. Perfect for all skin types.
            <br /><br />
            <p class="align">Price: $39.99</p>
            <br /><br />
            <div class="container2">
              <!--product description and order page redirection-->
              <button type="submit" class="prod-btn" onclick="addToCart('Infallible 24H Fresh Wear')">Add to Cart</button>
            </div>
          </th>
        </tr>
      </table>
    </div>
    <br /><br />

    <div>
      <table class="prod">
        <tr>
          <th style="width: 30%" class="ig">
            <img src="${pageContext.request.contextPath}/resources/download (2) (1).jpg" width="300px" height="250px" />
          </th>
          <th style="width: 50%">
            <h2>Chanel Les Beiges Healthy Glow Foundation</h2>
            Lightweight, luminous coverage for a radiant complexion, Smooths and evens skin tone with a natural, SPF 25 for added sun protection. Suitable for all skin types, including sensitive skin.
            <br /><br />
            <p class="align">Price: $50.99</p>
            <br /><br />
            <div class="container2">
              <!--product description and order page redirection-->
              <button type="submit" class="prod-btn" onclick="addToCart('Chanel Les Beiges Healthy Glow Foundation')">Add to Cart</button>
            </div>
          </th>
        </tr>
      </table>
    </div>
    <br /><br />

    <!-- Mascara -->
    <div>
      <table class="prod">
        <tr>
          <th style="width: 30%" class="ig">
            <img src="${pageContext.request.contextPath}/resources/Mascara 11.jpeg" width="400px" height="400px" />
          </th>
          <th style="width: 50%">
            <h2>VolumeMax Waterproof Mascara</h2>
            Gives dramatic length and volume. Smudge-proof, waterproof formula that lasts all day.
            <br /><br />
            <p class="align">Price: $20.00</p>
            <br /><br />
            <div class="container2">
              <!--product description and order page redirection-->
              <button type="submit" class="prod-btn" onclick="addToCart('VolumeMax Waterproof Mascara')">Add to Cart</button>
            </div>
          </th>
        </tr>
      </table>
    </div>
    <br /><br />

    <div>
      <table class="prod">
        <tr>
          <th style="width: 30%" class="ig">
            <img src="${pageContext.request.contextPath}/resources/Mascara 2.jpg " width="400px" height="400px" />
          </th>
          <th style="width: 50%">
            <h2>L'Oréal Paris Voluminous Lash Paradise Mascara</h2>
            Soft wavy brush for maximum lash impact. Long-lasting,ilky, smooth formula glides on evenly without clumping. Suitable for sensitive eyes and contact lens.
            <br /><br />
            <p class="align">Price: $14.99</p>
            <br /><br />
            <div class="container2">
              <!--product description and order page redirection-->
              <button type="submit" class="prod-btn" onclick="addToCart('L Oréal Paris Voluminous Lash Paradise Mascara')">Add to Cart</button>
            </div>
          </th>
        </tr>
      </table>
    </div>
    <br /><br />


      <!-- Blush -->
    <div>
      <table class="prod">
        <tr>
          <th style="width: 30%" class="ig">
            <img src="${pageContext.request.contextPath}/resources/Elf blush.jpg" width="400px" height="300px" />
          </th>
          <th style="width: 50%">
            <h2>RosyCheeks Blush Palette</h2>
            Ultra-fine powder for smooth, seamless blending. Includes three shades for custom tones.
            <br /><br />
            <p class="align">Price: $19.99</p>
            <br /><br />
            <div class="container2">
              <!--product description and order page redirection-->
              <button type="submit" class="prod-btn" onclick="addToCart('RosyCheeks Blush Palette')">Add to Cart</button>
            </div>
          </th>
        </tr>
      </table>
    </div>
    <br /><br />

    <div>
      <table class="prod">
        <tr>
          <th style="width: 30%" class="ig">
            <img src="${pageContext.request.contextPath}/resources/Blush -1.jpg" width="400px" height="300px" />
          </th>
          <th style="width: 50%">
            <h2>CHANEL Joues Contraste Powder Blush</h2>
            Soft blendable blush with a radiant finish. Available in a wide range of elegant shades. Comes with a mini brush for easy application on the go.
            <br /><br />
            <p class="align">Price: $25.00</p>
            <br /><br />
            <div class="container2">
              <!--product description and order page redirection-->
              <button type="submit" class="prod-btn" onclick="addToCart('CHANEL Joues Contraste Powder Blush')">Add to Cart</button>
            </div>
          </th>
        </tr>
      </table>
    </div>
    <br /><br />

      <!-- Gloss -->
    <div>
      <table class="prod">
        <tr>
          <th style="width: 30%" class="ig">
            <img src="${pageContext.request.contextPath}/resources/Lip-Gloss2.jpeg" width="500px" height="450px" />
          </th>
          <th style="width: 50%">
            <h2>ShinyLips Lip Gloss</h2>
            Non-sticky, high-shine lip gloss with a hint of color. A lip gloss that provides shine while protecting lips with SPF 25. Available in various shades. Enriched with Vitamin E for soft lips.
            <br /><br />
            <p class="align">Price: $7.00</p>
            <br /><br />
            <div class="container2">
              <!--product description and order page redirection-->
              <button type="submit" class="prod-btn" onclick="addToCart('ShinyLips Lip Gloss')">Add to Cart</button>
            </div>
          </th>
        </tr>
      </table>
    </div>
    <br /><br />

    <div>
      <table class="prod">
        <tr>
          <th style="width: 30%" class="ig">
            <img src="${pageContext.request.contextPath}/resources/Lip-Gloss1.jpeg" width="300px" height="300px" />
          </th>
          <th style="width: 50%">
            <h2>Dior Unisex Cherry Oil</h2>
            Protects against stress factors and drying. Combines the lasting power of a stain with the shine of a gloss.
            <br /><br />
            <p class="align">Price: $10.00</p>
            <br /><br />
            <div class="container2">
              <!--product description and order page redirection-->
              <button type="submit" class="prod-btn" onclick="addToCart('Dior Unisex Cherry Oil')">Add to Cart</button>
            </div>
          </th>
        </tr>
      </table>
    </div>
    <br /><br />
  </section>
</body>
</html>