<%-- 
Document   : information
Created on : Mar 20, 2024, 1:40:09 AM
Author     : trana
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dto.Customer"%>
<%@page import="dao.CustomerDAO"%>
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
                            <li><a href="mainController?action=home" id="home">HOME</a></li>
                            <li><a href="mainController?action=aboutpage">ABOUT</a></li>
                            <li><a href="mainController?action=servicepage">SERVICES</a></li>
                            <li><a href="mainController?action=blogpage">BLOG</a></li>
                            <li><a href="mainController?action=contactpage">CONTACT</a></li>
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
                            <a href="mainController?action=informationpage">Your information</a>
                            <a href="mainController?action=logout">Log out</a>
                        </div>
                    </div>
                    <%
                        }
                    %>
                    <button>GETTING STARTED</button>
                    <div class="header__cart">
                        <a href="./viewcart.jsp"><img src="./img/cart-removebg-preview.png" alt="cart_ne" /></a>
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
        <%
            CustomerDAO dao = new CustomerDAO();
            ArrayList<Customer> list = dao.getCustomer1(acc.getId());
            if (list != null && list.size() > 0) {
        %>
    <div>
        <table>
            <tr>
                <th>CustomerID</th>
                <th>FirstName</th>
                <th>LastName</th>
                <th>Address</th>
                <th>Country</th>
                <th>PhoneNumber</th> 
                <th>Birthday</th> 
                <th>AccID</th> 
            </tr>
            <%
                for (Customer cus : list) {
            %>
            <form action="mainController" method="post" >
                <tr>
                    <td><%= cus.getCustomerID()%></td>
                    <td><%= cus.getFirstName()%></td>
                    <td><%= cus.getLastName()%></td>
                    <td><%= cus.getAddress()%></td>
                    <td><%=  cus.getCountry()%></td>
                    <td><%=  cus.getPhoneNumber()%></td>
                    <td><%=  cus.getBirthDay() %></td>
                    <td><%=  cus.getAccountid()%></td>
                    <td><input type="hidden" name="action" valu="Update"/></td>
                </tr>
            </form>
            <%
                break;
                }
            %>
        </table>
        <%
            }
        %>
    </div>
</body>
</html>
