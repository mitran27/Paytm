/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
/**
 *
 * @author God
 */
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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
         String name=request.getParameter("name");
         String mail=request.getParameter("mail");
        String mobile=request.getParameter("mobile");
        String city=request.getParameter("city");
        String uname1=request.getParameter("uname");
        String pass1=request.getParameter("pass");
         String wish=" ";
         String coupon=" ";
         String camt=" ";
        if(uname1.equals("mitran") && pass1.equals("123"))
          {
              response.sendRedirect("sas.jsp");
          }
        int i=0;
        int id=i;
        try
      {
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mitran","root","root");
          Statement stmt = con.createStatement();
          int rs = stmt.executeUpdate("insert into register values('"+id+"','"+name+"','"+mail+"','"+mobile+"','"+city+"','"+uname1+"','"+pass1+"','"+wish+"','"+coupon+"','"+camt+"')");
         if(rs>0)
          {
              response.sendRedirect("register.jsp");
        }
         else
         {
              response.sendRedirect("sas.jsp");
         }
      }
      catch(ClassNotFoundException | SQLException | IOException ex)
      {
          response.sendRedirect("sas.jsp");
      }
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
