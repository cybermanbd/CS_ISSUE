package org.gp.isse;

import java.io.IOException;
import java.net.InetAddress;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Agent_Message_Receiver_Servelet
 */
public class Agent_Message_Receiver_Servelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String unitS = request.getParameter("Unit");
		int Unit = Integer.parseInt(unitS); // unit k int a convert korlam
		
		String Topic = request.getParameter("Topic");
		String Sample_number = request.getParameter("Sample_number");
		String Description = request.getParameter("Description");
		String Priority = request.getParameter("Priority");
		
		
		String Agent;
		String Pc_name;
		// getting Computer Name
		Pc_name = InetAddress.getLocalHost().getHostName();
		//Getting computer login user name 
		Agent = System.getProperty("user.name");
		
		
		Database_Update oAgent_Message_Sender = new Database_Update();
		oAgent_Message_Sender.Agent_Message_Sender_Database(Unit,Topic,Sample_number,Description,
															Priority,Agent,Pc_name);
		 
		response.sendRedirect("Message_Send_Successfully.jsp");
		
		
		
	}

}
