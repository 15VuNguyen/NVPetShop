<%-- 
    Document   : bookingPage
    Created on : Mar 18, 2024, 9:22:41 PM
    Author     : trana
--%>

<%@page import="dao.OrderDAO"%>
<%@page import="java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="dto.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
                            <li><a href="./index.jsp" id="home">HOME</a></li>
                            <li><a href="./about.jsp">ABOUT</a></li>
                            <li><a href="./services.jsp">SERVICES</a></li>
                            <li><a href="./blog.jsp">BLOG</a></li>
                            <li><a href="./contact.jsp">CONTACT</a></li>
                        </ul>
                    </div>
                    <%
                        Account acc = (Account) session.getAttribute("logined");
                        if (acc == null) {
                            session.setAttribute("msg", "you must log in before booking!!");
                            request.getRequestDispatcher("mainController?action=home").forward(request, response);
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
                        <img src="./img/cart-removebg-preview.png" alt="cart_ne" />
                    </div>
                </div>
            </div>
        </div>   
    <marquee><h1>Hello <%= acc.getUsername()%> come to my shop</h1></marquee>
    <div>
        <form action="mainController" method="post">
            <input type="hidden" name="action" value="booking"/>                      
            <h1><%=request.getParameter("serviceid") %> </h1>
            <div>
                <label>Enter your PetID :</label><br />
                <p><input class="emailinput" type="text" name="petid" /><br /></p>
            </div>
            <div>
                <label>Enter your Quantity :</label><br />
                <p><input class="emailinput" type="text" name="quantity" /><br /></p>
            </div>
            <div>
                <label>Enter Discount :</label><br />
                <p><input class="emailinput" type="text" name="discount" /><br /></p>
            </div>
            <div>
                <label>Enter PhoneNumber :</label><br />
                <p><input class="emailinput" type="text" name="phone" /><br /></p>
            </div>
            <div class="block_flex_center">
                <button onclick="" class="submit_button">
                    <h2 class="buttonfont_style">Submit</h2>
                </button>
            </div>     
        </form>



    </div>
</body>
</html>
