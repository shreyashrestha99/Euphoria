<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css" />
</head>
<body>
<header>
        <div class="header-container">
            <div class="image-logo">
                <img src="${pageContext.request.contextPath}/resources/logo.jpg" height="45px" width="auto" alt="Euphoria logo">
            </div>

            <h1 class="logo">Euphoria :)</h1>
            <div class="useradmin-links">
                <a href="${pageContext.request.contextPath}/pages/login.jsp">Login</a>
                <a href="${pageContext.request.contextPath}/pages/register.jsp">Register</a>
            </div>
            <nav class="nav-bar">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/home.jsp">Home</a></li>
                    <li><a href="${pageContext.request.contextPath}/pages/products.jsp">Product</a></li>
                    <li><a href="${pageContext.request.contextPath}/pages/aboutus.jsp">About Us</a></li>
                    <li><a href="${pageContext.request.contextPath}/pages/contactus.jsp">Contact Us</a></li>
                    <li><a href="${pageContext.request.contextPath}/pages/review.jsp">Review</a></li>

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
    <section class="description">
        <div class="intoduction-image">
            <img src="${pageContext.request.contextPath}/resources/description.jpg" alt="Group photo">
        </div>

        <div class="introduction">
            <h2> Makeup should never be a mask — it should be your armor, your freedom, your joy.<br>
                We started small, with big dreams — today, we’re redefining beauty in Nepal, one glow at a time.”
            </h2>
            <button class="cont-btn" onclick="document.location='product.jsp'">
                Shop Now
            </button>
        </div>


    </section>

    <div class="popular-products">
        <br>
        <br>
        <h2> Popular Products</h2>
        <div class="product-details">
            <div class="product">
                <img src="${pageContext.request.contextPath}/resources/picture6.jpg">
                <div class="popular-product-details">
                    <h1>For summer</h1>
                    <stong> Best Foundation</stong>
                    <h1>Starting at $500/-</h1>
                    <button class="cont-btn" onclick="document.location='product.jsp'">
                        Shop Now
                    </button>
                </div>
            </div>

            <div class="product">
                <img src="${pageContext.request.contextPath}/resources/picture7.jpg">
                <div class="popular-product-details">
                    <h1>For summer</h1>
                    <stong> Best Lip Gloss</stong>
                    <h1>Starting at $500/-</h1>
                    <button class="cont-btn" onclick="document.location='product.jsp'">
                        Shop Now
                    </button>
                </div>
            </div>

            <div class="product">
                <img src="${pageContext.request.contextPath}/resources/picture8.jpg">
                <div class="popular-product-details">
                    <h1>For summer</h1>
                    <stong> Best Blushes</stong>
                    <h1>Starting at $500/-</h1>
                    <button class="cont-btn" onclick="document.location='product.jsp'">
                        Shop Now
                    </button>
                </div>

            </div>

            <div class="product">
                <img src="${pageContext.request.contextPath}/resources/picture9.jpg">
                <div class="popular-product-details">
                    <h1>For summer</h1>
                    <stong> Best Mascara</stong>
                    <h1>Starting at $500/-</h1>
                    <button class="cont-btn" onclick="document.location='product.jsp'">
                        Shop Now
                    </button>
                </div>
            </div>

        </div>
        <br>
        <br>

        <section class="new-products">
            <h1> New Products </h1>
            <div class="product-grid">

                <div class="box">
                    <img src="${pageContext.request.contextPath}/resources/picture10.jpg" class="box-img">
                    <br>
                    <div class="box-text">
                        <h1>DIOR LIP GLOSS</h1>
                        <p> Dior Lip gloss puts high-shine on your lips and nourishes your lips.<br>It has lots of
                            nourishing ingredients and lasts long for 24/7.<br>Perfect for glams and special ocassion.
                        </p>
                        <h1>Price=Rs2000-/</h1>
                        <button class="cont-btn" onclick="document.location='product.jsp'">
                            SEE MORE</button>
                    </div>
                </div>

                <div class="box">
                    <img src="${pageContext.request.contextPath}/resources/picture11.jpg" class="box-img">
                    <div class="box-text">
                        <h1>ELF LONGLASTING MATTE LIPSTICK</h1>
                        <p> ELF LONGLASTING MATTE LIPSTICK is the best for a bold and elegant look.<br>It is easy to
                            apply and lasts long for 24/7.<br>It is cruelty-free, vegan, and budget-friendly — beauty
                            that empowers!</p>
                        <h1>Price=Rs1500/-</h1>
                        <button class="cont-btn" onclick="document.location='product.jsp'">
                            SEE MORE</button>
                    </div>
                </div>

                <div class="box">
                    <img src="${pageContext.request.contextPath}/resources/picture12.jpg" class="box-img" style="width:360px;height:450px">
                    <div class="box-text">
                        <h1>Sunshine Peripera Blush</h1>
                        <p> Sunshine Peripera Blush is the best blush available for looking fresh and youthful.<br>It
                            has a lightweight formula that lasts 24/7 and comes at a affordable price.</p>
                        <br>
                        <h1>Price=Rs1500/-</h1>
                        <button class="cont-btn" onclick="document.location='product.jsp'">
                            SEE MORE</button>
                    </div>

                </div>
                <div class="box">
                    <img src="${pageContext.request.contextPath}/resources/picture13.jpg" class="box-img" style="width:360px;height:450px">
                    <div class="box-text">
                        <h1>ELF concelor</h1>
                        <p> ELF concelor gives a full-cover glam look.<br> It hides blemishes, dark circles, and redness
                            with ease—while staying lightweight and comfortable.BEST for long wear and budget friendly!
                        </p>
                        <br>
                        <h1>Price=Rs1000/-</h1>
                        <button class="cont-btn" onclick="document.location='product.jsp'">
                            SEE MORE </button>
                    </div>
                </div>


            </div>
            <div class="see-more">
                <a href="${pageContext.request.contextPath}/pages/product.jsp">See More →</a>
            </div>
         </div>
    </section>
    <br>
    <br>
    <section class="short-description">
        <div class="descrption-bar">
            <p>
                At Euphoria, we believe makeup is more than just color — it's a form of self-expression, a tool for
                empowerment, and a celebration of femininity in all its forms.

                Founded by women, for women — and everyone who loves beauty — Euphoria was created to break
                stereotypes
                and embrace diversity. Whether you're going bold or keeping it natural, our products are made to
                amplify
                your confidence, not cover it up.

                “Empowered women empower the world — and they do it with a little blush and a lot of boldness.”

            </p>
        </div>
    </section>


    <div class="connection-app">
        <img src="${pageContext.request.contextPath}/resources/picture4.jpg" class="flex-image" alt="Euphoria logo">
        <div class="flex">
            <p>LETS STAY IN TOUCH !WE WILL LET YOU KNOW ABOUT THE LATEST SALES AND NEW RELEASES!</p>
            <div class="media-links">
                <a href="https://www.facebook.com"><i class="fa-brands fa-facebook"></i></a>
                <a href="https://www.instagram.com"><i class="fa-brands fa-instagram"></i></a>
                <a href="https://twitter.com/?lang=en"><i class="fa-brands fa-twitter"></i></a>
                <a href="https://www.linkedin.com/"><i class="fa-brands fa-linkedin"></i></a>
            </div>
        </div>
    </div>


    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="footer-col">
                    <ul>
                        <li>
                            <h1>Company</h1>
                            <br>
                        </li>
                        <li><a href="${pageContext.request.contextPath}/pages/aboutus.jsp">About Us</a></li>
                        <li><a href="${pageContext.request.contextPath}/pages/contactus.jsp">Contact us</a></li>
                        <li> <a href="https://maps.app.goo.gl/sKiMr84LqrqznrMm6">Address:Patan,Jhatapol,Lalitpur</a></li>
                        <h1>Contact Details</h1>
                        <li><a>Email: Euphoria25@gmail.com</a></li>
                        <li><a>Phone: +977-8908909890</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <ul>
                        <h1>Quick Links</h1>
                        <br>
                        <li><a href="${pageContext.request.contextPath}/pages/home.jsp">Home</a></li>
                        <li><a href="${pageContext.request.contextPath}/pages/product.jsp">Products</a></li>
                        <li><a href="/pages/review.html">Reviews</a></li>
                        <li><a href="/pages/login.html">Login </a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <ul>
                        <h1>Trusted brands</h1>
                        <br>
                        <li><a href="https://www.elfcosmetics.com">Elf</a></li>
                        <li><a href="https://www.dior.com/">Dior</a></li>
                        <li><a href="https://www.loreal.com/">Loreal Paris</a></li>
                        <li><a href="https://www.chanel.com/">Channel</a></li>

                    </ul>
                </div>
                <div class="footer-col">

                    <div class="payment-apps">
                        <h1>Payment Available </h1>
                        <img src="${pageContext.request.contextPath}/resources/picture 5.png" width="200px" height="100px" title="esewa">
                    </div>
                </div>
                <div class="footer-end">
                    <br>
                    <p>&copy;2000-2025 Euphoria. All Rights Reserved.</p>
                    <p>Created by Euphoria</p>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>