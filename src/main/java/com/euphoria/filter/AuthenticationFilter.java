package com.euphoria.filter;

import java.io.IOException;

import com.euphoria.util.SessionUtil;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebFilter(asyncSupported = true, urlPatterns = { "/*" })
public class AuthenticationFilter implements Filter {

    private static final String LOGIN = "/login";
    private static final String REGISTER = "/register";
    private static final String HOME = "/home";
    private static final String ROOT = "/";

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // Optional: initialization logic if needed
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        String uri = req.getRequestURI();
        boolean isLoggedIn = SessionUtil.getAttribute(req, "email") != null;

        // Allow static resources (CSS, JS, images, etc.)
        if (uri.endsWith(".css") || uri.contains("/resources/")) {
            chain.doFilter(request, response);
            return;
        }

        // Allow public pages when not logged in
        if (!isLoggedIn && (uri.endsWith(LOGIN) || uri.endsWith(REGISTER) || uri.endsWith(HOME) || uri.equals(req.getContextPath() + ROOT))) {
            chain.doFilter(request, response);
            return;
        }

        // Prevent logged-in users from accessing login/register pages
        if (isLoggedIn && (uri.endsWith(LOGIN) || uri.endsWith(REGISTER))) {
            res.sendRedirect(req.getContextPath() + HOME);
            return;
        }
     
        // Allow all other cases
        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {
        // Optional: cleanup logic if needed
    }
}
