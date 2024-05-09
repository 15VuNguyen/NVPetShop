<%-- 
    Document   : services
    Created on : Mar 9, 2024, 3:37:25 AM
    Author     : acer
--%>

<%@page import="dto.Account"%>
<%@page import="java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.Service"%>
<%@page import="dao.ServiceDAO"%>
<%@ page import="java.util.Date" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Services | Where Every Paw Matters</title>
        <link rel="icon" href="./img/favicon.png" />
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
            crossorigin="anonymous"
            />
        <link rel="stylesheet" href="./css/services.css" />
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
                            <li><a href="mainController?action=home" >HOME</a></li>
                            <li><a href="mainController?action=aboutpage">ABOUT</a></li>
                            <li><a href="mainController?action=servicepage" id="services">SERVICES</a></li>
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
        <%
            if (acc != null) {
        %>
    <marquee><h1>Hello <%= acc.getUsername()%> come to my shop</h1></marquee>
        <%
            }
        %>
    <div class="container">
        <div class="services_body">
            <div class="services_body__title">
                <h3>NVPetShop</h3>
                <h2>Where Every Paw Matters</h2>
            </div>
            <div class="services_body__intro">
                <div class="services_body__intro__image">
                    <img src="./img/about_2_event.png" alt="" />
                </div>
                <div class="services_body__intro__detail">
                    <p>
                        We are not just an ordinary pet store; we are a passionate
                        community of pet lovers. We believe that pets are cherished
                        members of the family and deserve the very best care.
                    </p>
                    <p>
                        <a href="#NVPetFood" style="color: #9aeba3; text-decoration: none"
                           ><strong>NVPetFood</strong></a
                        >
                        - Health and nutrition are our top priorities. We provide a wide
                        range of high-quality pet food, from handcrafted meals to
                        nutritious dry and wet food options. With NVPetFood, you can
                        confidently nourish your pet with the best.
                    </p>
                    <p>
                        <a
                            href="#NVPetGrooming"
                            style="color: #9aeba3; text-decoration: none"
                            ><strong>NVPetGrooming</strong></a
                        >
                        - Beauty in every detail! Our team of expert pet groomers will
                        transform your pet into a true star. From bathing, fur trimming,
                        and nail clipping to ear cleaning and oral hygiene, we deliver an
                        exceptional grooming experience for your beloved companion.
                    </p>
                    <p>
                        <a
                            href="#VeterinaryCare"
                            style="color: #9aeba3; text-decoration: none"
                            ><strong>Veterinary Care</strong></a
                        >
                        - Health comes first. Our professional veterinary team ensures
                        that your pet stays in optimal health. From regular check-ups,
                        vaccinations to treatments and consultations, we are committed to
                        providing comprehensive medical care for your furry friend.
                    </p>
                    <p>
                        <a
                            href="#NVPetEvent"
                            style="color: #9aeba3; text-decoration: none"
                            ><strong>NVPetEvent</strong></a
                        >
                        - Connect and celebrate. We organize exciting events for pets and
                        pet owners, creating opportunities to share joy and experiences
                        within our pet-loving community.
                    </p>
                    <p>
                        <a
                            href="#NVPetTraining"
                            style="color: #9aeba3; text-decoration: none"
                            ><strong>NVPetTraining</strong></a
                        >
                        - Be the perfect companion. Our pet training services help your
                        pet develop the best skills and behaviors. We assist you and your
                        pet in building a loving and trustworthy relationship.
                    </p>
                    <p>
                        <a
                            href="#NVPetSitter"
                            style="color: #9aeba3; text-decoration: none"
                            ><strong>NVPetSitter</strong></a
                        >
                        - We will ensure that your pet is fed, walked, played with, and
                        receives love and attention while you are away. You can feel
                        confident going to work, traveling, or engaging in any other
                        plans, knowing that your pet is being well taken care of.
                    </p>
                </div>
            </div>

            <div class="services_body__list">
                <%
                    ServiceDAO dao = new ServiceDAO();
                    ArrayList<Service> list = dao.getListService();
                    if (list != null && list.size() > 0) {
                        for (Service a : list) {

                %>
                <div class="services_body__block">
                    <form action="mainController" method="post">
                        <input type="hidden" name="serviceid" value="<%= a.getServiceID() %>"/>
                    <div class="services_body__block__image" id="NVPetFood">
                        <img src="<%= a.getServiceImage() %>" alt="service1" />
                    </div>
                    <div class="services_body__block__info">
                        <h2><%= a.getServiceName()%></h2>
                        <strong>Pet Category: </strong>
                        <select name="categoryid" id="">
                            <option value="1">Dog</option>
                            <option value="2">Cat</option>
                            <option value="3">Fish</option>
                            <option value="4">Bird</option>
                            <option value="5">Hamster</option>
                            <option value="6">Rabbit</option>
                            <option value="7">Guinea Pig</option>
                            <option value="8">Turtle</option>
                            <option value="9">Snake</option>
                            <option value="10">Lizard</option>
                            <option value="11">Ferret</option>
                            <option value="12">Hedgehog</option>
                            <option value="13">Tarantula</option>
                            <option value="14">Hermit Crab</option>
                            <option value="15">Gerbil</option>
                            <option value="16">Chinchilla</option>
                            <option value="17">Parrot</option>
                            <option value="18">Horse</option>
                            <option value="19">Miniature Pig</option>
                            <option value="20">Goat</option>
                        </select>
                        <p>
                            <strong>Detailed: </strong>Our Pet Food service offers
                            high-quality and nutritious food options for your pets. We
                            prioritize their care and health by providing products made with
                            fresh, natural ingredients and free from artificial additives or
                            harmful preservatives.
                        </p>
                        <h4><strong>Price: </strong><%= a.getPrice()%>$</h4>
                    </div>
                    <div class="services_body__block__controller">
                        <div class="services_body__block__controller-btn">
                            <button onclick="" class="submit_button button_booking_style submit_button_color" name="action" value="booking">
                                <h2 class="buttonfont_style">BOOKING</h2>
                            </button>
                        </div>            
                        <div class="services_body__block__controller-btn">
                            <button onclick="" class="submit_button submit_button_color"  name="action" value="addtocart">
                                <h2 class="buttonfont_style">ADD TO CART</h2>
                            </button>
                        </div>            

                    </div>
                     </form>
                </div>
                <%
                        }
                    }

                %>
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

