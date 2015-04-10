

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import=" java.io.IOException" %>
<%@ page import=" java.net.InetAddress" %>

<html>
<head>
	<title>Dash Board</title>
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
<li><a class="glidebutton" href="#"><span data-text="Home">Home</span></a></li>
<li><a class="glidebutton" href="#"><span data-text="Dashboard">Dashboard</span></a></li>

</ul>

    
    </div><!--end of menu-->
    <div id="container">
    	<div id="container_main">
    
    	<div id="container_login">
    	
    	
    	
    	
<center>
<font class ="tab" size="6" color="blue">   Welcome to Result Portal  </font> <br>

<%
   // Set refresh, autoload time as 5 seconds
   response.setIntHeader("Refresh", 1);
   // Get current time
   Calendar calendar = new GregorianCalendar();
   String am_pm;
   int hour = calendar.get(Calendar.HOUR);
   int minute = calendar.get(Calendar.MINUTE);
   int second = calendar.get(Calendar.SECOND);
   if(calendar.get(Calendar.AM_PM) == 0)
      am_pm = "AM";
   else
      am_pm = "PM";
   String CT = hour+":"+ minute +":"+ second +" "+ am_pm;
   
   String alias;
	String PC_name;
	// getting Computer Name
	PC_name = InetAddress.getLocalHost().getHostName();
	//Getting computer login user name 
	alias= System.getProperty("user.name");
  
   out.println("Welcome "+ alias + "\n");
   out.println("|| Your PC :"+ PC_name + "\n");
   out.println("|| Current Time: " + CT + "\n");
%>
</center>
<!-- Stop refresh page start -->


        </div><!-- end of container_login-->
        </div><!-- end of container_main-->
    
    </div> <!-- end of container-->


<form method="post">

<table width="550" border="2">
<tr>
<td>SL No</td>
<td>Title</td>
<td>Description</td>
<td>Seat No </td>


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

//String query="select * from managers";
String query="SELECT Title,Description,Priority FROM test ORDER BY id DESC";


int i=0;

Connection conn= DriverManager.getConnection(DB_URL,USER,PASS);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
	
<tr>
	  <td height="15"><%= i=i+1 %></td> 
	 <td height="15"><%=rs.getString("Title") %></td>
    <td height="15"><%=rs.getString("Description") %></td>
    <td height="15"><%=rs.getString("Priority") %></td>
   
   
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


</form>

    <div id="footer"></div>
    
    
    
    </div> <!--end of wrapper-->

</body>


</html>
		