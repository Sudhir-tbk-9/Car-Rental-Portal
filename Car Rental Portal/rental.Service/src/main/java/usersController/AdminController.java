package usersController;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import AuthenticationAndConnection.ConnectionJDBC;

@WebServlet(value="/submitApproval")
public class AdminController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	static Connection conn = ConnectionJDBC.getDBConnection();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int carId = Integer.parseInt(req.getParameter("carId"));
		System.out.println("Car id : " + carId);
		String apr = req.getParameter("approvalStatus");
		System.out.println("Approval status : " + apr);
		
		String aprQuery = "UPDATE cartable SET approval = ? WHERE carId = ?";
		
		if(apr.equals("approve")){
		
		try {
			PreparedStatement prepState = conn.prepareStatement(aprQuery);
			prepState.setString(1, apr);
			prepState.setInt(2, carId);
			
			int rst = prepState.executeUpdate();
				 
			if (rst > 0) {
		                System.out.println("Approval status updated successfully!");
		                PrintWriter pw  = resp.getWriter();
		        		
		        		pw.write("<html><body><main> Approved for customer display  &nbsp;&nbsp <img src='Approved-PNG.webp' alt='Success Image' height='250px' width='250px'> </main></body></html>" );
		        		RequestDispatcher rd = req.getRequestDispatcher("AdminHome.jsp");
		        		
		        		rd.include(req, resp);
		          
				 }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		 else if(apr.equals("reject")) {
			try {
				PreparedStatement prep = conn.prepareStatement(aprQuery);
				prep.setString(1, apr);
				prep.setInt(2, carId);
				
				int rs = prep.executeUpdate();
				
			 		
			 if (rs > 0) {
	                System.out.println("Approval status updated successfully!");
	                PrintWriter pw  = resp.getWriter();
	        
	                pw.write("<html><body><main> Rejected to not to display to Customer &nbsp;&nbsp <img src='rejected-red-rounded.webp' alt='Rejected Image' height='250px' width='250px'> </main></body></html>" );
	        		RequestDispatcher rd = req.getRequestDispatcher("AdminHome.jsp");
	        		
	        		rd.include(req, resp);
	            
			 }	
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
//		resp.sendRedirect("AdminHome.jsp");
	}
		 else {
		System.out.println("somethoing went wrong");
	}
		}
		}
