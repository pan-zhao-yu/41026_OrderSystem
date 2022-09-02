package uts.isd.loginController;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
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
@WebServlet(urlPatterns = {
  "/login"
})
public class login extends HttpServlet {

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
        RequestDispatcher req = request.getRequestDispatcher("home.jsp");
        req.include(request, response);
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
    String password = request.getParameter("password");
    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
    LocalDateTime now = LocalDateTime.now();
    String FormattedDate = dtf.format(now);
    //check if any parameter is left empty
    if (email.isEmpty() || password.isEmpty()) {
      //create request object to redirect to login page
      RequestDispatcher req = request.getRequestDispatcher("login.jsp");
      req.include(request, response);
    } else {
      try {
        //Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Product;create=true");
        DBConnector db = new DBConnector();// DriverManager.getConnection("jdbc:derby://localhost:1527/iotdb;create=true");
        Connection con = db.openConnection();
        
        String sql = "INSERT INTO AccessLogs (email, Pass, LoginDate)values (?,?,?)";
        PreparedStatement prep = con.prepareStatement(sql);

        prep.setString(1, email);
        prep.setString(2, password);
        prep.setString (3, FormattedDate);
        prep.executeUpdate();
        prep.close();
        System.out.println("Debug: data inserted!");
        RequestDispatcher req = request.getRequestDispatcher("home.jsp");
        req.include(request, response);
      } catch (Exception E) {
        System.out.println("The error is an error " + E.getMessage() + " " + E.getStackTrace());
      }

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
  } // </editor-fold>

}

