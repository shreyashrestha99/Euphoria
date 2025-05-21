package com.euphoria.controller;

import java.io.IOException;

import com.euphoria.model.UserModel;
import com.euphoria.service.RegisterService;
import com.euphoria.util.ImageUtil;
import com.euphoria.util.PasswordUtil;
import com.euphoria.util.ValidationUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet(asyncSupported = true, urlPatterns = { "/register" })
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 2, // 2MB
    maxFileSize = 1024 * 1024 * 10,      // 10MB
    maxRequestSize = 1024 * 1024 * 50    // 50MB
)
public class RegisterController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private ImageUtil imageUtil;
    private RegisterService registerService;

    @Override
    public void init() throws ServletException {
        this.registerService = new RegisterService();
        this.imageUtil = new ImageUtil();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/pages/register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String validationMessage = validateRegistrationForm(req);
            if (validationMessage != null) {
                handleError(req, resp, validationMessage);
                return;
            }

            // Extract image and upload it
            Part image = req.getPart("image");
            String imageUrl = imageUtil.getImageNameFromPart(image);

            boolean isImageUploaded = imageUtil.uploadImage(image, req.getServletContext().getRealPath("/"), "student");
            if (!isImageUploaded) {
                handleError(req, resp, "Image upload failed. Please try again.");
                return;
            }

            // Extract and save user
            UserModel userModel = extractUserModel(req, imageUrl);
            Boolean isAdded = registerService.addUser(userModel);

            if (isAdded == null) {
                handleError(req, resp, "Our server is under maintenance. Please try again later!");
            } else if (isAdded) {
                handleSuccess(req, resp, "Your account is successfully created!", "/WEB-INF/pages/login.jsp");
            } else {
                handleError(req, resp, "Email or phone number already exists. Please use a different one.");
            }
        } catch (Exception e) {
            handleError(req, resp, "An unexpected error occurred. Please try again later!");
            e.printStackTrace();
        }
    }

    private String validateRegistrationForm(HttpServletRequest req) {
        String fullName = req.getParameter("fullName");
        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String phoneNumber = req.getParameter("phoneNumber");
        String password = req.getParameter("password");
        String retypePassword = req.getParameter("retypePassword");

        if (!ValidationUtil.isValidFullName(fullName)) {
            return "Full name must be at least 6 characters long and contain only letters and spaces.";
        }
        if (!ValidationUtil.isValidEmail(email)) {
            return "Email must be a valid Gmail address (e.g., user@gmail.com).";
        }
        if (!ValidationUtil.isValidPhoneNumber(phoneNumber)) {
            return "Phone number must start with 97 or 98 and be exactly 10 digits.";
        }
        if (!ValidationUtil.isValidPassword(password)) {
            return "Password must be at least 8 characters long, with 1 uppercase letter, 1 number, and 1 symbol.";
        }
        if (!password.equals(retypePassword)) {
            return "Passwords do not match.";
        }
        return null;
    }

    private UserModel extractUserModel(HttpServletRequest req, String imageUrl) throws Exception {
        String fullName = req.getParameter("fullName");
        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String phoneNumber = req.getParameter("phoneNumber");
        String password = req.getParameter("password");
        String role = req.getParameter("role");

        password = PasswordUtil.encrypt(email, password);

        return new UserModel(0, fullName, username, email, phoneNumber, password, role, imageUrl);
    }

    private void handleSuccess(HttpServletRequest req, HttpServletResponse resp, String message, String redirectPage)
            throws ServletException, IOException {
        req.setAttribute("success", message);
        req.getRequestDispatcher(redirectPage).forward(req, resp);
    }

    private void handleError(HttpServletRequest req, HttpServletResponse resp, String message)
            throws ServletException, IOException {
        req.setAttribute("error", message);
        req.getRequestDispatcher("/WEB-INF/pages/register.jsp").forward(req, resp);
    }
}
