<%-- 
    Document   : petInformation
    Created on : Mar 20, 2024, 7:58:30 AM
    Author     : trana
--%>

<%@page import="dto.Pet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.PetDAO"%>
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
            int a = (Integer)session.getAttribute("cusid");
            PetDAO dao = new PetDAO ();
            ArrayList<Pet> list = dao.getListOfPet(a);
            if (list != null && list.size() > 0) {
        %>
    <div>
        <table>
            <tr>
                <th>PetID</th>
                <th>PetName</th>
                <th>CategoryID</th>
                <th>CusID</th>
            </tr>
            <%
                String msg ="";
                for (Pet p : list) {
            %>
            <form action="mainController" method="post" >
                <tr>
                    <td><%= p.getPetID() %></td>
                    <td><%= p.getPetName()%></td>
                    <%
                        if(p.getCategoryID()==1) {
                            msg="Dog";
                        }
                        else if (p.getCategoryID()==2){
                            msg="Cat";
                        }
                        else if(p.getCategoryID()==3){
                            msg="Fish";
                        }
                        else if(p.getCategoryID()==4){
                            msg="Bird";
                        }
                        else if(p.getCategoryID()==5){
                            msg="Hamster";
                        }
                        else if(p.getCategoryID()==6){
                            msg="Rabbit";
                        }
                        else if(p.getCategoryID()==7){
                            msg="Guinea Pig";
                        }
                        else if(p.getCategoryID()==8){
                            msg="Turtle";
                        }
                        else if(p.getCategoryID()==9){
                            msg="Snake";
                        }
                        else if(p.getCategoryID()==10){
                            msg="Lizard";
                        }
                        else if(p.getCategoryID()==11){
                            msg="Ferrer";
                        }
                        else if(p.getCategoryID()==12){
                            msg="Hedgehog";
                        }
                        else if(p.getCategoryID()==13){
                            msg="Tarantula";
                        }
                        else if(p.getCategoryID()==14){
                            msg="Hermit Crab";
                        }
                        else if(p.getCategoryID()==15){
                            msg="Gerbil";
                        }
                        else if(p.getCategoryID()==16){
                            msg="Chinchila";
                        }
                        else if(p.getCategoryID()==17){
                            msg="Parrot";
                        }
                        else if(p.getCategoryID()==18){
                            msg="Horse";
                        }
                        else if(p.getCategoryID()==19){
                            msg="Miniature Pig";
                        }
                        else if(p.getCategoryID()==20){
                            msg="Goat";
                        }
                    %>
                    <td><%= msg %></td>
                    <td><%= p.getPetID() %></td>
                    <td><input type="hidden" name="action" valu="Update"/></td>
                </tr>
            </form>
            <%
                    
                }
            %>
        </table>
        <%
            }
        %>
    </body>
</html>
