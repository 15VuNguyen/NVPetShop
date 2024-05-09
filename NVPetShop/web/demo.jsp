<%-- 
    Document   : demo
    Created on : Mar 18, 2024, 3:03:00 PM
    Author     : trana
--%>

<%@page import="dto.Customer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.CustomerDAO"%>
<%@page import="dto.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                <%
            session.setAttribute("page", "home");
            Account account = (Account) session.getAttribute("logined");
            CustomerDAO dao = new CustomerDAO();
            ArrayList<Customer> list = dao.getCustomer1(Integer.p)
            if (list != null && list.size() > 0) {
        %>
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
                    <td><%=  cus.getAccountid()%></td>
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
