package org.gp.isse;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Forward_Servelet
 */
public class Forward_Servelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id = request.getParameter("id");
		String Action = request.getParameter("id");
		PrintWriter write = response.getWriter();
		System.out.println(id);
		
		Database_Update oDatabase_Update = new Database_Update();
		oDatabase_Update.Forward_Message(id);
		
		

		//write.println("<html><body onload=\"alert('Hello World')\"></body></html>");
		
		//response.setContentType("text/html");  
		//write.println("<script type=\"text/javascript\">");  
		//write.println("alert(':::: Forwarded Successfully ::::');"); 
		response.sendRedirect("Data_Forwarded_Message.jsp");
		//write.println("</script>");
		
		
		
		
	}

}
