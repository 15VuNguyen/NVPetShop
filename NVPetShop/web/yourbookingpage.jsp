<%-- 
    Document   : yourbookingpage
    Created on : Mar 20, 2024, 8:49:34 AM
    Author     : trana
--%>

<%@page import="dto.Order"%>
<%@page import="dao.OrderDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.OrderDetailDAO"%>
<%@page import="dto.OrderDetail"%>
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
            int a = (Integer) session.getAttribute("cusid");
            OrderDAO dao1 = new OrderDAO();
            ArrayList<Order> list1 = dao1.getAccounts(a);
            for ( Order c : list1 ) {
                OrderDetailDAO dao = new OrderDetailDAO();
                ArrayList<OrderDetail> list = dao.getListOfBooking(c.getOrderID());
                    if (list != null && list.size() > 0) {
        %>


    <div>
        <table>
            <tr>
                <th>OrderID</th>
                <th>ServiceID</th>
                <th>PetID</th>
                <th>Status</th>
                <th>Quantity</th>
                <th>Discount</th>
                <th>OrderDate</th>
                <th>Total</th>
            </tr>
            <%
                String msg = "";
                for (OrderDetail od : list) {
            %>
            <form action="mainController" method="post" >
                <tr>
                    <td><%= od.getOrdid() %></td>
                    <td><%= od.getServiceid() %></td>
                    <td><%= od.getPetid() %></td>
                    <td><%= od.getStatus() %></td>
                    <td><%= od.getQuantity() %></td>
                    <td><%= od.getDiscount() %></td>
                    <td><%= od.getOrderDate() %></td>
                    <td><%= od.getTotal() %></td>
                    <td><input type="hidden" name="action" valu="Update"/></td>
                </tr>
            </form>
            <%

                }
            %>
        </table>
        <%
            }
}
        %>
    </body>
</body>
</html>
