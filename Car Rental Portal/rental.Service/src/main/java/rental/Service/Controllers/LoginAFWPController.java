package rental.Service.Controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import retal.steer.dao.SteerLoginDao;

@WebServlet(value = "/Login")
public class LoginAFWPController extends HttpServlet{

	private static final long serialVersionUID = 1L;

	SteerLoginDao dao = new SteerLoginDao();
	
	static String passedPhone ;
	static String passedPass ;
	static String passedRole ;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		System.out.println("we are on login controller");
		
		passedPhone = req.getParameter("phone");
		System.out.println("passedPhone : " + passedPhone);
		passedPass = req.getParameter("password");
		System.out.println("passedPass : "+ passedPass);
		passedRole = req.getParameter("role");
		System.out.println("passedRole : "+passedRole);
		
		HttpSession session = req.getSession();
		 
		if(passedPhone != null && passedPass !=null ) {
			
			String storedPhone = dao.checkPhoneNoInDB(passedPhone);
			System.out.println("storedPhone : "+storedPhone);
			String storedPass = dao.getPasswordFromTab(passedPhone);
			System.out.println("storedPass : "+storedPass);
			String storedRole = dao.matchRolefromDB(passedPhone);
			System.out.println("storedRole : "+storedRole);
			System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
		
		if(passedPhone.equals(storedPhone) && passedPass.trim().equals(storedPass.trim()) && passedRole.trim().equalsIgnoreCase(storedRole.trim())) {
				
				System.out.println("Entered Successfully in Login Controller");
				String loginMessage = " this is your home " ;
				String UserName = dao.getNameByPhone(storedPhone);
				
				System.out.println("+++++++++++++++++++++++++++++++++++++++");
				
				System.out.println(UserName);
				
				System.out.println("+++++++++++++++++++++++++++++++++++++++");
				
//				---------------------------------------------------------------------------------
//				---------------------------------------------------------------------------------
				
				if("Admin".equals(passedRole)){
					
				System.out.println("Logged as Admin Successfully");
				
				session.setAttribute("mobile", passedPhone);
				session.setAttribute("username", UserName);
				
				req.setAttribute("loginMessage", UserName + ", Welcome on your home.");
				
				resp.sendRedirect("AdminHome.jsp");
				
				}
//				---------------------------------------------------------------------------------
				if("Customer".equals(passedRole)){
					
				System.out.println("Logged In as Customer Successfully");
					
				session.setAttribute("mobile", passedPhone);
				
				session.setAttribute("username", UserName);
				
				req.setAttribute("loginMessage", UserName + ", Welcome on your home.");
				
				
				resp.sendRedirect("CustomerHome.jsp");
				
				}
//				---------------------------------------------------------------------------------
				if("Dealer".equals(passedRole)){
					
				System.out.println("Logged In as Dealer Successfully");
				
				session.setAttribute("mobile", passedPhone);
				
				session.setAttribute("username", UserName);
			
				req.setAttribute("loginMessage", UserName + ", Welcome on your home.");
				
				resp.sendRedirect("DealerHome.jsp");
				
				}
//				---------------------------------------------------------------------------------
			}
			
		else {
				System.out.println("Wrong password");		
				req.setAttribute("wrongPass", "<html><body><main> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src='failed-icon-16.jpg' alt='Success Image' height='50' width='50'> &nbsp;Invalid Username Or Password !, No Such User found ! ,Please Try Again .....  </main></body></html>" );

				RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");

	            rd.include(req, resp);
				
			}
		}
		
		else {
			  System.out.println("didn't recieved parameters ");
	    	  resp.sendRedirect("Login.jsp");
		}
		
	}
	
}
