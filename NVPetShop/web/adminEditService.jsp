<%-- 
    Document   : adminEditService
    Created on : Mar 19, 2024, 4:08:16 AM
    Author     : acer
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Update Service | Where Every Paw Matters</title>
        <link rel="icon" href="./img/favicon.png" />
        <link
          rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
        />
        <link rel="stylesheet" href="./css/adminEditService.css" />
    </head>
    <body>
        <c:set var="acc" value="${sessionScope.logined}"/>
        
        <header class="header">
            <div class="logo">
              <a href="#"><img src="./img/logo-removebg-preview.png" alt="logo" /></a>
              <a href="#">NVPetShop</a>
              <div class="search_box">
                <input type="text" placeholder="Search NVPetShop" />
                <i class="fa-sharp fa-solid fa-magnifying-glass"></i>
              </div>
            </div>

            <div class="header-icons">
              <i class="fas fa-bell"></i>
              <div class="account">
                <div class="dropdown">
                  <button class="dropbtn">
                    <img src="./img/admin.jpg" alt="admin" />
                  </button>
                  <div class="dropdown-content">
                    <a href="mainController?action=adminProfile">${acc.username}</a>
                    <a href="mainController?action=manageCustomer">Manage Customer</a>
                    <a href="mainController?action=manageBooking">Manage Booking</a>
                    <a href="mainController?action=manageFeedback">Manage Feedback</a>
                    <a href="mainController?action=manageService">Manage Services</a>
                    <a href="mainController?action=logout">Logout</a>
                  </div>
                </div>
              </div>
            </div>
        </header>
                    
                    
        <div class="container">
            <!-- side_nav -->
            <nav>
              <div class="side_navbar">
                <span>Main Menu</span>
                <a href="mainController?action=adminHome">Dashboard</a>
                <a href="mainController?action=adminProfile" >Profile</a>
                <a href="mainController?action=manageCustomer">Customer</a>
                <a href="mainController?action=manageService" class="active">Services</a>
                <a href="mainController?action=manageBooking">Booking</a>
                <a href="mainController?action=manageFeedback">Feedback</a>

                <div class="links">
                  <span>Links</span>
                  <a href="#">Application</a>
                  <a href="#">Privacy and Setting</a>
                  <a href="#">Help and Support</a>
                  <a href="mainController?action=logout">Logout</a>
                </div>
              </div>
            </nav>
            
            <div class="main-body">
                <h2>Update Service</h2>
                <div class="promo_card">
                  <h1>Welcome ${acc.username} to NVPetShop</h1>
                  <span>Where Every Paw Matters.</span>
                  <button>Learn More</button>
                </div>
                  
                  
                <c:if test="${acc != null}">
                    <h2>${requestScope.updatingMsg}</h2>
                    <div class="addForm">
                        <form class="item__form" action="mainController">
                            <input type="hidden" name="serid" value="${param.serid}"/>
                            <div class="item__info">
                              <h4>New service name:</h4>
                              <input type="text" placeholder="Enter service name" name="newServiceName" required=""/>
                            </div>
                            <div class="item__info">
                              <h4>New service image:</h4>
                              <input type="file" placeholder="Enter service image" name="newServiceImage" required=""/>
                            </div>
                            <div class="item__info">
                              <h4>New service price:</h4>
                              <input type="number" placeholder="Enter service price" name="newServicePrice" required=""/>
                            </div>
                            <button class="btn_add" type="submit" name="action" value="UpdateService" >Update</button>
                      </form>
                    </div>
                </c:if>  
            </div>
                            
            <div class="sidebar">
                <c:if test="${acc != null}">
                    <jsp:useBean id="b" class="dao.AccountDAO" scope="request">
                        <h3 style="margin: 10px">Recent Account</h3>
                        <c:forEach items="${b.reccentAccount}" var="ra" begin="0" end="6">
                            <i class="fas fa-euro icon"></i>
                            <div class="info" style="margin: 10px">
                                <h5>${ra.username}</h5>
                                <h6>${ra.email}</h6>
                            </div>
                        </c:forEach>
                    </jsp:useBean>
                </c:if>
            </div>            
        </div>
        <div class="footer_first_test">
            <div class="footer container">
              <h4>Email: NVPetShop@gmail.com</h4>
              <h4>Contact: +123-456-7890</h4>
              <h4>123 Nguyen Hue Street, District 1, Ho Chi Minh City, VietNam</h4>
            </div>
        </div>
    </body>
</html>
