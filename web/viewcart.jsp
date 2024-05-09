<%-- 
    Document   : viewcart
    Created on : Mar 19, 2024, 9:03:29 AM
    Author     : trana
--%>

<%@page import="dto.Account"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.HashMap"%>
<%@page import="dto.Service"%>
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
        <link rel="stylesheet" href="./css/viewcartstyle.css" />
    </head>

    <body>
        <%
           Account acc = (Account) session.getAttribute("logined");  
           if(acc==null){
                request.getRequestDispatcher("mainController?action=home").forward(request, response);
            }
        %>    
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
                            <a href="mainController?action=logout">Log out</a>
                        </div>
                    </div>
                    <%
                        }
                    %>
                    <button>GETTING STARTED</button>
                    <div class="header__cart">
                        <a  href="./viewcart.jsp"><img src="./img/cart-removebg-preview.png" alt="cart_ne" /></a>
                    </div>
                </div>
            </div>
        </div>
    <session>
        <%
            HashMap<Service, Integer> giohang = (HashMap) session.getAttribute("cart");
            if (giohang != null) {
        %>
        <h1>Your payment:</h1>
        <table>
            <tr>                                               
                <th> ServiceID</th>
                <th>ServiceName</th>
                <th>ServiceImg</th>
                <th>PRICE</th>
                <th> STATE</th>

            </tr>
            <%
                float total = 0;
                for (Service a : giohang.keySet()) {

            %>
            <tr><form action="mainController" method="get">
                <input type="hidden" value="<%= a.getServiceID()%>" name="txtitemid">
                <td><%= a.getServiceID()%></td>
                <td><%= a.getServiceName()%></td>
                <td><img class="img_viewcart" src="<%= a.getServiceImg()%>"></td>
                <td><%= a.getPrice()%></td>
                <td><input type="number" value="<%= giohang.get(a)%>" name="txtquantity"></td>
            </form>
            </tr>
            <%
                    total = total + giohang.get(a) * a.getPrice();
                }
            %>
        </table>
        <h4>Total Amount: <%= total%></h4>
        <h4>Received Date:<%= (new Date()).toString()%></h4>
        <h4>Required Date: 7 - 14 days</h4>
        <form action="mainController" >
            <input  type="hidden" value="<%= total%>" name="txttotal">
            <h4><input type="submit" value="payment" name="action" ></h4>
        </form>


        <%
            } else {
                out.print("giỏ hàng đang trong");
            }
            String error = (String) request.getAttribute("ERROR");
            if (error != null) {
        %>
        <H1><%= error%></H1>
            <%
                }
            %>
    </session>
</body>
</html>
