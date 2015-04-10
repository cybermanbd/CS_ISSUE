package org.gp.isse;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Delete_Message_Servelet
 */
public class Delete_Message_Servelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		PrintWriter write = response.getWriter();
		
		Database_Update oDatabase_Update = new Database_Update();
		oDatabase_Update.Delete_Message(id);
		
		
		
		
		
		response.sendRedirect("CurrentIssue.jsp");
		response.setContentType("text/html");  
		write.println("<script type=\"text/javascript\">");  
		write.println("alert(':::: Forwarded Successfully ::::');");  
		write.println("</script>");
		
	
	
	}

}
