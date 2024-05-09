<%-- 
    Document   : addInformation
    Created on : Mar 18, 2024, 12:18:56 PM
    Author     : trana
--%>

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
        <link rel="stylesheet" href="./css/addInformationStyle.css" />
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
                    %>
                    <button onclick="openForm()">LOGIN</button>
                    <%
                    } else {
                    %>
                    <div class="dropdown" style="float:right;">
                        <button class="dropbtn">Information</button>
                        <div class="dropdown-content">
                            <a href="./addInformation">Add information</a>
                            <a href="./">Add pet</a>
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
        <%
            if (acc != null) {
        %>
    <marquee>Hello <%= acc.getUsername()%> come to</marquee>         
        <%
            }
        %>
    <div class=" signin_style">
        <div class="container flex signin_style block_flex_center">
            <div class="">
                <form class="signin_block" method="post" action="mainController" name="action">
                    <input type="hidden" name="action" value="addInformation"/>
                    <input type="hidden" name="txtaccountid" value="<%= acc.getId() %>"/>
                    <div class="flex_between">
                        <h1>Add Information</h1>
                    </div>           
                    <div>
                        <label>Enter your FirstName:</label><br/>
                        <p><input class="emailinput" type="text" name="txtfirstname" /><br /></p>  
                    </div>
                    <div>
                        <label>Enter your LastName:</label><br />
                        <p><input class="emailinput" type="text" name="txtlastname" /><br /></p>
                    </div>
                    <div>
                        <label>Enter Address :</label><br />
                        <p><input class="emailinput" type="text" name="txtaddress" /><br /></p>
                    </div>
                    <div>
                        <label>Enter Country :</label><br />
                        <p><input class="emailinput" type="text" name="txtcountry" /><br /></p>
                    </div>
                    <div>
                        <label>Enter PhoneNumber :</label><br />
                        <p><input class="emailinput" type="text" name="txtphone" /><br /></p>
                    </div>
                    <div>
                        <label>Enter Birthday :</label><br />
                        <p><input class="emailinput" type="date" name="txtbirthday" /><br /></p>
                    </div>
                    <div class="block_flex_center">
                        <button onclick="" class="submit_button">
                            <h2 class="buttonfont_style">Submit</h2>
                        </button>
                    </div>            


                </form>


            </div>
        </div>
    </div>

</body>
</html>
