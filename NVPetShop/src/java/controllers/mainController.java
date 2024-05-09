/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

import constants.Path;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author acer
 */
public class mainController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String ac = request.getParameter("action");
            out.print("<h1>" + ac + "</h1>");
            out.print("fafsaf");
            String url = "index.jsp";

            switch (ac) {
                case "error":
                    url = "error.jsp";
                    break;
                case "adminHome":
                    url = "adminHome.jsp";
                    break;
                case "home":
                    url = "index.jsp";
                    break;
                case "servicepage":
                    url = "services.jsp";
                    break;
                case "aboutpage":
                    url = "about.jsp";
                    break;
                case "contactpage":
                    url = "contact.jsp";
                    break;
                case "blogpage":
                    url = "blog.jsp";
                    break;
                case "addinformationPage":
                    url="addInformation.jsp";
                    break;
                case "addpetPage":
                    url="addPet.jsp";
                    break;
                case "bookingpage":
                    url = "bookingPage.jsp";
                    break;
                case "addtocartpage":
                    url = "addtocartPage.jsp";
                    break;
                case "informationpage":
                    url="information.jsp";
                    break;
                case "petinformationpage":
                    url="petInformation.jsp";
                    break;
                case "yourbookingpage":
                    url="yourbookingpage.jsp";
                    break;
                case "feedbackpage":
                    url="feedbackPage.jsp";
                    break;
                case "signup":
                    url = "signupController";
                    break;
                case "login":
                    url = "loginController";
                    break;
                case "logout":
                    url = "logoutController";
                    break;
                case "adminSearchCustomer":
                    url = "adminSearchCustomerController";
                    break;
                case "manageCustomer":
                    url = "adminManageCustomer.jsp";
                    break;
                case "block/unblock":
                    url = "adminUpdateStatusAccountController";
                    break;
                case "manageService":
                    url = "adminManageService.jsp";
                    break;
                case "addInformation":
                    url = "addInformationForCustomerController";
                    break;
                case "addPet":
                    url = "addPetController";
                    break;
                case "booking":
                    url = "bookingController";
                    break;
                case "addtocart":
                    url = "addtocartController";
                    break;
                case "payment":
                    url="paymentController";
                    break; 
                    
                    
                    
               //admin
//                    case "adminHome":
//                    url = "adminHome.jsp";
//                    break;
//                case "home":
//                    url = "index.jsp";
//                    break;
//                case "login":
//                    url = "loginController";
//                    break;
//                case "logout":
//                    url = "logoutController";
//                    break;
//                case "adminSearchCustomer":
//                    url = "adminSearchCustomerController";
//                    break;
//                case "manageCustomer":
//                    url = "adminManageCustomer.jsp";
//                    break;
//                case "block/unblock":
//                    url = "adminUpdateStatusAccountController";
//                    break;  
//                case "manageService":
//                    url = "adminManageService.jsp";
//                    break;  
                case "addNewSe  rvice":
                    url = "adminAddNewServiceController";
                    break; 
                case "Edit":
                    url = "adminEditService.jsp";
                    break;
                case "UpdateService":
                    url = "adminEditServiceController";
                    break; 
                case "Disable":
                    url = "adminDisableStatusController";
                    break; 
                case "manageBooking":
                    url = "adminManageBooking.jsp";
                    break;  
                case "UpdateStatus":
                    url = "adminUpdateStatusController";
                    break; 
                case "Cancel":
                    url = "adminCancelBookingController";
                    break;   
                case "UpdateInfomation":
                    url = "adminUpdateInfomationCustomerPet.jsp";
                    break;   
                case "UpdateBookingInfomation":
                    url = "adminUpdateInfomationController";
                    break; 
                case "manageFeedback":
                    url = "adminManageFeedback.jsp";
                    break;   
                case "Reply-Feedback":
                    url = "adminReplyFeedback.jsp";
                    break;
                case "Reply":
                    url = "adminReplyFeedbackController";
                    break;
                case "adminProfile":
                    url = "adminProfile.jsp";
                    break; 
                case "View-Customer":
                    url = "adminViewCustomer.jsp";
                    break;  
                case "View-Service":
                    url = "adminServiceView.jsp";
                    break;  
                case "View-Feedback":
                    url = "adminViewFeedback.jsp";
                    break;  
                 

            }
            request.getRequestDispatcher(url).forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
