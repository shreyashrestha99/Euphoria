package com.euphoria.service;

import com.euphoria.config.DbConfig;
import com.euphoria.model.UserModel;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AdminDashboardService {

    private Connection dbConn;
    private boolean isConnectionError = false;

    public AdminDashboardService() {
        try {
            dbConn = DbConfig.getDbConnection();
        } catch (SQLException | ClassNotFoundException ex) {
            ex.printStackTrace();
            isConnectionError = true;
        }
    }

    public List<UserModel> getAllUsers() {
        if (isConnectionError) {
            System.out.println("Connection Error!");
            return null;
        }

        String query = "SELECT full_name, username, email, phone_number, password, user_role, img_url FROM user";
        List<UserModel> userList = new ArrayList<>();

        try (PreparedStatement stmt = dbConn.prepareStatement(query)) {
            ResultSet result = stmt.executeQuery();

            while (result.next()) {
                UserModel user = new UserModel(
                    result.getString("full_name"),
                    result.getString("username"),
                    result.getString("email"),
                    result.getString("phone_number"),
                    result.getString("password"),
                    result.getString("user_role"),
                    result.getString("img_url"), query
                );  
                userList.add(user);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return userList;
    }
    // Update user
    public boolean updateUser(UserModel user) {
        if (isConnectionError)
            return false;

        String updateQuery = "UPDATE user SET full_name = ?, username = ?, email = ?, phone_number = ?, password = ? WHERE user_id = ?";

        try (PreparedStatement stmt = dbConn.prepareStatement(updateQuery)) {
            stmt.setString(1, user.getFullName());
            stmt.setString(2, user.getUsername());
            stmt.setString(3, user.getEmail());
            stmt.setString(4, user.getPhoneNumber());
            stmt.setString(5, user.getPassword());
            stmt.setInt(6, user.getUserId());

            int rowsUpdated = stmt.executeUpdate();
            return rowsUpdated > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Delete user
    public boolean deleteUser(int userId) {
        if (isConnectionError)
            return false;

        String deleteQuery = "DELETE FROM user WHERE user_id = ?";

        try (PreparedStatement stmt = dbConn.prepareStatement(deleteQuery)) {
            stmt.setInt(1, userId);

            int rowsDeleted = stmt.executeUpdate();
            return rowsDeleted > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
