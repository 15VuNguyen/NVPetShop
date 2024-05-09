<%-- 
    Document   : adminViewCustomer
    Created on : Mar 20, 2024, 10:49:32 AM
    Author     : acer
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dto.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin View Customer | Where Every Paw Matters</title>
    <link rel="icon" href="./img/favicon.png" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
    />
    <link rel="stylesheet" href="./css/adminViewCustomer.css" />
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
                    
        
        <div class="containerClass">
            <!-- side_nav -->
            <nav>
                <div class="side_navbar">
                    <span>Main Menu</span>
                    <a href="mainController?action=adminHome">Dashboard</a>
                    <a href="mainController?action=adminProfile">Profile</a>
                    <a href="mainController?action=manageCustomer" class="active">Customer</a>
                    <a href="mainController?action=manageService">Services</a>
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
                <h2>Admin View Customer</h2>
                <div class="promo_card">
                  <h1>Welcome ${acc.username} to NVPetShop</h1>
                  <span>Where Every Paw Matters.</span>
                  <button>Learn More</button>
                </div>
                
                
                <!--chỗ này là profile của customer-->
                <c:if test="${acc != null}">
                    <jsp:useBean id="a" class="dao.CustomerDAO" scope="request">
                            <c:set var="customer" value="${a.getCustomerByID(param.txtaccid)}"/>
                            <div class="container rounded bg-white mt-5 mb-5">
                                <div class="row">
                                    <div class="col-md-3 border-right">
                                        <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                                            <img class="rounded-circle mt-5" width="150px" src="./img/userImgExample.jpg">
                                            <span class="font-weight-bold">${customer.getLastName()} ${customer.getFirstName()}</span>
                                        </div>
                                    </div>


                                    <div class="col-md-5 border-right">
                                        <div class="p-3 py-5">
                                            <div class="d-flex justify-content-between align-items-center mb-3">
                                                <h4 class="text-right">Profile</h4>
                                            </div>
                                            <div class="row mt-2">
                                                <div class="col-md-6">
                                                    <label class="labels">First Name</label>
                                                    <input type="text" class="form-control" value="${customer.getFirstName()}" readonly="">
                                                </div>
                                                <div class="col-md-6">
                                                    <label class="labels">Last Name</label>
                                                    <input type="text" class="form-control" value="${customer.getLastName()}" readonly="">
                                                </div>
                                            </div>
                                            <div class="row mt-3">
                                                <div class="col-md-12">
                                                    <label class="labels">Phone Number</label>
                                                    <input type="text" class="form-control" value="${customer.getPhoneNumber()}" readonly="">
                                                </div>
                                                <div class="col-md-12">
                                                    <label class="labels">Address</label>
                                                    <input type="text" class="form-control" value="${customer.getAddress()}" readonly="">
                                                </div>
                                                <div class="col-md-12">
                                                    <label class="labels">Country</label>
                                                    <input type="text" class="form-control" value="${customer.getCountry()}" readonly="">
                                                </div>
                                                <div class="col-md-12">
                                                    <label class="labels">Birthday</label>
                                                    <input type="text" class="form-control" value="${customer.getBirthday()}" readonly="">
                                                </div>
                                                <div class="col-md-12">
                                                    <label class="labels">AccountID</label>
                                                    <input type="text" class="form-control" value="${customer.getAccID()}" readonly="">
                                                </div>
                                            </div>  
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="p-3 py-5">
                                            <div class="d-flex justify-content-between align-items-center experience">
                                                <span>Edit Skill</span>
                                                <span class="border px-3 p-1 add-experience"><i class="fa fa-plus"></i>&nbsp;Skill</span>
                                            </div><br>
                                        </div>
                                    </div>  
                                </div>
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

