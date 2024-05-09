<%-- 
    Document   : bookingPage
    Created on : Mar 18, 2024, 9:22:41 PM
    Author     : trana
--%>

<%@page import="java.util.HashMap"%>
<%@page import="dao.OrderDAO"%>

<%@page import="java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="dto.Account"%>
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
                            <li><a href="./index.jsp" id="home">HOME</a></li>
                            <li><a href="./about.jsp">ABOUT</a></li>
                            <li><a href="./services.jsp">SERVICES</a></li>
                            <li><a href="./blog.jsp">BLOG</a></li>
                            <li><a href="./contact.jsp">CONTACT</a></li>
                        </ul>
                    </div>
                    <%
                        Account acc = (Account) session.getAttribute("logined");
                        if (acc == null) {
                            session.setAttribute("msg", "you must log in before booking!!");
                            request.getRequestDispatcher("mainController?action=home").forward(request, response);
                    %>
                    <button onclick="openForm()">LOGIN</button>
                    <%
                    } else {
                    %>
                    <div class="dropdown" style="float:right;">
                        <button class="dropbtn">Information</button>
                        <div class="dropdown-content">
                            <a href="./addInformation.jsp">Add information</a>
                            <a href="./addPet.jsp">Add pet</a>
                            <a href="mainController?action=logout">Log out</a>
                        </div>
                    </div>
                    <%
                        }
                    %>
                    <button>GETTING STARTED</button>
                    <div class="header__cart">
                        <img src="./img/cart-removebg-preview.png" alt="cart_ne" />
                    </div>
                </div>
            </div>
        </div>   
    <marquee><h1>Hello <%= acc.getUsername()%> come to my shop</h1></marquee>
    <div>

                             <session>
                                <h1>Thông tin giỏ hàng của bạn</h1>
                                <% 
                                    HashMap<Service,Integer> giohang = (HashMap)session.getAttribute("cart");
                                    if(giohang!=null){
                                        %>
                                        <table>
                                            <tr>
                                                
                                                <th>
                                                    OrderID 
                                                </th>
                                                <th>
                                                    ServiceID
                                                </th>
                                                <th>
                                                    PetID
                                                </th>
                                                <th>
                                                    Status
                                                </th>
                                                <th>
                                                    QUANTITY
                                                </th>
                                                <th>
                                                    Discount
                                                </th>
                                                <th>
                                                    OrderDate
                                                </th>
                                            </tr>
                                            <%
                                                int total = 0;
                                                for(Items it : giohang.keySet()){
                                            
                                                %>
                                                <tr><form action="mainController" method="get">
                                                    <input type="hidden" value="<%= it.getItemid() %>" name="txtitemid">
                                                    <td><%= it.getItemid() %></td>
                                                    <td><%= it.getItemname() %></td>
                                                    <td><img src="<%= it.getImageurl() %>"></td>
                                                    <td><%= it.getPrice() %></td>
                                                    <td><input type="number" value="<%= giohang.get(it) %>" name="txtquantity"></td>
                                                    <td>
                                                        <input type="submit" value="update" name="action"/> 
                                                        <input type="submit" value="remove"/> 
                                                    </td>
                                                </form>
                                                </tr>
                                            <%    
                                                total = total + giohang.get(it)*it.getPrice();
                                                }
                                                
                                            
                                            %>
                                        </table>
                                        <h4>Tổng tiền thanh toán: <%= total %></h4>
                                        <h4>Ngay dat:<%= (new Date()).toString() %></h4>
                                        <h4>Ngày giao dự kiến : 7 ngày</h4>
                                        <form action="mainController">
                                            <input  type="hidden" value="<%= total  %>" name="txttotal">
                                            <h4><input type="submit" value="payment" name="action" ></h4>
                                        </form>
                                        
                                        
                                <%    
                                    }
                                    else{
                                        out.print("giỏ hàng đang trong");
                                    }
                                        String error = (String)request.getAttribute("ERROR");

                                %>
                            </session>


    </div>
</body>
</html>
