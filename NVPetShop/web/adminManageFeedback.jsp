<%-- 
    Document   : adminManageFeedback
    Created on : Mar 20, 2024, 6:43:15 AM
    Author     : acer
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dto.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Manage Feedback | Where Every Paw Matters</title>
    <link rel="icon" href="./img/favicon.png" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
    />
    <link rel="stylesheet" href="./css/adminManageFeedback.css" />
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
                    <a href="mainController?action=manageBooking">Booking</a>
                    <a href="mainController?action=manageFeedback" class="active">Feedback</a>

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
                <h2>Manage Feedback</h2>
                <div class="promo_card">
                  <h1>Welcome ${acc.username} to NVPetShop</h1>
                  <span>Where Every Paw Matters.</span>
                  <button>Learn More</button>
                </div>
                  
                  
                <!--chỗ này để manage feedback-->
                <c:if test="${acc != null}">
                    <jsp:useBean id="a" class="dao.FeedbackDAO" scope="request">
                        <div>
                            <h3 style="margin: 20px">Feedback List</h3>
                        </div>
                        <h2>${requestScope.ReplyMsg}</h2>
                        <div class="header_fixed">
                            <table>
                                <thead>
                                    <tr>
                                        <th>FeedbackID</th>
                                        <th>FeedbackDate</th>
                                        <th>Description</th>
                                        <th>Reply</th>
                                        <th>AccID</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <c:forEach var="feedback" items="${a.feedbacks}">
                                    <form action="mainController">
                                        <input type="hidden" name="fbid" value="${feedback.getFeedbackID()}"/>
                                        <input type="hidden" name="fbdate" value="${feedback.getFeedbackDate()}"/>
                                        <input type="hidden" name="descrip" value="${feedback.getDescription()}"/>
                                        <input type="hidden" name="reply" value="${feedback.getReply()}"/>
                                        <input type="hidden" name="accid" value="${feedback.getAccID()}"/>
                                        <tbody>
                                            <tr>
                                                <td>${feedback.getFeedbackID()}</td>
                                                <td>${feedback.getFeedbackDate()}</td>
                                                <td>${feedback.getDescription()}</td>
                                                <td>${feedback.getReply() == NULL ? "Still no answer" : (feedback.getReply())}</td>
                                                <td>${feedback.getAccID()}</td>
                                                <td>
                                                    <input class="action_btn" type='submit' value='View-Feedback' name="action" style="margin: 5px;">
                                                    <c:if test="${feedback.getReply() == NULL}">
                                                        <input class="action_btn" type='submit' value='Reply-Feedback' name="action" style="margin: 5px;">
                                                    </c:if>
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
