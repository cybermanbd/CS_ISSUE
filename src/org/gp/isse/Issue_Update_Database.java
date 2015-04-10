package org.gp.isse;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Issue_Update_Database {
	
	String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	String DB_URL = "jdbc:mysql://localhost:3306/cs_issue";

	// Database credentials
	String USER = "root";
	String PASS = "";
	
	public void IssueUpdate(String Title, String Description , String Priority ){
		
		
		Connection conn = null;
		Statement stmt = null;

		try {
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(DB_URL, USER, PASS);

			stmt = conn.createStatement();
			String sql;

			sql = "INSERT INTO test(Title,Description,Priority)" + " VALUES ('" + Title
					+ "','" + Description + "','" + Priority + "')";

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
