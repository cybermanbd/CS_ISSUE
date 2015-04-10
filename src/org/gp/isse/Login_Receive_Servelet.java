package org.gp.isse;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginAuthentication
 */
public class Login_Receive_Servelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try
		{
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
				Database_Update oLogin = new Database_Update();
				 
				response.sendRedirect("Success.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
