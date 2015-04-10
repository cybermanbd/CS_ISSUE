<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style1.css" type="text/css"/>
<title>Send Message </title>
</head>
<body background="background2.jpg">

<font class ="tab" size="6" color="blue"> Send Message to your Unit TL</font> <br><br><br>

	
	<div id="textbox">
	
		<div id ="margin">
	
		<form action="Agent_Message_Receiver_Servelet" method="post"> 
		
		Floor : <select name="Unit">
			 <option  value="6">6</option>
			 <option  value="7">7</option>
			 <option  value="8">8</option>
			 <option  value="9">9</option>
			 <option  value="10">10</option>
			 <option  value="11">11</option>
			 
		
		
		</select> <br>
			Topic : <input type="text" name="Topic" value="" size="40" required>
			Sample Number :<TEXTAREA name="Sample_number" value="" ROWS=3 COLS=40 required></TEXTAREA> <br>
			Enter Description :<TEXTAREA name="Description" value="" ROWS=8 COLS=40 required></TEXTAREA> <br>
			
			Enter PC number :<input type="text" name="Priority" value="" ROWS=3 COLS=40 required> <br>
			
			
			
			<input type="image" src="send.png" alt="Submit">
			
		</form>
		
			
		</div>
	
	</div>

</body>
</html>