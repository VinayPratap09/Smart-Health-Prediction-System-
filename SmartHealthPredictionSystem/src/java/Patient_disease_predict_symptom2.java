





/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;  
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author vinay
@WebServlet(urlPatterns = {"/Patient_login"})
public class admin_add_disease extends HttpServlet {
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
 */
@WebServlet(urlPatterns = {"/Patient_disease_predict_symptom2"})
public class Patient_disease_predict_symptom2 extends HttpServlet {
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
        try (PrintWriter out = response.getWriter()) {

            String username = request.getParameter("username");
            String symptom2 = request.getParameter("symptom2");
            if (symptom2.equals("none"))
            {
                symptom2 = "NULL";
            }
            if (symptom2.isEmpty() ){
                
                RequestDispatcher req = request.getRequestDispatcher("patient_disease_predict_symptom2_error.jsp");
                
                req.include(request, response);
            } else {
                
                try {
               Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/smarthealthprediction", "root", "");
                //String sql = "INSERT INTO predict (username,symptom2) VALUES ( ?, ?)";
                String sql = "UPDATE predict SET symptom2='" + symptom2 + "' WHERE username='" + username + "'" ;
                
                PreparedStatement stmt = con.prepareStatement(sql);
                stmt.executeUpdate();

                String id = request.getParameter("id");
                String mobile = request.getParameter("mobile_number");
                String email = request.getParameter("email");
            
                request.setAttribute("username",username);
                request.setAttribute("id",id);
                request.setAttribute("mobile_number",mobile);
                request.setAttribute("email",email);
               
                RequestDispatcher req = request.getRequestDispatcher("patient_disease_predict_symptom3.jsp");
                req.include(request, response);
                
                con.close();
                } 
                catch (SQLException e) {
                    out.println("Database NOT connected:" + e);
                    throw new IllegalStateException("Cannot connect the database!", e);
                }
                
            }
        } catch (Exception e) {
            System.out.println(e);

        }

        //RequestDispatcher req = request.getRequestDispatcher("patient_login_success.jsp");
        //req.forward(request, response);
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
