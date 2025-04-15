package Com.traning.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import Com.traning.dao.UserDaoImp;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static UserDaoImp  userDao = new UserDaoImp(); 
       
    public LoginServlet() {
        super();
    }
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	       String username = req.getParameter("username");
	        String password = req.getParameter("password");

	        if (userDao.isValidUser(username, password)) {
	            HttpSession session = req.getSession();
	            session.setAttribute("username", username);
	            res.sendRedirect("welcome.jsp");
	            //System.out.println("Hi - "+username);
	        } else {
	            res.sendRedirect("login.jsp?error=1");
	        	System.out.println("Error A gya");
	        }
}

}
