<%-- 
    Document   : adminUpdateInfomationCustomerPet
    Created on : Mar 20, 2024, 1:08:59 AM
    Author     : acer
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dto.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Update Booking Infomation Customer Pet | Where Every Paw Matters</title>
    <link rel="icon" href="./img/favicon.png" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
    />
    <link rel="stylesheet" href="./css/adminUpdateInfomationCustomerPet.css" />
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
                    <a href="mainController?action=manageService">Services</a>
                    <a href="mainController?action=manageBooking" class="active">Booking</a>
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
                <h2>Update Booking Infomation Customer Pet</h2>
                <div class="promo_card">
                  <h1>Welcome ${acc.username} to NVPetShop</h1>
                  <span>Where Every Paw Matters.</span>
                  <button>Learn More</button>
                </div>
                  
                  
                
                <!-- chỗ này để Update Booking Infomation Customer Pet -->  
                <c:if test="${acc != null}">
                    <!--view service all-->
                    <jsp:useBean id="a" class="dao.ServiceDAO" scope="request">
                        <div>
                            <h3 style="margin: 20px">Service List</h3>
                        </div>
                        <div class="header_fixed">
                            <table>
                                <thead>
                                    <tr>
                                        <th>ServiceID</th>
                                        <th>ServiceName</th>
                                        <th>ServiceImage</th>
                                        <th>State</th>
                                        <th>Price</th>
                                    </tr>
                                </thead>
                                <c:forEach var="service" items="${a.services}">
                                    <tbody>
                                        <tr>
                                            <td>${service.getServiceID()}</td>
                                            <td>${service.getServiceName()}</td>
                                            <td><img src="${service.getServiceImage()}" alt="alt"/></td>
                                            <td>${service.isState() == true ? "Enable" : "Disable"}</td>
                                            <td>${service.getPrice()}$</td>
                                        </tr>
                                    </tbody>
                                </c:forEach>
                            </table>
                        </div>
                    
                    
                    
                    <!--change new service-->
                    <div class="addForm">
                        <div>
                            <h3 style="margin: 20px">Update Service</h3>
                        </div>
                        <form class="item__form" action="mainController">
                            <input type="hidden" name="ordid" value="${param.ordid}"/>
                            <input type="hidden" name="serviceid" value="${param.serviceid}"/>
                            <input type="hidden" name="status" value="${param.status}"/>
                            <div class="item__info">
                              <h4>OrderID:</h4>
                              <input type="text" name="ordidChoice" value="${param.ordid}" readonly=""/>
                            </div>
                            <div class="item__info">
                              <h4>Service:</h4>
                              <select name="newServiceChoice" required="" class="newService">                                  
                                  <c:forEach var="service" items="${a.services}">
                                      <!--chỗ này có serviceID thì lấy đc price-->
                                      <option value="${service.getServiceID()}">${service.getServiceID()}:          ${service.getServiceName()}</option>
                                  </c:forEach>
                              </select>
                            </div>
                            <div class="item__info">
                              <h4>Quantity:</h4>
                              <input type="number" placeholder="Enter service quantity" name="newQuantityChoice" required=""/>
                            </div>
                            <button class="btn_add" type="submit" name="action" value="UpdateBookingInfomation" >Update</button>
                        </form>
                    </div>
                        
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
