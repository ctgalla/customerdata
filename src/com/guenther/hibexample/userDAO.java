package com.guenther.hibexample;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class userDAO {
	
	public Connection getConnection(){
		String connectionURL ="jdbc:mysql://localhost:3306/users";
		Connection connection = null;
		try{
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			connection=DriverManager.getConnection(connectionURL, "java", null);
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return connection;
	}

	public void closeConnection(Connection connection){
		try{
			connection.close();
		}catch (SQLException e){
			e.printStackTrace();
		}
	}
	
	

}
