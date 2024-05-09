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
        <link rel="stylesheet" href="./css/addPetStyle.css" />
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
                    <input type="hidden" name="action" value="addPet"/>
                    <input type="hidden" name="txtaccountid" value="<%= acc.getId() %>"/>
                    <div class="flex_between">
                        <h1>Add Pet</h1>
                    </div>
                    <input type="hidden" name="txtcusid" value="<%= session.getAttribute("cusid") %>"/>
                    <div>
                        <label>Enter your PetName:</label><br/>
                        <p><input class="emailinput" type="text" name="txtpetname" /><br /></p>  
                    </div>
                    <div>
                        <label>Enter your CategoryID</label><br />
                        <select name="txtcategoryID">
                            <option value="1">Dog</option>
                            <option value="2">Cat</option>
                            <option value="3">Fish</option>
                            <option value="4">Bird</option>
                            <option value="5">Hamster</option>
                            <option value="6">Rabbit</option>
                            <option value="7">Guinea Pig</option>
                            <option value="8">Turtle</option>
                            <option value="9">Snake</option>
                            <option value="10">Lizard</option>
                            <option value="11">Ferret</option>
                            <option value="12">Hedgehog</option>
                            <option value="13">Tarantula</option>
                            <option value="14">Hermit Crab</option>
                            <option value="15">Gerbil</option>
                            <option value="16">Chinchilla</option>
                            <option value="17">Parrot</option> 
                            <option value="18">Horse</option> 
                            <option value="19">Miniature Pig</option> 
                            <option value="20">Goat</option> 
                        </select>
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
