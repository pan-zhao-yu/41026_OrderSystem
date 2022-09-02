package uts.isd.loginController;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import uts.isd.model.dao.DBConnector;

/**
 *
 * @author darry
 */
@WebServlet(urlPatterns = {"/register"})
public class register extends HttpServlet {

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
        //Get parameters from register JSP page
       // create request object to redirect to Welcome page
        RequestDispatcher req = request.getRequestDispatcher("welcome.jsp");
         //send request with parameters to the next page Welcome to JSP
	req.forward(request, response);
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
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String gender = request.getParameter("gender");
        String favcol = request.getParameter("favcol");
        String tos = request.getParameter("tos");

        try {
            DBConnector db = new DBConnector();// DriverManager.getConnection("jdbc:derby://localhost:1527/Product;create=true");
            Connection con = db.openConnection();
            String sql = "INSERT INTO Register (email, FullName, Pass, phoneNum, Gender, favcol, Tos)values (?,?,?,?,?,?,?)";
            PreparedStatement prep = con.prepareStatement(sql);

            prep.setString(1, email);
            prep.setString(2, name);
            prep.setString(3, password);
            prep.setString(4, phone);
            prep.setString(5, gender);
            prep.setString(6, favcol);
            prep.setString(7, tos);
            prep.executeUpdate();
            prep.close();
            System.out.println("Debug: data inserted!");
            RequestDispatcher req = request.getRequestDispatcher("welcome.jsp");
         //send request with parameters to the next page Welcome to JSP
            req.forward(request, response);

        } catch (Exception E) {
            System.out.println("The error is an error "  +E.getMessage()+ " "+E.getStackTrace());
        }
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
