package com.euphoria.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.euphoria.model.UserModel;
import com.euphoria.service.LoginService;
import com.euphoria.util.CookieUtil;
import com.euphoria.util.SessionUtil;
import com.euphoria.util.RedirectionUtil;
import com.euphoria.util.ValidationUtil;

/**
 * Servlet implementation class LoginController
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/login" })
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ValidationUtil validationUtil;
	private LoginService loginService;

	public LoginController() {
	    this.validationUtil = new ValidationUtil();
	    this.loginService = new LoginService();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher(RedirectionUtil.loginUrl).forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");

		if (!validationUtil.isNullOrEmpty("email") && !validationUtil.isNullOrEmpty("password")) {

			UserModel userModel = new UserModel(email, password);
			Boolean loginStatus = loginService.loginUser(userModel);

			if (loginStatus != null && loginStatus) {


				// Set the full user details in the session
				SessionUtil.setAttribute(req, "email", email);

				// Check if the user is an admin or regular user and redirect accordingly
				if (email.equals("admin@gmail.com")) {
					CookieUtil.addCookie(resp, "role", "admin", 5 * 30); // Admin role cookie
					resp.sendRedirect(req.getContextPath() + "/dashboard"); // Redirect to dashboard for admin
				} else {
					CookieUtil.addCookie(resp, "role", "user", 5 * 30); // 
					resp.sendRedirect(req.getContextPath() + "/home"); // Redirect to home page for regular user
				}
			} else {
				handleLoginFailure(req, resp, loginStatus);
			}
		} else {
			req.setAttribute("error", "Please fill all the fields!");
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/pages/login.jsp");
			dispatcher.forward(req, resp);
		}
	}

	/**
	 * Handles login failures by setting attributes and forwarding to the login
	 * page.
	 */
	private void handleLoginFailure(HttpServletRequest req, HttpServletResponse resp, Boolean loginStatus)
			throws ServletException, IOException {
		String errorMessage;
		if (loginStatus == null) {
			errorMessage = "Our server is under maintenance. Please try again later!";
		} else {
			errorMessage = "Invalid email or password. Please try again!";
		}
		req.setAttribute("error", errorMessage);
		req.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(req, resp);
	}

}
