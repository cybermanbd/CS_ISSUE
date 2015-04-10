

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import=" java.io.IOException" %>
<%@ page import=" java.net.InetAddress" %>

<html>
<head>
	<title>Current Issues</title>
    <link rel="stylesheet" href="css/style.css" type="text/css"/>
    <link rel="stylesheet" href="css/extension.css" type="text/css"/>
</head>

<body>
	<div id="wrapper">
    <div id="header">
    	<div id="login_menu">
        <ul>
			<li><a href="#"> Login </a> </li>
            <li><a href="#"> Register </a> </li>
			
		</ul>
        
        </div>       
    </div> <!--end of header-->
    
    <div id="header_main">
    	<div id="logo"></div>
        <div id="search_box"></div>
    </div> <!--end of header_main-->
    <div id="menu">
    	<ul>
<li><a class="glidebutton" href="http://localhost:8080/CS_ISSUE/"><span data-text="Home">Home</span></a></li>
<li><a class="glidebutton" href="#"><span data-text="Dashboard">Dashboard</span></a></li>

</ul>

    
    </div><!--end of menu-->
    <div id="container">
    	<div id="container_main">
    
    	<div id="container_login">
    	
    	
    	
    	
<center>
<font class ="tab" size="6" color="blue">Check the current Message from Agents </font> <br>




        </div><!-- end of container_login-->
       
        
        
        <form method="post">

<%
    if ((session.getAttribute("UserName") == null) || (session.getAttribute("UserName") == "")) {
%>
You are not logged in<br/>
<a href="Login.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("UserName")%>
<a href='logout.jsp'>Log out</a>

<table width="550" border="2">
<tr>
<td>SL No</td>
<td>ID No</td>
<td>Unit</td>
<td>Topic</td>
<td>Sample Number </td>
<td>Description </td>
<td>Priority </td>
<td>Agent Name </td>
<td>Agent PC </td>
<td>Posted Time </td>
<td>Action </td>




</tr>




<%
try
{

	String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	String DB_URL = "jdbc:mysql://localhost:3306/cs_issue";

	// Database credentials
	String USER = "root";
	String PASS = "";
	
	Class.forName(JDBC_DRIVER);


String query="SELECT id,unit,Topic,Sample_number,Description,Priority,Agent,Pc_name,Create_time FROM temporary_issue  where ( Status like 1 ) ORDER BY Unit";



int i=0;

Connection conn= DriverManager.getConnection(DB_URL,USER,PASS);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{
	String id =rs.getString("id");

%>
	
	
<tr>

	  <td height="15"><%= i=i+1 %></td> 
	  <td height="15"><%=rs.getString("id") %></td>
	 <td height="15"><%=rs.getString("unit") %></td>
    <td height="15"><%=rs.getString("Topic") %></td>
    <td height="15"><%=rs.getString("Sample_number") %></td>
     <td height="15"><%=rs.getString("Description") %></td>
     <td height="15"><%=rs.getString("Priority") %></td>
      <td height="15"><%=rs.getString("Agent") %></td>
       <td height="15"><%=rs.getString("Pc_name") %></td>
       <td height="15"><%=rs.getString("Create_time") %></td>
<td>

    <form action="Forward_Servelet" method="post">
   		<input type="button" value="Forward" name="forward"> 
   		<input type="button" value=" Delete " name="Delete"> 
   
   </form>
</td>
       
       
   
   
</tr>


    
        <%

}
%>
    </table>
    <%
    rs.close();
    stmt.close();
    conn.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }




%>



<%
    }
%>



</form>
         </div><!-- end of container_main-->
    
    </div> <!-- end of container-->



    <div id="footer"></div>
    
    
    
    </div> <!--end of wrapper-->

</body>


</html>
		