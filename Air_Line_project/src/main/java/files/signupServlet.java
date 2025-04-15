package files;

import java.io.IOException;
import java.io.PrintWriter;
import DAO.customerDetailsDAO;
import bean.customerDetailsBean;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/signup")
public class signupServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		customerDetailsBean cb = new customerDetailsBean();

		PrintWriter pw = res.getWriter();
		res.setContentType("text/html");

		cb.setFname(req.getParameter("fname"));
		cb.setLname(req.getParameter("lname"));
		cb.setMid(req.getParameter("email"));
		cb.setPword(req.getParameter("pword"));
		cb.setContact(Long.parseLong(req.getParameter("contact")));

		int k = new customerDetailsDAO().registerDetails(cb);
		{
			if (k > 0) {
				pw.print("Registered Successfully!");
				req.getRequestDispatcher("login.jsp").include(req, res);
			} else {
				pw.print("Invalid Input");
				req.getRequestDispatcher("signup.jsp").include(req, res);
			}
		}
	}
}
