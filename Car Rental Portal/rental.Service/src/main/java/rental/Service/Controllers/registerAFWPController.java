 package rental.Service.Controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import retal.steer.dao.SteerRegisterDao;
import steer.UserDto.UserDto;


@WebServlet(value = "/Register")
public class registerAFWPController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	SteerRegisterDao dao = new SteerRegisterDao();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		long phone = Long.parseLong(req.getParameter("phone"))  ;
		System.out.println("Phone : " + phone);
		
		String name = req.getParameter("name");
		System.out.println("Name : " + name);
		
		String email = req.getParameter("email");
		System.out.println("Email-id : " + email);
		
		String role = req.getParameter("role");
		System.out.println("Role : " + role);
		
		String password= req.getParameter("password");
		System.out.println("Password : " + password);
		
		
		UserDto userSaved = new UserDto(phone , name ,email ,role ,password);
		
		 dao.saveUserDao(userSaved);
		
		PrintWriter pw  =resp.getWriter();
		
		pw.write("<html><body><main> User Registered Successfully,You Can Login Now! &nbsp;&nbsp <img src='register-icon.webp' alt='Success Image' height='50' width='50'> </main></body></html>" );
		
		RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
		
		rd.include(req, resp);

		
		
	}
}
