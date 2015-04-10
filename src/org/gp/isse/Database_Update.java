package org.gp.isse;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.xml.ws.Response;

public class Database_Update {

	String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	String DB_URL = "jdbc:mysql://localhost:3306/cs_issue";

	// Database credentials
	String USER = "root";
	String PASS = "";
	
	public void Registration_Update(String username,String fname,String lname,String Role,String password,String phonenumber){
		
		Connection conn = null;
		Statement stmt = null;

		try {
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(DB_URL, USER, PASS);

			stmt = conn.createStatement();
			String sql;

			sql = "INSERT INTO userinfo(username,fname,lname,Role,password,phonenumber)" + " VALUES ('" + username
					+ "','" + fname + "','" + lname + "', '" + Role + "','" + password + "','" + phonenumber + "' )";

			stmt.executeUpdate(sql);

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

		}
		
		
	}

	
	public void Agent_Message_Sender_Database(int Unit,String Topic,String Sample_number,String Description,
												String Priority,String Agent,String Pc_name){
		

		Connection conn = null;
		Statement stmt = null;

		try {
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(DB_URL, USER, PASS);

			stmt = conn.createStatement();
			String sql;
			int Status = 1;
			
			sql = "INSERT INTO temporary_issue(unit,Topic,Sample_number,Description,Priority,Agent,Pc_name,Create_time,Status)"
			+ " VALUES ('" + Unit
					+ "','" + Topic + "','" + Sample_number + "', '" + Description + "'," +
					"'" + Priority + "','" + Agent + "' ,'" + Pc_name + "', CURDATE() ,'" + Status + "' )";

			stmt.executeUpdate(sql);

			
			
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

		}
		
			
		
	} // end 
	
	
public void Registration_Information_Update(String UserName, String Fname, String Lname, String Role, 
			String Password, String PhoneNumber,String Email){


Connection conn = null;
Statement stmt = null;
 // will set against Role 

try {
	int Privilege = 0;
Class.forName(JDBC_DRIVER);
conn = DriverManager.getConnection(DB_URL, USER, PASS);

stmt = conn.createStatement();
String sql;
if (Role.equals("Manager"))
{
	Privilege = 1;
}
else if (Role.equals("CS_System"))
{
	Privilege = 2;
}

else if (Role.equals("Temp_Admin"))
{
	Privilege = 2;
}


sql = "INSERT INTO user(Fname,Lname,UserName,Password,Email,PhoneNumber,Role,Privilege,Created)"
+ " VALUES ('" + Fname
+ "','" + Lname + "','" + UserName + "', '" + Password + "'," +
"'" + Email + "','" + PhoneNumber + "' ,'" + Role + "', '" + Privilege + "', CURDATE())";

stmt.executeUpdate(sql);



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

}



}



public void Forward_Message(String id)
{
	Connection conn = null;
	Statement stmt = null;

	try {
		Class.forName(JDBC_DRIVER);
		conn = DriverManager.getConnection(DB_URL, USER, PASS);

		stmt = conn.createStatement();
		String sql;
		
		
		sql = "UPDATE `temporary_issue` SET `Status`=2 WHERE id = "+id;

		stmt.executeUpdate(sql);

		
		
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

	}
	
		
	
	
}


public void Delete_Message(String id)

{
	
	Connection conn = null;
	Statement stmt = null;

	try {
		Class.forName(JDBC_DRIVER);
		conn = DriverManager.getConnection(DB_URL, USER, PASS);

		stmt = conn.createStatement();
		String sql;
		
		
		sql = "DELETE FROM `temporary_issue` WHERE Status ="+id;

		stmt.executeUpdate(sql);

		
		
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

	}
	
		
	
	
}



	
	
	
}
