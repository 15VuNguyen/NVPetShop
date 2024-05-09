<%-- 
    Document   : about
    Created on : Mar 9, 2024, 3:34:17 AM
    Author     : acer
--%>

<%@page import="dto.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>About Us | Where Every Paw Matters</title>
        <link rel="icon" href="./img/favicon.png" />
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
            crossorigin="anonymous"
            />
        <link rel="stylesheet" href="./css/about.css" />
    </head>
    <body>
        <div class="header_first_test">
            <div class="header container">
                <div class="header__logo">
                    <a href="./index.jsp"
                       ><img src="./img/logo-removebg-preview.png" alt="logo_ne"
                          /></a>
                    <a href="./index.jsp"><p>NVPetShop</p></a>
                </div>
                <div class="header__right">
                    <div class="header__nav">
                        <ul>
                            <li><a href="mainController?action=home">HOME</a></li>
                            <li><a href="mainController?action=aboutpage" id="about">ABOUT</a></li>
                            <li><a href="mainController?action=servicepage">SERVICES</a></li>
                            <li><a href="mainController?action=blogpage">BLOG</a></li>
                            <li><a href="mainController?action=contactpage">CONTACT</a></li>
                        </ul>
                    </div>
                    <%
                        Account acc = (Account) session.getAttribute("logined");
                        if (acc == null) {
                    %>
                    <button onclick="openForm()">LOGIN</button>
                    <%
                    } else {
                    %>
                    <div class="dropdown" style="float:right;">
                        <button class="dropbtn">Information</button>
                        <div class="dropdown-content">
                            <a href="mainController?action=addinformationPage">Add information</a>
                            <a href="mainController?action=addpetPage">Add pet</a>
                            <a href="mainController?action=logout">Log out</a>
                        </div>
                    </div>
                    <%
                        }
                    %>
                    <button>GETTING STARTED</button>
                    <div class="header__cart">
                        <a href="./viewcart.jsp"><img src="./img/cart-removebg-preview.png" alt="cart_ne" /></a>
                    </div>
                </div>       
            </div>
        </div>
        <!-- body -->
        <div class="container">
            <div class="about_body">
                <div class="about_body__title">
                    <h3>NVPetShop</h3>
                    <h2>Where Every Paw Matters</h2>
                </div>
                <div class="about_body__intro">
                    <p>
                        "Welcome to
                        <a href="./index.jsp" style="color: #9aeba3; text-decoration: none"
                           ><strong>NVPetShop</strong></a
                        >, your ultimate destination for all your pet care needs. We are a
                        dedicated team of pet enthusiasts who understand the importance of
                        providing the best care for your beloved furry friends. At
                        <a href="./index.jsp" style="color: #9aeba3; text-decoration: none"
                           ><strong>NVPetShop</strong></a
                        >, we believe that pets are family, and they deserve the utmost
                        love, attention, and care. Our mission is to create a one-stop-shop
                        where pet owners can find a wide range of high-quality products and
                        services to meet their pets' needs. We offer a carefully curated
                        selection of pet supplies, including premium pet food, toys,
                        grooming products, and accessories. We source our products from
                        trusted brands that prioritize the health and well-being of pets.
                        Whether you have a dog, cat, bird, or small animal, we have
                        everything you need to keep them happy and healthy. In addition to
                        our extensive product range, we provide professional pet grooming
                        services to ensure that your pets look and feel their best. Our
                        experienced groomers are skilled in handling pets of all sizes and
                        breeds, and they use gentle techniques and premium products to give
                        your pets a spa-like experience. We understand that every pet has
                        unique dietary and health requirements. That's why we offer expert
                        advice and personalized guidance to help you make informed decisions
                        about your pet's nutrition and overall well-being. Our friendly and
                        knowledgeable staff is always ready to answer your questions and
                        assist you in finding the right products for your pet. We are proud
                        to be a part of the pet community and actively support animal
                        welfare organizations and initiatives."
                    </p>
                    <img src="./img/about_1_aboutUs.png" alt="" />
                </div>
                <div class="about_body__event">
                    <div class="about_body__event__list">
                        <div class="about_body__event__block">
                            <img src="./img/about_2_event.png" alt="event1" />
                            <h5>Organizing Pet-Centric Events</h5>
                        </div>
                        <div class="about_body__event__block">
                            <img src="./img/about_3_event.png" alt="event2" />
                            <h5>Collaborating for Optimal Results</h5>
                        </div>
                    </div>
                </div>
                <div class="body__FAQ">
                    <h3>FAQ:</h3>

                    <!-- TAB 1 -->
                    <div class="a-tab">
                        <input id="tab-1" class="a-check" type="checkbox" />
                        <label for="tab-1" class="a-label"
                               >Why did you decide to establish NVPetShop?</label
                        >

                        <div class="a-content">
                            <hr />
                            We decided to establish NVPetShop because of my passion and love
                            for pet care. I wanted to create a reliable and professional
                            destination to provide the best products and services for pet
                            owners.
                        </div>
                    </div>

                    <!-- TAB 2 -->
                    <div class="a-tab">
                        <input id="tab-2" class="a-check" type="checkbox" />
                        <label for="tab-2" class="a-label"
                               >Why do you believe NVPetShop can provide significant value and
                            benefits to customers?</label
                        >
                        <div class="a-content">
                            <hr />
                            NVPetShop can provide significant value and benefits to customers
                            by offering high-quality products, professional services, and
                            dedicated and attentive pet care advice.
                        </div>
                    </div>
                    <!-- TAB 3 -->
                    <div class="a-tab">
                        <input id="tab-3" class="a-check" type="checkbox" />
                        <label for="tab-3" class="a-label"
                               >What are your specific goals and expectations for
                            NVPetShop?</label
                        >
                        <div class="a-content">
                            <hr />
                            Our goal is to become a leading pet care destination in the area,
                            providing customers with exceptional shopping experiences and
                            services, while contributing to improving the quality of life for
                            pets.
                        </div>
                    </div>
                    <!-- TAB 4 -->
                    <div class="a-tab">
                        <input id="tab-4" class="a-check" type="checkbox" />
                        <label for="tab-4" class="a-label"
                               >Why do you believe your company will be successful and
                            sustainable in the pet care industry?</label
                        >
                        <div class="a-content">
                            <hr />
                            We will be successful and sustainable in the pet care industry
                            because we prioritize quality and customer satisfaction,
                            constantly stay updated on the latest trends, and continuously
                            enhance the professional skills of our team.
                        </div>
                    </div>
                    <!-- TAB 5 -->
                    <div class="a-tab">
                        <input id="tab-5" class="a-check" type="checkbox" />
                        <label for="tab-5" class="a-label"
                               >What do you want to contribute to the pet community through your
                            company?</label
                        >
                        <div class="a-content">
                            <hr />
                            We aim to contribute to the pet community by promoting responsible
                            pet ownership, organizing charitable activities to support animal
                            welfare organizations, and improving the living conditions of
                            abandoned and abused animals. We will also create events and
                            educational programs to raise awareness about pet care and foster
                            a loving and caring community for animals.
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="main" id="myForm">
            <input type="checkbox" id="chk" aria-hidden="true" />
            <img src="./img/Close-icon.png" alt="" onclick="closeForm()" />
            <div class="signup">
                <form action="mainController" method="post">
                    <label for="chk" aria-hidden="true">Sign up</label>
                    <input type="text" name="txt" placeholder="User name" required="" />
                    <input type="email" name="email" placeholder="Email" required="" />
                    <input
                        type="password"
                        name="pswd"
                        placeholder="Password"
                        required=""
                        />
                    <button value="signup" name="action" type="submit">Sign Up</button>
                </form>
            </div>

            <div class="login">
                <form action="mainController" method="post">
                    <label for="chk" aria-hidden="true">Login</label>
                    <input type="email" name="email" placeholder="Email" required="" />
                    <input
                        type="password"
                        name="pswd"
                        placeholder="Password"
                        required=""
                        />
                    <button value="login" name="action" type="submit">Login</button>
                </form>
            </div>
        </div>
        <div class="footer_first_test">
            <div class="footer container">
                <h4>Email: NVPetShop@gmail.com</h4>
                <h4>Contact: +123-456-7890</h4>
                <h4>123 Nguyen Hue Street, District 1, Ho Chi Minh City, VietNam</h4>
            </div>
        </div>
        <script>
            function closeForm() {
                document.getElementById("myForm").style.display = "none";
            }
            function openForm() {
                document.getElementById("myForm").style.display = "block";
            }
        </script>
    </body>
</html>

