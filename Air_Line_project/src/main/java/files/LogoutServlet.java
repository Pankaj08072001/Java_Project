package files;

import java.io.IOException;
import bean.customerDetailsBean;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		HttpSession hs = req.getSession(false);
		customerDetailsBean cb = (customerDetailsBean) hs.getAttribute("cb");
		if (cb != null)
			hs.removeAttribute("cb");
		customerDetailsBean tempCb = (customerDetailsBean) hs.getAttribute("tempCb");
		if (tempCb != null)
			hs.removeAttribute("tempCb");

		hs.invalidate();
		req.getRequestDispatcher("index.jsp").include(req, res);
	}
}
