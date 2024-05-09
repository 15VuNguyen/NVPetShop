/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package customers;

import dao.CustomerDAO;
import dto.Account;
import dto.Customer;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author trana
 */
public class addInformationForCustomerController extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String m_firstname = request.getParameter("txtfirstname");
            String m_lastname = request.getParameter("txtlastname");
            String m_address = request.getParameter("txtaddress");
            String m_country = request.getParameter("txtcountry");
            String m_phonenumber = request.getParameter("txtphone");
            String m_accountid = request.getParameter("txtaccountid");
            String m_birthday = request.getParameter("txtbirthday");
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); // Adjust the format according to your input
            java.util.Date utilDate = sdf.parse(m_birthday);
            java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
            CustomerDAO dao = new CustomerDAO();
            int result = dao.insertCustomer(m_firstname, m_lastname, m_address, m_country, m_phonenumber, sqlDate,Integer.parseInt(m_accountid));
            int cusid = dao.getCustomerId(m_firstname, m_lastname, m_address, m_country, m_phonenumber, sqlDate, Integer.parseInt(m_accountid));
            if(result>0){
                HttpSession session = request.getSession();
                session.setAttribute("cusid", cusid);
                request.getRequestDispatcher("mainController?action=home").forward(request, response);
            }
            else {
                request.getRequestDispatcher("mainController?action=error").forward(request, response);
            }
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(addInformationForCustomerController.class.getName()).log(Level.SEVERE, null, ex);
        }
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(addInformationForCustomerController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
