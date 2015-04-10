<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style1.css" type="text/css"/>
<title>Welcome to Data Center</title>
</head>
<body background="background2.jpg">

<font class ="tab" size="6" color="blue"> Create Issue Below . . .</font> <br><br><br>

	
	<div id="textbox">
	
		<div id ="margin">
	
		<form action="Issue_Receiver_Servelet" method="post">
			Enter Title: <input type="text" name="Title" value="" size="40">
			Enter Description :<TEXTAREA name="Description" value="" ROWS=10 COLS=40></TEXTAREA> <br><br>
			
			Set Priority : <input type="radio" name="Priority" value="Low">Low or 
			<input type="radio" name="Priority" value="Medium">Medium or 
			<input type="radio" name="Priority" value="High">High <br>
			
			
			<input type="submit" value=" Click Here to Submit ">
		</form>
		
		</div>
	
	</div>

</body>
</html>