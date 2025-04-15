package Com.traning.Servlet;

import java.io.IOException;
import Com.traning.dao.User;
import Com.traning.dao.UserDao;
import Com.traning.dao.UserDaoImp;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private static UserDao userDao = new UserDaoImp();

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String email = req.getParameter("email");

		User user = new User();
		user.setUsername(username);
		user.setEmail(email);
		user.setPassword(password);

		// UserDao userDao = new UserDaoImpl();
		if (userDao.addUser(user)) {
			res.sendRedirect("login.jsp?registration=success");
		} else {
			res.sendRedirect("register.jsp?error=1");
		}
	}

}
