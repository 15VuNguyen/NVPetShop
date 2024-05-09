<%-- 
    Document   : contact
    Created on : Mar 9, 2024, 3:45:17 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dto.Account"%>
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
    <link rel="stylesheet" href="./css/contact.css" />
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
              <li><a href="mainController?action=aboutpage">ABOUT</a></li>
              <li><a href="mainController?action=servicepage">SERVICES</a></li>
              <li><a href="mainController?action=blogpage">BLOG</a></li>
              <li><a href="mainController?action=contactpage" id="contact">CONTACT</a></li>
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
            <img src="./img/cart-removebg-preview.png" alt="cart_ne" />
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
    <div class="container body">
      <div class="body__detail">
        <h1><strong>REACH OUT</strong></h1>
        <p>
          If you have a question that wasn’t answered on our page, please
          contact us using the <strong>Email: </strong>NVPetShop@gmail.com. Or
          giving us a call at <strong>123-456-7890</strong>
        </p>
      </div>
      <div class="body__img">
        <img src="./img/contact_1_detail.png" alt="contact1" />
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

