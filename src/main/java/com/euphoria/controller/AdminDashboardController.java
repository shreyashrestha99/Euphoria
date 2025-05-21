package com.euphoria.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

import com.euphoria.model.UserModel;
import com.euphoria.service.AdminDashboardService;

@WebServlet(asyncSupported = true, urlPatterns = { "/dashboard" })
public class AdminDashboardController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private AdminDashboardService adminDashboardService;

    public AdminDashboardController() {
        this.adminDashboardService = new AdminDashboardService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("userList", adminDashboardService.getAllUsers());
        request.getRequestDispatcher("/WEB-INF/pages/dashboard.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        int userId = Integer.parseInt(request.getParameter("userId"));

        switch (action) {
            case "updateForm":
                handleUpdateForm(request, response, userId);
                break;
            case "update":
                handleUpdate(request, response, userId);
                break;
            case "delete":
                handleDelete(request, response, userId);
                break;
            default:
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Unknown action: " + action);
        }
    }

    private void handleUpdateForm(HttpServletRequest request, HttpServletResponse response, int userId)
            throws IOException {
        String fullName = request.getParameter("fullName");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phoneNumber");
        String password = request.getParameter("password");
        String userRole = request.getParameter("userRole");
        String imgUrl = request.getParameter("imgUrl");

        UserModel user = new UserModel(userId, fullName, username, email, phoneNumber, password, userRole, imgUrl);
        request.getSession().setAttribute("user", user);
        response.sendRedirect(request.getContextPath() + "/update");
    }

    private void handleUpdate(HttpServletRequest request, HttpServletResponse response, int userId)
            throws ServletException, IOException {
        String fullName = request.getParameter("fullName");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phoneNumber");
        String password = request.getParameter("password");
        String userRole = request.getParameter("userRole");
        String imgUrl = request.getParameter("imgUrl");

        UserModel user = new UserModel(userId, fullName, username, email, phoneNumber, password, userRole, imgUrl);
        boolean success = adminDashboardService.updateUser(user);

        if (success) {
            System.out.println("Update successful");
        } else {
            System.out.println("Update failed");
        }

        doGet(request, response);
    }

    private void handleDelete(HttpServletRequest request, HttpServletResponse response, int userId)
            throws ServletException, IOException {
        boolean success = adminDashboardService.deleteUser(userId);

        if (success) {
            System.out.println("Deletion successful");
        } else {
            System.out.println("Deletion failed");
        }

        doGet(request, response);
    }
}
