package com.pankaj.user.servlet;

import java.io.IOException;

import com.pankaj.dao.UserDAO;
import com.pankaj.db.DBConnection;
import com.pankaj.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/userLogin")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String email = req.getParameter("email");
		String password = req.getParameter("password");

		HttpSession session = req.getSession();

		UserDAO userDAO = new UserDAO(DBConnection.getConn());
		User user = userDAO.loginUser(email, password);

		if (user != null) {
			session.setAttribute("userObj", user);
			resp.sendRedirect("index.jsp");
		} else {
			session.setAttribute("errorMsg", "Invalid email or password");
			resp.sendRedirect("user_login.jsp");
		}
	}

}
