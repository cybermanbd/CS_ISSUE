<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.*"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import=" java.io.IOException" %>
<%@ page import=" java.net.InetAddress" %>
<html>
<head>
	<title>CS Dash Board</title>
    <link rel="stylesheet" href="css/style2.css" type="text/css"/>
    <link rel="stylesheet" href="css/extension2.css" type="text/css"/>
    
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>
<script type="text/javascript">
 $(function() {
		/* For zebra striping */
        $("table tr:nth-child(odd)").addClass("odd-row");
		/* For cell text alignment */
		$("table td:first-child, table th:first-child").addClass("first");
		/* For removing the last border */
		$("table td:last-child, table th:last-child").addClass("last");
});
</script>

<style type="text/css">

	html, body, div, span, object, iframe,
	h1, h2, h3, h4, h5, h6, p, blockquote, pre,
	abbr, address, cite, code,
	del, dfn, em, img, ins, kbd, q, samp,
	small, strong, sub, sup, var,
	b, i,
	dl, dt, dd, ol, ul, li,
	fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td {
		margin:0;
		padding:0;
		border:0;
		outline:0;
		font-size:100%;
		vertical-align:baseline;
		background:transparent;
	}
	
	body {
		margin:0;
		padding:0;
		font:12px/15px "Helvetica Neue",Arial, Helvetica, sans-serif;
		color: #555;
		background:#f5f5f5 url(bg.jpg);
	}
	
	a {color:#666;}
	
	#content {width:65%; max-width:690px; margin:6% auto 0;}
	

	
	table {
		overflow:hidden;
		border:1px solid #d3d3d3;
		background:#fefefe;
		width:100%;
		margin:5% auto 0;
		-moz-border-radius:5px; /* FF1+ */
		-webkit-border-radius:5px; /* Saf3-4 */
		border-radius:5px;
		-moz-box-shadow: 0 0 4px rgba(0, 0, 0, 0.2);
		-webkit-box-shadow: 0 0 4px rgba(0, 0, 0, 0.2);
	}
	
	th, td {padding:18px 28px 18px; text-align:center; }
	
	th {padding-top:22px; text-shadow: 1px 1px 1px #fff; background:#e8eaeb;}
	
	td {border-top:1px solid #e0e0e0; border-right:1px solid #e0e0e0;}
	
	tr.odd-row td {background:#f6f6f6;}
	
	td.first, th.first {text-align:left}
	
	td.last {border-right:none;}
	
	/*
	Background gradients are completely unnecessary but a neat effect.
	*/
	
	td {
		background: -moz-linear-gradient(100% 25% 90deg, #fefefe, #f9f9f9);
		background: -webkit-gradient(linear, 0% 0%, 0% 25%, from(#f9f9f9), to(#fefefe));
	}
	
	tr.odd-row td {
		background: -moz-linear-gradient(100% 25% 90deg, #f6f6f6, #f1f1f1);
		background: -webkit-gradient(linear, 0% 0%, 0% 25%, from(#f1f1f1), to(#f6f6f6));
	}
	
	th {
		background: -moz-linear-gradient(100% 20% 90deg, #e8eaeb, #ededed);
		background: -webkit-gradient(linear, 0% 0%, 0% 20%, from(#ededed), to(#e8eaeb));
	}
	

	
	tr:first-child th.first {
		-moz-border-radius-topleft:5px;
		-webkit-border-top-left-radius:5px; /* Saf3-4 */
	}
	
	tr:first-child th.last {
		-moz-border-radius-topright:5px;
		-webkit-border-top-right-radius:5px; /* Saf3-4 */
	}
	
	tr:last-child td.first {
		-moz-border-radius-bottomleft:5px;
		-webkit-border-bottom-left-radius:5px; /* Saf3-4 */
	}
	
	tr:last-child td.last {
		-moz-border-radius-bottomright:5px;
		-webkit-border-bottom-right-radius:5px; /* Saf3-4 */
	}

</style>
    
    
    
    
    
    <meta content="width=320px, initial-scale=1, user-scalable=yes" name="viewport" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
    <script type="text/javascript" src="css/custom.js"></script>
	<link href='css/overlaypopup.css' rel='stylesheet' type='text/css'>
    
</head>

<body>
	
	<div id="wrapper">
    <div id="header">
    	<div id="login_menu">
        <div id="register_main">
<p> <a href="contact.html">Register</a></p>  

</div><!--end of register_main-->
        <div id="login">
        	<p> <a class="show-popup" href="#">Login</a></p>
            
            <div class="overlay-bg">
	<div class="overlay-content">
		 	<div id="container_login">
		 	
  <form>
  <div class="dynamiclabel">
    <input id="Username" placeholder="Username" type="text">
    <label for="Username">Username</label>
  </div>

  <div class="dynamiclabel">
  
    <input id="Password" placeholder="Password" type="password">
    <label for="Password">Password</label> <br/> <br/>
    <td align="right"><input type="submit" name="submit" value="Login"/></td>
    </div>
  </div>

        </div>
	</div>
    
  </form>   
</div> <!--end of login-->


      
 </div><!--end of login_menu-->
  
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
  <form action="Forward_Servelet" method="post">

   
   
<%
    if ((session.getAttribute("UserName") == null) || (session.getAttribute("UserName") == "")) {
%>
You are not logged in<br/>
<a href="Login.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("UserName")%>
<a href='logout.jsp'>Log out</a>

<center>
			<a href="http://localhost:8080/CS_ISSUE/Forwarded_Issue_for_CS.jsp"> <img alt="Home" src="home3.png"></a>
			
	<font color=black size=+5>CS System Dashoboard
	
	</font> 
</center>

<table width="500" border="1" cellspacing="0">
<tr>
<td>SL No</td>
<td>Order No</td>
<td>Unit</td>
<td>Topic</td>
<td>Sample Number </td>
<td>Description </td>
<td>Agent Seat No </td>
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


String query="SELECT id,unit,Topic,Sample_number,Description,Priority,Agent,Pc_name,Create_time FROM temporary_issue  where ( Status like 2 ) ORDER BY Unit";



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

   
   		
   		<!--<input type="image" name="id" src="forward.png"  value="<%=rs.getString("id")%>" alt="Submit">-->
   		<!--<input type="image" name="id" src="Delete.jpg"  value="<%=rs.getString("id")%>" alt="Submit">-->
   
  
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
        
        
        

    <div id="footer"></div>
    
    </div> <!--end of wrapper-->
    

</body>

</html>
