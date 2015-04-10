package org.gp.isse;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Registration_Receiver_Servelet
 */
public class Registration_Receiver_Servelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	try {
		
		String Fname = request.getParameter("Fname");
		String Lname = request.getParameter("Lname");
		String UserName = request.getParameter("UserName");
		String Password = request.getParameter("Password");
		String Role = request.getParameter("Role");
	
		String PhoneNumber = request.getParameter("PhoneNumber");
		String Email = request.getParameter("Email");
		// Set the privilige on database against Role ;

		
		
		
			Database_Update oRegistration_Info_Update = new Database_Update();
			oRegistration_Info_Update.Registration_Information_Update(UserName, Fname, Lname, Role, Password,
					PhoneNumber, Email);
			response.sendRedirect("Registration.jsp");
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	}

}
