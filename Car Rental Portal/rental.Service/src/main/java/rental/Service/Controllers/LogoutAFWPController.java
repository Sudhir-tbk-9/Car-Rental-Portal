package rental.Service.Controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout")
public class LogoutAFWPController extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     
	  HttpSession session = request.getSession();
      
	  session.invalidate(); 
      
//    Disable caching
      response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
      response.setHeader("Pragma", "no-cache");
      response.setHeader("Expires", "0");
      
      // Prevent back button caching
      response.setHeader("Cache-Control", "no-cache");
      response.setHeader("Cache-Control", "no-store");
      response.setHeader("Cache-Control", "must-revalidate");
      response.setHeader("Pragma", "no-cache");
      response.setDateHeader("Expires", 0);
      
      
      
      response.sendRedirect("Login.jsp"); 
   }
}
