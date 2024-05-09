<%-- 
    Document   : adminHome
    Created on : Mar 13, 2024, 6:36:48 PM
    Author     : acer
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dto.OrderDetail"%>
<%@page import="dto.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin Dashboard | Where Every Paw Matters</title>
    <link rel="icon" href="./img/favicon.png" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
    />
    <link rel="stylesheet" href="./css/adminHome.css" />
  </head>
  <body>
    
<!--//        Account acc = (Account)session.getAttribute("logined"); này là lệnh của java-->
    
    <!--dưới đây là tag-->
    <c:set var="acc" value="${sessionScope.logined}"/>
    <!-- header -->
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
              <a href="#">${acc.username}</a>
              <a href="mainController?action=manageCustomer">Manage Customer</a>
              <a href="#">Manage Booking</a>
              <a href="#">Manage Feedback</a>
              <a href="mainController?action=manageService">Manage Services</a>
              <a href="#">Logout</a>
            </div>
          </div>
        </div>
      </div>
    </header>

    <!-- container -->
    <div class="container">
      <!-- side_nav -->
      <nav>
        <div class="side_navbar">
          <span>Main Menu</span>
          <a href="mainController?action=adminHome" class="active">Dashboard</a>
          <a href="#">Profile</a>
          <a href="mainController?action=manageCustomer">Customers</a>
          <a href="mainController?action=manageService">Services</a>
          <a href="#">Booking</a>
          <a href="#">Feedback</a>
          

          <div class="links">
            <span>Links</span>
            <a href="#">Application</a>
            <a href="#">Privacy and Setting</a>
            <a href="#">Help and Support</a>
            <a href="mainController?action=logout">Logout</a>
          </div>
        </div>
      </nav>

      <!-- main_body -->
      <div class="main-body">
        <h2>Dashboard</h2>
        <div class="promo_card">
          <h1>Welcome ${acc.username} to NVPetShop</h1>
          <span>Where Every Paw Matters.</span>
          <button>Learn More</button>
        </div>
       
        <!--recent order-->
        <c:if test="${acc != null}">
            <jsp:useBean id="a" class="dao.OrderDetailDAO" scope="request">
                <div class="history_lists">
                    <div class="list1">
                        <h3 style="margin: 20px">Recent Order</h3>
                    </div>
                </div>
                
                <table>
                    <thead>
                        <tr>
                            <th>OrderID</th>
                            <th>ServiceID</th>
                            <th>PetID</th>
                            <th>Status Order</th>
                            <th>Quantity</th>
                            <th>Order Date</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${a.reccentOrderDetail}" var="od" begin="0" end="6">
                            <tr>
                                <td>${od.ordid}</td>
                                <td>${od.serviceid}</td>
                                <td>${od.petid}</td>
                                <td>${od.status}</td>
                                <td>${od.quantity}</td>
                                <td>${od.orderDate}</td>
                                <td>${od.total}$</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </jsp:useBean>
        </c:if>
      </div>

      <!-- sidebar -->
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
