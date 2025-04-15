package files;

import java.io.IOException;
import java.util.Random;
import bean.customerDetailsBean;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/roughTicket")
public class RoughTicketServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		HttpSession hs = req.getSession(false);

		customerDetailsBean tempCb = new customerDetailsBean();

		tempCb.setFname(req.getParameter("name"));
		tempCb.setContact(Long.parseLong(req.getParameter("contact")));
		tempCb.setMid(req.getParameter("mid"));
		tempCb.setDestinationTO(req.getParameter("dTo"));
		tempCb.setDestinationFrom(req.getParameter("dFrom"));
		tempCb.setDate(req.getParameter("date"));
		tempCb.setClassType(req.getParameter("class_type"));
		tempCb.setJourneyTime(req.getParameter("time"));
		Random r = new Random();
		tempCb.setSeat(r.nextInt(1, 65));

		if (req.getParameter("class_type").equalsIgnoreCase("Economy Class")) {

			tempCb.setPrice(r.nextFloat(2000, 4500));

			String s = "EC";
			for (int i = 1; i < 9; i++) {
				s += (char) r.nextInt(48, 57);
			}
			tempCb.setTicketID(s);

		} else if (req.getParameter("class_type").equalsIgnoreCase("Business Class")) {

			tempCb.setPrice(r.nextFloat(5000, 12000));

			String s = "BU";
			for (int i = 1; i < 9; i++) {
				s += (char) r.nextInt(48, 57);
			}
			tempCb.setTicketID(s);
		}

		hs.setAttribute("tempCb", tempCb);
		req.getRequestDispatcher("roughTicket.jsp").include(req, res);

	}
}
