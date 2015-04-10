<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
	<title>Login</title>
    <link rel="stylesheet" href="css/style.css" type="text/css"/>
    <link rel="stylesheet" href="css/extension.css" type="text/css"/>
</head>

<body>
	<div id="wrapper">
    <div id="header">
    	<div id="login_menu">
Hello Good day 
        
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
<li><a class="glidebutton" href="http://localhost:8080/CS_ISSUE/Agent_Send_Message.jsp"><span data-text="Send Message">Send Message</span></a></li>
<li><a class="glidebutton" href="http://localhost:8080/CS_ISSUE/Registration.jsp"><span data-text="Registrar">Registrar</span></a></li>

</ul>

    
    </div><!--end of menu-->
    <div id="container">
    	<div id="container_main">
    
    	<div id="container_login">
    	
    	
    	
    	
   <form action="Login_confirm.jsp" method="post">
  
  <div class="dynamiclabel">
  <input id="Username" placeholder="Username" name="UserName" value="" type="text">
    <label for="Username">Username</label>
  </div>

  <div class="dynamiclabel">
  
    <input id="Password" placeholder="Password" name="Password" value=""  type="password">
    <label for="Password">Password</label>
  </div>
  
  	<div>
  		<input type="submit" name="submit" value="  Login  "/>
  	</div>
	

	
	</form>

        </div><!-- end of container_login-->
        </div><!-- end of container_main-->
    
    </div> <!-- end of container-->
    <div id="footer"></div>
    
    
    
    </div> <!--end of wrapper-->

</body>

</html>
		