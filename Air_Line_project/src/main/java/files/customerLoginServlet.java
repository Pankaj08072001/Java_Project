package files;

import java.io.IOException;
import DAO.customerLoginDAO;
import bean.customerDetailsBean;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class customerLoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		customerDetailsBean cb = new customerLoginDAO().login(req);
		if (cb == null)
			req.getRequestDispatcher("login.jsp").include(req, res);
		else {
			HttpSession hs = req.getSession();
			hs.setAttribute("cb", cb);
			req.getRequestDispatcher("ticketbookform.jsp").include(req, res);

		}
	}
}
