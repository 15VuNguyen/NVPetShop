<%-- 
    Document   : blog
    Created on : Mar 9, 2024, 3:41:41 AM
    Author     : acer
--%>

<%@page import="dto.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Blog | Where Every Paw Matters</title>
        <link rel="icon" href="./img/favicon.png" />
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
            crossorigin="anonymous"
            />
        <link rel="stylesheet" href="./css/blog.css" />
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
                            <li><a href="./index.jsp">HOME</a></li>
                            <li><a href="./about.jsp">ABOUT</a></li>
                            <li><a href="./services.jsp">SERVICES</a></li>
                            <li><a href="./blog.jsp" id="blog">BLOG</a></li>
                            <li><a href="./contact.jsp">CONTACT</a></li>
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
                            <a href="./addInformation.jsp">Add information</a>
                            <a href="./addPet.jsp">Add pet</a>
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
        <%
            if (acc != null) {
        %>
    <marquee><h1>Hello <%= acc.getUsername()%> come to my shop</h1></marquee>
        <%
            }
        %>
    <div class="container">
        <div class="blog_body__title">
            <h3>NVPetShop</h3>
            <h2>Where Every Paw Matters</h2>
        </div>
        <div class="blog_body">
            <div class="blog_body__list">
                <div class="blog_body__list1">
                    <div class="blog_body__block">
                        <a href="./blog_whatIsFearFreeTraining.jsp" target="_blank"
                           ><img
                                src="./img/blog1_whatIsFearFreeTraining.jpg"
                                alt="blog1"
                                />
                            <div class="blog_body__block__text">
                                <p>What Is Fear Free Training ?</p>
                            </div></a
                        >
                    </div>

                    <!--  -->
                    <div class="blog_body__block">
                        <a href="./blog_theScoopOnPoop.jsp" target="_blank"
                           ><img src="./img/blog2_theScoopOnPoop.jpg" alt="blog2" />
                            <div class="blog_body__block__text">
                                <p>The Scoop On Poop</p>
                            </div></a
                        >
                    </div>

                    <!--  -->
                    <div class="blog_body__block">
                        <a href="./blog_separationAnxietyInCats.jsp" target="_blank"
                           ><img
                                src="./img/blog3_separationAnxietyInCat.jpg"
                                alt="blog3"
                                />
                            <div class="blog_body__block__text">
                                <p>Separation Anxiety In Cats</p>
                            </div></a
                        >
                    </div>
                </div>

                <!--  -->
                <div class="blog_body__list2">
                    <div class="blog_body__block2">
                        <a
                            href="./blog_lookFur-ociousThisHowl-o-ween!.jsp"
                            target="_blank"
                            ><img src="./img/blog4_lookFurOcious.jpg" alt="blog4" />
                            <div class="blog_body__block__text">
                                <p>Look Fur-ocious this Howl-o-ween!</p>
                            </div></a
                        >
                    </div>

                    <!--  -->
                    <div class="blog_body__block2">
                        <a href="./blog_calmYourCat'sFireworksFears.jsp" target="_blank"
                           ><img src="./img/blog5_calmYourCat.jpg" alt="blog5" />
                            <div class="blog_body__block__text">
                                <p>Calm Your Cat's Fireworks Fears</p>
                            </div></a
                        >
                    </div>
                </div>

                <!--  -->
                <div class="blog_body__list3">
                    <div class="blog_body__block2">
                        <a href="./blog_isolationDistressPrevention.jsp" target="_blank"
                           ><img
                                src="./img/blog6_isolationDistressPrevention.jpg"
                                alt="blog6"
                                />
                            <div class="blog_body__block__text">
                                <p>Isolation Distress Prevention</p>
                            </div></a
                        >
                    </div>

                    <!--  -->
                    <div class="blog_body__block2">
                        <a href="./blog_holidayGiftGuideForPetPeople.jsp" target="_blank"
                           ><img src="./img/blog7_dogForCatPeople.jpg" alt="blog7" />
                            <div class="blog_body__block__text">
                                <p>Holiday Gift Guide for Pet People</p>
                            </div></a
                        >
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

