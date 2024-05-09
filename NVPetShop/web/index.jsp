<%-- 
    Document   : index
    Created on : Mar 9, 2024, 3:28:51 AM
    Author     : acer
--%>

<%@page import="dto.Customer"%>
<%@page import="dto.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>NVPetShop | Where Every Paw Matters</title>
        <link rel="icon" href="./img/favicon.png" />
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
            crossorigin="anonymous"
            />
        <link rel="stylesheet" href="./css/style.css" />
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
                            <li><a href="mainController?action=home" id="home">HOME</a></li>
                            <li><a href="mainController?action=aboutpage">ABOUT</a></li>
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
                            <a href="mainController?action=informationpage">Your information</a>
                            <a href="mainController?action=petinformationpage">Your pet</a>
                            <a href="mainController?action=yourbookingpage">Your booking</a>
                            <a href="mainController?action=feedbackpage">Add feedback</a>                            
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

    <!-- body -->
    <%
        if (session.getAttribute("msg") != null && acc == null) {
    %>
    <marquee><h1><%= session.getAttribute("msg")%></h1></marquee>
            <%
                }
            %>
    <div class="container">
        <div class="body">
            <div class="body__title">
                <h3>NVPetShop</h3>
                <h2>Where Every Paw Matters</h2>
            </div>
            <div class="body__intro">
                <p>
                    Welcome to
                    <a href="./index.jsp" style="color: #9aeba3; text-decoration: none"
                       ><strong>NVPetShop</strong></a
                    >, the ultimate destination for all pet owners! We are dedicated to
                    providing top-notch services for your beloved furry companions.
                    Whether you have a dog, cat, bird, or any other pet, we've got you
                    covered. Our website serves as a comprehensive platform where pet
                    owners can access a wide range of services tailored to meet their
                    pets' needs. We understand that your pets are an integral part of
                    your family, and we strive to create a convenient and enjoyable
                    experience for both you and your furry friends.
                </p>
                <img src="./img/home_1_intro.png" alt="intro" />
            </div>
            <div class="body__bestServices">
                <div class="body__bestServices1">
                    <img
                        src="./img/home_2_best-service1_food.png"
                        alt="bestServices1"
                        />
                    <p>
                        <a
                            href="./index.jsp"
                            style="color: #9aeba3; text-decoration: none"
                            ><strong>NVPetFood</strong></a
                        >
                        understand that your pet's nutrition is of utmost importance to
                        you. That's why we are committed to providing the highest quality
                        and most nutritious food for your furry companions. Our pet food
                        is carefully crafted using only the finest, natural ingredients
                        that are sourced from trusted suppliers. We prioritize the health
                        and well-being of your pets, ensuring that our food is free from
                        artificial additives, fillers, and preservatives. With a focus on
                        balanced nutrition, our recipes are expertly formulated to meet
                        the specific dietary needs of different breeds and life stages.
                        What sets us apart is our dedication to customization. We offer a
                        range of options to cater to your pet's preferences and dietary
                        requirements. Whether your furry friend has food sensitivities,
                        allergies, or specific dietary restrictions, we have specialized
                        formulas that can accommodate their unique needs. In addition to
                        the exceptional quality of our pet food, we provide a seamless and
                        convenient ordering experience. Our user-friendly online platform
                        allows you to select and customize your pet's meals with ease. We
                        offer flexible delivery options, ensuring that your pet's food
                        arrives right at your doorstep at your preferred schedule. The
                        happiness and vitality of your pets are our ultimate goals. Join
                        our satisfied community of pet owners who have witnessed the
                        positive impact of our premium pet food on their furry
                        companions."
                    </p>
                </div>
                <div class="body__bestServices2">
                    <p>
                        <a
                            href="./index.jsp"
                            style="color: #9aeba3; text-decoration: none"
                            ><strong>NVPetGrooming</strong></a
                        >
                        understand that your beloved pets deserve the highest level of
                        care and attention when it comes to their grooming needs. Our team
                        of skilled and compassionate groomers is dedicated to providing a
                        stress-free and enjoyable grooming experience for your furry
                        friends. We offer a wide range of grooming services tailored to
                        meet the unique needs of different breeds and sizes. From a
                        soothing bath to a stylish haircut, our grooming sessions are
                        designed to enhance your pet's well-being and appearance. We use
                        premium, pet-friendly products that are gentle on their skin and
                        coat, ensuring a comfortable and safe grooming process. Beyond the
                        aesthetic benefits, regular grooming plays a crucial role in
                        maintaining your pet's overall health. Our meticulous grooming
                        techniques address issues such as matting, shedding, and hygiene,
                        promoting a healthy coat and skin. We prioritize the well-being of
                        your pets throughout the grooming process. Our facility is
                        equipped with a calm and inviting environment where your pets can
                        relax and feel at ease. Our groomers are trained to handle pets
                        with care and patience, ensuring a positive and enjoyable grooming
                        experience for your furry companions.
                    </p>
                    <img
                        src="./img/home_3_best-service2_gromming.png"
                        alt="best-service2"
                        />
                </div>
                <div class="body__bestServices3">
                    <img
                        src="./img/home_4_bestservice3_veterinary.png"
                        alt="bestservice3"
                        />
                    <p>
                        <a
                            href="./index.jsp"
                            style="color: #9aeba3; text-decoration: none"
                            ><strong>NVVeterinaryCare</strong></a
                        >
                        understand that your pets are an integral part of your family, and
                        their health and well-being are of utmost importance to you. Our
                        team of highly skilled and compassionate veterinarians is
                        dedicated to providing the highest standard of medical care for
                        your furry companions. With state-of-the-art facilities and
                        advanced diagnostic equipment, we offer a comprehensive range of
                        veterinary services to address your pet's health needs at every
                        stage of their life. From routine check-ups and vaccinations to
                        advanced diagnostics and surgical procedures, we provide a wide
                        array of services to ensure your pet receives the best possible
                        care. Our veterinarians stay up-to-date with the latest
                        advancements in veterinary medicine and employ evidence-based
                        practices to deliver accurate diagnoses and tailored treatment
                        plans.We prioritize the comfort and well-being of your pets
                        throughout their veterinary experience. Our facility is designed
                        to create a calming and soothing environment, reducing stress and
                        anxiety for both pets and their owners. We strive to create a
                        positive and supportive atmosphere, making each visit to our
                        clinic a pleasant experience for your furry friends. As pet owners
                        ourselves, we understand the emotional bond you share with your
                        pets. Rest assured that we treat every pet as if they were our
                        own, providing them with compassionate care and attention.
                    </p>
                </div>
            </div>
            <div class="body__fourCircle">
                <div class="body__fourCircle__list">
                    <div class="body_fourCircle__block">
                        <div class="body_fourCircle__block__item">
                            <img src="./img/home_5_lenLich.png" alt="lenLich" />
                            <h2>Schedule</h2>
                        </div>
                    </div>
                    <div class="body_fourCircle__block">
                        <div class="body_fourCircle__block__item">
                            <img src="./img/home_6_hopTac.png" alt="hopTac" />
                            <h2>Cooperate</h2>
                        </div>
                    </div>
                    <div class="body_fourCircle__block">
                        <div class="body_fourCircle__block__item">
                            <img src="./img/home_7_quaTrinh.png" alt="quaTrinh" />
                            <h2>Progress</h2>
                        </div>
                    </div>
                    <div class="body_fourCircle__block">
                        <div class="body_fourCircle__block__item">
                            <img src="./img/home_8_ketQua_.png" alt="ketQua" />
                            <h2>Target</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%
        String tmp = (String) session.getAttribute("tmp1");
    %>
    <div class="main" id="myForm">
        <input type="checkbox" id="chk" aria-hidden="true" />
        <img src="./img/Close-icon.png" alt="" onclick="closeForm()" />
        <div class="signup">
            <form action="mainController" method="post">
                <label for="chk" aria-hidden="true">Sign up</label>
                <input type="text" name="txt" placeholder="User name" required="" />
                <input type="email" name="email" placeholder="Email" required="" />
                <%
                   if(tmp!=null){ 
                %>
                <p style="color: red;"><%= tmp%></p>
                <% 
                    }
                    %>
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

