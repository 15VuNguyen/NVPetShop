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
    <title>Manage Service | Where Every Paw Matters</title>
    <link rel="icon" href="./img/favicon.png" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
    />
    <link rel="stylesheet" href="./css/adminManageService.css" />
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
        <h2>Manage Service</h2>
        <div class="promo_card">
          <h1>Welcome ${acc.username} to NVPetShop</h1>
          <span>Where Every Paw Matters.</span>
          <button>Learn More</button>
        </div>
        
        <!-- main_body -->
        <!--lấy tất cả service-->
        <c:if test="${acc != null}">
            <jsp:useBean id="a" class="dao.ServiceDAO" scope="request">
                <div>
                    <h3 style="margin: 20px">Service List</h3>
                </div>
                <h2>${requestScope.updatingMsg}</h2>
                <h2>${requestScope.disableStatusMsg}</h2>
                <button onclick="openForm()" class="btn_add">Add New Service</button>

                <div class="addForm" id="myForm">
                    <form class="item__form" action="mainController">
                    <img
                      class="imgages"
                      src="./img/Close-icon.png"
                      alt=""
                      onclick="closeForm()"
                    />
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
                    <button class="btn_add" type="submit" name="action" value="addNewService" >Add Service</button>
                  </form>
                </div>
                <h2>${requestScope.addingMsg}</h2>
                <div class="header_fixed">
                    <table>
                        <thead>
                            <tr>
                                <th>ServiceID</th>
                                <th>ServiceName</th>
                                <th>ServiceImage</th>
                                <th>State</th>
                                <th>Price</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <c:forEach var="service" items="${a.services}">
                            <form action="mainController">
                                <input type="hidden" name="serid" value="${service.getServiceID()}"/>
                                <tbody>
                                    <tr>
                                        <td>${service.getServiceID()}</td>
                                        <td>${service.getServiceName()}</td>
                                        <td><img src="${service.getServiceImage()}" alt="alt"/></td>
                                        <td>${service.isState() == true ? "Enable" : "Disable"}</td>
                                        <td>${service.getPrice()}$</td>
                                        <td>
                                            <input class="action_btn" type='submit' value='Edit' name="action" >
                                            <input class="action_btn" type='submit' value='Disable' name="action" onclick="return window.confirm('are u sure?')" >
                                            <input class="action_btn" type='submit' value='View-Service' name="action" >
                                        </td>
                                    </tr>
                                </tbody>
                            </form>
                        </c:forEach>
                    </table>
                </div>
            </jsp:useBean>
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
  <script>
      function closeForm() {
        document.getElementById("myForm").style.display = "none";
      }
      function openForm() {
        document.getElementById("myForm").style.display = "block";
      }
    </script>
</html>

