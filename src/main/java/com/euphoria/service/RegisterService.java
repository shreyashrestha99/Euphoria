package com.euphoria.service;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.euphoria.config.DbConfig;
import com.euphoria.model.UserModel;

/**
 * RegisterService handles the registration of new students. It manages database
 * interactions for student registration.
 */
public class RegisterService {

	private Connection dbConn;

	/**
	 * Constructor initializes the database connection.
	 */
	public RegisterService() {
		try {
			this.dbConn = DbConfig.getDbConnection();
		} catch (SQLException | ClassNotFoundException ex) {
			System.err.println("Database connection error: " + ex.getMessage());
			ex.printStackTrace();
		}
	}

	/**
	 * Registers a new user in the database.
	 *
	 * @param UserModel the user details to be registered
	 * @return Boolean indicating the success of the operation
	 */
	public Boolean addUser(UserModel userModel) {
		if (dbConn == null) {
			System.err.println("Database connection is not available.");
			return null;
		}

		
		String insertQuery = "INSERT INTO user (full_name, username,  email, phone_number, password,user_role,img_url) "
				+ "VALUES (?, ?, ?, ?, ?, ?,?)";

		try (PreparedStatement insertStmt = dbConn.prepareStatement(insertQuery))
				{
			// Insert student details
			insertStmt.setString(1, userModel.getFullName());
			insertStmt.setString(2, userModel.getUsername());
			insertStmt.setString(3, userModel.getEmail());
			insertStmt.setString(4, userModel.getPhoneNumber());
			insertStmt.setString(5, userModel.getPassword());
			insertStmt.setString(6, "user" );
			insertStmt.setString(7, userModel.getImageUrl());

			return insertStmt.executeUpdate() > 0;
		} catch (SQLException e) {
			System.err.println("Error during student registration: " + e.getMessage());
			e.printStackTrace();
			return null;
		}
	}
}
