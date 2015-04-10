<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Registration</title>
    <link rel="stylesheet" href="css/style.css" type="text/css"/>
    <link rel="stylesheet" href="css/extension.css" type="text/css"/>
</head>

<body>
	<div id="wrapper">
    <div id="header">
    	<div id="register"> Register</div>
    	<div id="login"> Login</div>        
    </div> <!--end of header-->
    
    <div id="header_main">
    	<div id="logo"></div>
        <div id="search_box"></div>
    </div> <!--end of header_main-->
    <div id="menu">
    	<ul>
			<li><a href=""> Home </a> </li>
			
		</ul>
    
    </div><!--end of menu-->
    <div id="container">
    
    <div id="table">
    
    <center>
<form action="Registration_Receiver_Servelet" method="post">
<table border="0">

	<tr>
	<td>First Name</td>
	<td>:</td>
	<td> <input type="text" name="Fname" value=""/></td> 
	</tr>

	<tr>
	<td>Last Name</td>
	<td>:</td>
	<td> <input type="text" name="Lname" value=""/></td> 
	</tr>

	<tr>
	<td>User Name</td>
	<td>:</td>
	<td> <input type="text" name="UserName" value=""/></td> 
	</tr>

	<tr>
	<td>Password</td>
	<td>:</td>
	<td><input type="password" name="Password" value=""/></td>
	</tr>

	<tr>
	<td>Email</td>
	<td>:</td>
	<td> <input type="text" name="Email" value="" /></td> 
	</tr>
	
		<tr>
	<td>Mobile No</td>
	<td>:</td>
	<td> <input type="text" name="PhoneNumber" value="" /></td> 
	</tr>

	<tr>
	<td>Designation</td>
	<td>:</td>
		<td>
			 <select name ="Role">
 				 <option  value="Manager">Manager</option>
 				 <option  value="CS_System">CS System</option>
 				 <option  value="Temp_Admin">Temporary Admin</option>
 				
 				 
			</select> <br>
		</td> 
	</tr>
	
	
	
	<tr>
	<td><input type="submit" name="submit" value="Register"/></td>
	</tr>	

</table>
</form>

</center>
	</div> <!--end of table-->
    </div>
    <div id="footer"></div>
    
    </div> <!--end of wrapper-->

</body>

</html>
