<%-- 
    Document   : adminManageService
    Created on : Mar 15, 2024, 6:45:04 AM
    Author     : acer
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Manage Customer | Where Every Paw Matters</title>
    <link rel="icon" href="./img/favicon.png" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
    />
    <link rel="stylesheet" href="./css/adminManageCustomer.css" />
  </head>
  <body>
    <!-- header -->
    
    <!--tạm thời comment thẻ bên dưới--> 
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
        <h2>Manage Customer</h2>
        <div class="promo_card">
          <h1>Welcome ${acc.username} to NVPetShop</h1>
          <span>Where Every Paw Matters.</span>
          <button>Learn More</button>
        </div>
          
        <form action="mainController" method="post" style="display: flex; gap: 10px; max-width: 400px; ">
            <input type="hidden" name="action" value="adminSearchCustomer"/>
            <input type="text" name="txtsearch" value="<%= (request.getParameter("findname") != null) ? request.getParameter("findname") : ""  %>" placeholder="Search..." style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px; background-color: #fff; color: #333;"/>
            <input type="submit" value="Search" style="background-color: #007bff; color: #fff; cursor: pointer; border-radius: 2px; padding: 10px;"/>
        </form>
        
            
        <c:set var="list" value="${requestScope.ListAccount}" />
        <c:if test="${list != null}">
            <div class="header_fixed">
                <table>
                    <thead>
                        <tr>
                            <th>AccountID</th>
                            <th>UserName</th>
                            <th>Email</th>
                            <th>Role</th>
                            <th>State</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <c:forEach var="accountItem" items="${list}">
                        <form action="mainController">
                            <input type="hidden" name="txtaccid" value="${accountItem.id}"/>
                            <tbody>
                                <tr>
                                    <td>${accountItem.id}</td>
                                    <td>${accountItem.username}</td>
                                    <td>${accountItem.email}</td>
                                    <td>${accountItem.role}</td>
                                    <td>${accountItem.status == true ? "Enable" : "Disable"}</td>
                                    <td>
                                        <c:if test="${acc.id != accountItem.id}">
                                            <!--<input type='submit' value='block/unblock' name="action" onclick="return window.confirm('are u sure?')" >-->
                                            <input type='submit' value='block/unblock' name="action" onclick="return window.confirm('are u sure?')" style="background-color: black; color: #fff; border: none; padding: 10px 20px; border-radius: 5px; cursor: pointer;">
                                        </c:if>
                                    </td>
                                </tr>
                            </tbody>
                        </form>
                    </c:forEach>
                </table>
            </div>
        </c:if>    
      </div>
      <!-- main_body -->

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

