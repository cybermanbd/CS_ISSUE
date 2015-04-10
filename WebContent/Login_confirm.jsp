<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Check </title>
</head>
<body>

	
<%@ page import ="java.sql.*" %>
<%
    String UserName = request.getParameter("UserName");    
    String Password = request.getParameter("Password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cs_issue",
            "root", "");
    Statement st = con.createStatement();
    Statement st2 = con.createStatement();
    
    ResultSet rs;
    ResultSet rs2;
    
    String Privilege = null;
    
    String query="select Privilege from user where UserName ='" + UserName + "'";
    rs2=st.executeQuery(query);
    if(rs2.next())
    {
    	Privilege = rs2.getString("Privilege");
    	System.out.println(rs2);
    	
    }
    
   
    rs = st.executeQuery("select * from user where UserName ='" + UserName + "' and Password='" + Password + "'");
    if (rs.next()) {
       
       
        if (Privilege.equals("1"))
        	
        {
        	 session.setAttribute("UserName", UserName);
        	response.sendRedirect("CurrentIssue.jsp");
        	
       }
        
        if (Privilege.equals("2"))
        	
        {
        	 session.setAttribute("UserName", UserName);
        	response.sendRedirect("Forwarded_Issue_for_CS.jsp");
        	
       }

        
    } else {
        out.println("Invalid password <a href='Login.jsp'>try again</a>");
    }
%>

</body>
</html>