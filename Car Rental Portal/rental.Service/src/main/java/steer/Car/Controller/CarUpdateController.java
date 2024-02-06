package steer.Car.Controller;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Blob;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import retal.steer.dao.CarDao;
import steer.CarDto.CarDto;

@WebServlet(value="/update")
@MultipartConfig
public class CarUpdateController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    CarDao dao = new CarDao();
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    	int carId =Integer.parseInt(req.getParameter("carId"))   ;
		System.out.println(carId);
		String brand = req.getParameter("brand");
		System.out.println(brand);
		String model = req.getParameter("model");
		System.out.println(model);
		String fueltype = req.getParameter("fueltype");
		System.out.println(fueltype);
		String transmission = req.getParameter("transmission");
		System.out.println(transmission);
		
		int capacity= Integer.parseInt( req.getParameter("capacity"));
		System.out.println(capacity);
		
		
		int price = Integer.parseInt(req.getParameter("price"));
		System.out.println(price);
		
		
//		 Convert the picture parameter to InputStream (assuming it's coming from a file upload)
        Part picturePart = req.getPart("picture");
        InputStream pictureStream = null ;
       
        if (picturePart != null) {
        	pictureStream = picturePart.getInputStream();
        }
        else {
        	System.err.println("Error: picturePart is null");
        	pictureStream = null ;
          
        }
        // Call the storeBlob method to handle BLOB storage
        
		CarDto carSaved = new CarDto(carId , brand ,model ,fueltype ,transmission , capacity , price);
		
		dao.saveCarDao(carSaved);
		dao.storeBlob(carId, pictureStream);
		    
		PrintWriter pw  = resp.getWriter();
		
		pw.write("<html><body><main> CarAdded successfully &nbsp;&nbsp <img src='BackgroundImage/205-2051127_report-clipart.png' alt='Success Image' height='50' width='50'> </main></body></html>" );
		RequestDispatcher rd = req.getRequestDispatcher("DealerHome.jsp");
		
		rd.forward(req, resp);
	}

}