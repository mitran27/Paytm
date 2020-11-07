/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.http.HttpSession;
import java.util.Random;

/**
 *
 * @author ADMIN
 */
@WebServlet(urlPatterns = {"/transfer"})
public class transfer extends HttpServlet {

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
            out.println("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet trans</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet trans at " + request.getContextPath() + "</h1>");
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
        
        HttpSession session=request.getSession();
        String amt = request.getParameter("amt");
        String p2 = request.getParameter("sec");
         String p1 =(String)session.getAttribute("un");
        int bamt=Integer.parseInt(amt);
        if(bamt<0)
        {
            response.sendRedirect("sas.jsp");
        }
            
        String samta;
        String samtb;
        String rcomb="abcdefghijklm0123456789!#$%";
        String random="  ";
        int ri=1;
        Random rand=new Random();
        char[] text=new char[ri];
        for(int i=0;i<ri;i++)
        {text[i]=rcomb.charAt(rand.nextInt(rcomb.length()));
        }
        for(int i=0;i<text.length;i++)
        {
        random+=text;
        }
        int camt=bamt/100;
       
        
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mitran","root","root");
          Statement stmt = con.createStatement();
          
          
          
           ResultSet rsa = stmt.executeQuery("select * from register where uname=('"+p1+"') ");//giver
           rsa.next();
            samta =rsa.getString("amt");
               int amta=Integer.parseInt(samta);//convert
               int amt1=amta-bamt;
          int ra=stmt.executeUpdate("update register set amt='"+amt1+"',coupon='"+random+"',camt='"+camt+"' where uname='"+p1+"'");//update giver
          
          
          
                ResultSet rsb = stmt.executeQuery("select * from register where uname=('"+p2+"') ");//reciever
           rsb.next();
            samtb =rsb.getString("amt");
               int amtb=Integer.parseInt(samtb);
               int amt2=amtb+bamt;
               int rb=stmt.executeUpdate("update register set amt='"+amt2+"' where uname='"+p2+"'");//updaTE reciever
               
               
               
               
          int rc = stmt.executeUpdate("insert into admin values('"+p1+"','"+bamt+"','"+p2+"')");//copy to admin 
        if(ra>0)
        {
             session.setAttribute("code", random);
        response.sendRedirect("success.jsp");
        }
            
        }
        catch(Exception eee)
        {
        eee.printStackTrace();
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
