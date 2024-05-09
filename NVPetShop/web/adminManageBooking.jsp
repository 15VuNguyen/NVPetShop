<%-- 
    Document   : adminManageBooking
    Created on : Mar 19, 2024, 4:57:20 AM
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
    <title>Manage Booking | Where Every Paw Matters</title>
    <link rel="icon" href="./img/favicon.png" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
    />
    <link rel="stylesheet" href="./css/adminManageBooking.css" />
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
                <h2>Manage Booking</h2>
                <div class="promo_card">
                  <h1>Welcome ${acc.username} to NVPetShop</h1>
                  <span>Where Every Paw Matters.</span>
                  <button>Learn More</button>
                </div>
                  
                  
                <!--chỗ này để manage booking-->
                <c:if test="${acc != null}">
                    <jsp:useBean id="a" class="dao.OrderDetailDAO" scope="request">
                        <div>
                            <h3 style="margin: 20px">Booking List</h3>
                        </div>
                        <h2>${requestScope.updateBookingStatusMsg}</h2>
                        <h2>${requestScope.CancelBookingStatusMsg}</h2>
                        <h2>${requestScope.ChangeBookingInfoMsg}</h2>
                        <div class="header_fixed">
                            <table>
                                <thead>
                                    <tr>
                                        <th>OrdID</th>
                                        <th>ServiceID</th>
                                        <th>PetID</th>
                                        <th>Status</th>
                                        <th>Quantity</th>
                                        <th>Discount</th>
                                        <th>OrderDate</th>
                                        <th>TotalAmount</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <c:forEach var="booking" items="${a.allOrderDetail}">
                                    <form action="mainController">
                                        <input type="hidden" name="ordid" value="${booking.getOrdid()}"/>
                                        <input type="hidden" name="serviceid" value="${booking.getServiceid()}"/>
                                        <input type="hidden" name="petid" value="${booking.getPetid()}"/>
                                        <input type="hidden" name="status" value="${booking.getStatus()}"/>
                                        <tbody>
                                            <tr>
                                                <td>${booking.getOrdid()}</td>
                                                <td>${booking.getServiceid()}</td>
                                                <td>${booking.getPetid()}</td>
                                                <td>${booking.status == 1 ? 'Creating Order' : (booking.status == 2 ? 'Process Transported' : (booking.status == 3 ? 'Successful Delivery' : 'Cancel'))}</td>
                                                <td>${booking.getQuantity()}</td>
                                                <td>${booking.getDiscount()}</td>
                                                <td>${booking.getOrderDate()}</td>
                                                <td>${booking.getTotal()}</td>
                                                <td>
                                                    <c:if test="${booking.status != 4}">
                                                        <c:if test="${booking.status == 1}">
                                                            <input class="action_btn" type='submit' value='UpdateInfomation' name="action" style="margin: 5px;">
                                                        </c:if>
                                                            <input class="action_btn" type='submit' value='UpdateStatus' name="action" onclick="return window.confirm('are u sure?')" style="margin: 5px;">
                                                        <c:if test="${booking.status == 1}">
                                                            <input class="action_btn" type='submit' value='Cancel' name="action" onclick="return window.confirm('are u sure?')" style="margin: 5px;">
                                                        </c:if> 
                                                    </c:if>
                                                    <input class="action_btn" type='submit' value='View' name="action" style="margin: 5px;">
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
