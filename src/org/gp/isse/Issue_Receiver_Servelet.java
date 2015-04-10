package org.gp.isse;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class Issue_Receiver_Servelet
 */
public class Issue_Receiver_Servelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			PrintWriter write = response.getWriter();
				
				String Title = request.getParameter("Title");
				String Description = request.getParameter("Description");
				String Priority = request.getParameter("Priority");
				
			
			//Start  user name
			
			 Issue_Update_Database issue_Update_Database = new Issue_Update_Database();
			 issue_Update_Database.IssueUpdate(Title, Description, Priority);

			

			 write.print("Updated");
			 response.sendRedirect("Create_Issue.jsp");
			}
			 catch (Exception e) {
					e.printStackTrace();
				}
		
		
		
	}

}
