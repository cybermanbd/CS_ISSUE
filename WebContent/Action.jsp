<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forward or Delete Data</title>
</head>
<body>



	
<%@ page import ="java.sql.*" %>

    String Action = request.getParameter("Action");    
   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cs_issue",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    String sql;
    

    if (Action.equals("Forward"))
   		 {

   sql =  "UPDATE temporary_issue SET Status = Status+ 1 WHERE id ='id'";
   st.executeUpdate(sql);
    	
    			
    	 response.sendRedirect("Current_Issues.jsp");
   		 }
    else if (Action.equals("Delete"))
    	{
    	   sql =  "UPDATE temporary_issue SET Status = Status+ 1 WHERE id ='id'";
    	   st.executeUpdate(sql);
    	
    	}
    

    stmt.close();
	conn.close();

	
} catch (SQLException se) {
	se.printStackTrace();
} catch (Exception e) {
	e.printStackTrace();
} finally {
	try {
		if (conn != null)
			conn.close();
	} catch (SQLException se) {
		se.printStackTrace();
	}
    
       
    
%>
%>



</body>
</html>